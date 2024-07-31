#!/usr/bin/env python3
from socket import MSG_ERRQUEUE
from tkinter.messagebox import NO

from numpy import void
import tf
import tf2_ros
import tf2_geometry_msgs
import rospy
import signal
import geometry_msgs
from geometry_msgs.msg import PoseWithCovariance
from geometry_msgs.msg import Pose
from geometry_msgs.msg import TwistWithCovariance
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from nav_msgs.msg import Odometry
from std_msgs.msg import Header
from std_msgs.msg import String
from tf.transformations import euler_from_quaternion
import math
import asyncio

class SperoRVRSim():
    _ros_topics = {
        "odom": "/diff_drive_controller/odom",
        "cmd_vel": "/diff_drive_controller/cmd_vel"
    }
    _speed_limit_si = 1 #m/s
    _speed_limit_normalized = 127

    def __init__(self) -> None:
        # define ros topics
        self._ros_topics["odom"] = "{}odom".format(rospy.get_namespace())
        self._ros_topics["cmd_vel"] = "{}cmd_vel".format(rospy.get_namespace())
        rospy.logdebug("odom topic is: {}".format(self._ros_topics["odom"]))
        rospy.logdebug("cmd_vel topic is: {}".format(self._ros_topics["cmd_vel"]))

        self._odom_sub = rospy.Subscriber(self._ros_topics['odom'], Odometry, self._odom_callback)
        self._cmd_vel_pub = rospy.Publisher(self._ros_topics['cmd_vel'], Twist, queue_size=10)

        # defenition of pos and oriation values
        self._yaw = 0.0
        self._position = Point()
        self._orientation = Quaternion()
        self._odom = Odometry()

        # finished with defintions and wait for all topics to be ready
        self._wait_for_sensors()

    @property 
    def orientation(self) -> Quaternion:
        return self._orientation
    @property
    def position(self) -> Point:
        return self._position
    @property
    def yaw(self) -> float:
        return self._yaw
    @property
    def odometry(self) -> Odometry:
        return self._odom
    
    def _odom_callback(self, msg):
        self._odom = msg
        self._position = msg.pose.pose.position
        self._orientation = msg.pose.pose.orientation

        orientation_q = msg.pose.pose.orientation
        (_, _, yaw) = euler_from_quaternion([orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w])
        self._yaw = yaw
    
    def _wait_for_sensors(self) -> void:
        self._wait_for_odom()

    def _wait_for_odom(self) -> void:
        self.odom = None
        while self.odom is None and not rospy.is_shutdown():
            try:
                self.odom = rospy.wait_for_message(self._ros_topics['odom'], Odometry)
                rospy.logdebug("odom is ready")
            except:
                rospy.logerr("Current odom is not ready yes, retrying for getting odom")
    
    def _shortest_angel_difference_to_goal(self, angular_to_goal):
        return shortestAngleDifference(angular_to_goal, self.yaw)
    
    def _angular_speed(self, angular_to_goal, angular_speed = 0.2) -> float:
        diff = self._shortest_angel_difference_to_goal(angular_to_goal)
        turn = 1
        if diff < 0:
            turn = -1
        
        return turn * min(angular_speed, abs(angular_to_goal - self.yaw))
    
    def _drive_speed(self, distance, linear_speed = 0.2) -> float:
        speed = linear_speed
        if linear_speed > 0:
            speed = min(linear_speed, distance)
        else:
            speed = max(linear_speed, -1*distance)
        rospy.logdebug("Drive speed: %s", speed)
        return speed


    def turn_to_angular(self, angular_to_goal, linear_speed = 0.2, epsilon = 0.01) -> void:
        cmd_vel_msg = Twist()

        diff = self._shortest_angel_difference_to_goal(angular_to_goal)
        turn = 1
        if diff < 0:
            turn = -1

        rospy.logdebug("Turn direction: %s" % ('LEFT' if turn == 1 else 'RIGHT'))
        r = rospy.Rate(10)
        while abs(angular_to_goal - self.yaw) > epsilon:
            vel = turn * min(linear_speed, abs(angular_to_goal - self.yaw))
            rospy.logdebug("Turn velocity: %s" % vel)
            cmd_vel_msg.angular.z = vel
            self._cmd_vel_pub.publish(cmd_vel_msg)
            r.sleep()
        return True

    def drive_to_position_si(self, yaw_angle, x, y, linear_speed, epsilon_angle = 0.01, epsion_distance = 0.01) -> void:
        """Drive to an (x,y) coordinate and turn to the specified target yaw angle using SI units

            Args:
                yaw_angle (float): Target yaw angle after arriving at target position.  Follows the right-hand rule: CW negative, CCW positive, with 0 straight ahead on boot or resetting yaw.  Values wrap internally
                x (float): Target Position X coordinate in the locator coordinate system, in meters.  The positive X axis is to the right on boot or locator reset (along yaw angle -90 degrees)
                y (float): Target Position Y coordinate in the locator coordinate system, in meters.  The positive Y axis is forward on boot or locator reset
                linear_speed (float): Maximum allowable linear speed in transit to the target position, in m/s.  Negative values are invalid.  If the distance to target is too short for the robot to accelerate to this velocity, the resulting velocity trajectory will be triangular rather than trapezoidal.
            """
        r = rospy.Rate(10)
        while not rospy.is_shutdown():
            current_position = self.position
            current_ywa = self.yaw

            delta_x = x - current_position.x
            delta_y = y - current_position.y
            
            angular_to_goal = math.atan2(delta_y, delta_x)
            distance_to_goal = math.sqrt(math.pow(delta_x, 2) + math.pow(delta_y, 2))

            cmd_vel_msg = Twist()
            
            if distance_to_goal > epsion_distance:
                distance_to_angle = abs(angular_to_goal - current_ywa)
                if distance_to_angle > epsilon_angle and distance_to_angle < math.pi:
                    rospy.logdebug("Distance to angle: %s" % distance_to_angle)
                    cmd_vel_msg.linear.x = 0
                    cmd_vel_msg.angular.z = self._angular_speed(angular_to_goal, linear_speed)
                    self._cmd_vel_pub.publish(cmd_vel_msg)
                    r.sleep()
                else:
                    cmd_vel_msg.linear.x = self._drive_speed(distance_to_goal, linear_speed)
                    cmd_vel_msg.angular.z = 0.0
                    self._cmd_vel_pub.publish(cmd_vel_msg)
                    r.sleep()
            else:
                rospy.logdebug("Goal reached, now turn to goal angle")
                rospy.logdebug("Goal angle: %s" % yaw_angle)
                self.turn_to_angular(yaw_angle)
                break
        
        rospy.logdebug("Finished. Goal reached in given angle")


    def drive_to_position_normalized(self, yaw_angle, x, y, linear_speed, epsilon_angle = 0.01, epsion_distance = 0.01): 
        """Drive to an (x,y) coordinate at a normalized speed and turn to the specified target yaw angle

        Args:
            yaw_angle (int16_t): Target yaw angle after arriving at target position
            x (float): Target Position X coordinate in the locator coordinate system.  The positive X axis is to the right on boot or locator reset (along yaw angle -90 degrees)
            y (float): Target Position Y coordinate in the locator coordinate system.  The positive Y axis is forward on boot or locator reset
            linear_speed (int8_t): Maximum normalized linear speed in transit to the target position, normalized to [0..127].  If the distance to target is too short for the robot to accelerate to this velocity, the resulting velocity trajectory will be triangular rather than trapezoidal.
        """
        linear_speed_si = linear_speed / self._speed_limit_normalized
        rospy.logdebug("Nornalized speed %s converted to si speed %s m/s" % (linear_speed, linear_speed_si))
        return self.drive_to_position_si(yaw_angle, x, y, linear_speed_si, epsilon_angle, epsion_distance)

def shortestAngleDifference(th1, th2) -> float:
    diff = math.fmod(th1-th2, 2*math.pi)
    if diff < 0:
        if abs(diff) > 2*math.pi + diff:
            diff = 2 * math.pi + diff
    else:
        if diff > abs(diff - 2 * math.pi):
            diff = diff - 2 * math.pi
    return diff