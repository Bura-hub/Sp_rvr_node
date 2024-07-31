#!/usr/bin/env python3
from socket import MSG_ERRQUEUE
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
import minibot_msgs.srv
from sphero_sim import SperoRVRSim
import math
from sphero_rvr_msgs.srv import MoveToPose, MoveToPoseResponse, MoveToPosAndYaw, MoveToPosAndYawResponse

tfBuffer = tf2_ros.Buffer()

def correct_pose_request(pose):
	'''
	This swaps x and y (reason: in real robot is x and y swaped)
	'''
	correct_x = pose.position.y
	correct_y = pose.position.x
	pose.position.x = correct_x
	pose.position.y = correct_y
	return pose

# *** Service callbacks ***
def move_to_pos_and_yaw_callback(req):
    orientation_q = tf.transformations.quaternion_from_euler(0., 0., req.yaw, axes="rxyz")
    pose = geometry_msgs.msg.Pose()
    pose.position = req.position
    pose.orientation.x = orientation_q[0]
    pose.orientation.y = orientation_q[1]
    pose.orientation.z = orientation_q[2]
    pose.orientation.w = orientation_q[3]

    success = move_to_pose(req.header, correct_pose_request(pose), req.speed, req.speed_in_si)
    return MoveToPosAndYawResponse(success)

def move_to_pose_callback(req):
    success = move_to_pose(req.header, correct_pose_request(req.pose), req.speed, req.speed_in_si)
    return MoveToPoseResponse(success)

def move_to_pose(header, pose, speed, speed_in_si):
    global tfBuffer
    global rvr

    # transform pose to world frame
    try:
        # todo replace odom by world
        #trans = tfBuffer.lookup_transform(header.frame_id, 'odom', rospy.Time())
        trans = tfBuffer.lookup_transform('odom', header.frame_id, rospy.Time())
    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
        print("ERROR while looking for tf2 frame transform")
        return False

    pose_s = geometry_msgs.msg.PoseStamped()
    pose_s.pose = pose
    pose_transformed = tf2_geometry_msgs.do_transform_pose(pose_s, trans).pose

    # get yaw angle from quaternion
    orientation_q = [pose_transformed.orientation.x,
                     pose_transformed.orientation.y,
                     pose_transformed.orientation.z,
                     pose_transformed.orientation.w]
    (row, pitch, yaw) = tf.transformations.euler_from_quaternion(orientation_q, axes="rxyz")
    yaw_d = yaw * (180 / math.pi)
    print("Moving to world pose. x:{} y:{} yaw:{} speed(si):{} m/s".format(pose_transformed.position.x, pose_transformed.position.y, yaw, speed))
    
    # call rvr-sim backend
    # if speed in si is set call the non normalized version
    success = True
    if speed_in_si:
        print("Moving to world pose. x:{} y:{} yaw:{} speed(si):{} m/s".format(pose_transformed.position.x, pose_transformed.position.y, yaw, speed))
        rvr.drive_to_position_si(yaw, pose_transformed.position.x, pose_transformed.position.y, speed)
    else:
        if int(speed) < 0 or int(speed) > 128:
            print("ERROR: The normalized speed must me 0 >= speed >= 128")
            success = False
        else:
            print("Moving to world pose. x:{} y:{} yaw:{} speed(normalized):{}".format(pose_transformed.position.x, pose_transformed.position.y, yaw, int(speed)))
            rvr.drive_to_position_normalized(int(yaw), pose_transformed.position.x, pose_transformed.position.y, int(speed))
    return success


if __name__ == '__main__':
    rospy.init_node('sphero_rvr_hw_python', disable_signals=True, log_level=rospy.DEBUG)
    rospy.logdebug("Starting Sphero RVR HW Python node (sim)")

    rvr = SperoRVRSim()

    # tf2
    listener = tf2_ros.TransformListener(tfBuffer)

    # services
    rospy.Service('{}move_to_pose'.format(rospy.get_namespace()), MoveToPose, move_to_pose_callback)
    rospy.Service('{}move_to_pos_and_yaw'.format(rospy.get_namespace()), MoveToPosAndYaw, move_to_pos_and_yaw_callback)

    r = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        r.sleep()