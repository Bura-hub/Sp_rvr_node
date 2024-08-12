#!/usr/bin/env python3

import rospy
import geometry_msgs.msg
import time
import math
from sphero_rvr_msgs.srv import MoveToPosAndYaw, MoveToPosAndYawRequest

def start_stop_test():
    topic = "/cmd_vel"
    pub = rospy.Publisher(topic, geometry_msgs.msg.Twist, queue_size=10)
    rate = rospy.Rate(10)
    twist = geometry_msgs.msg.Twist()
    twist.linear.x = 0.6

    for i in range(20):
        pub.publish(twist)
        rate.sleep()

    twist = geometry_msgs.msg.Twist()
    twist.linear.x = 0.0
    pub.publish(twist)


def pub_rvr_cmd_vel(x_vel, yaw_vel, duration, pub):
    twist = geometry_msgs.msg.Twist()
    twist.linear.x = x_vel
    twist.angular.z = yaw_vel

    rate = rospy.Rate(10)
    start_time = time.time()
    while time.time() - start_time < duration and not rospy.is_shutdown():
        pub.publish(twist)
        rate.sleep()


def test_cmd_vel():
    topic = "/cmd_vel"
    pub = rospy.Publisher(topic, geometry_msgs.msg.Twist, queue_size=1)
    #pub_rvr_cmd_vel(0.4, 0.0, 1.0, pub)
    #pub_rvr_cmd_vel(0.0, 0.0, 0.1, pub)
    pub_rvr_cmd_vel(0.0, 4, 10.0, pub)

    pub_rvr_cmd_vel(0.0, 0.0, 0.1, pub)


def call_move_to_pos_and_yaw(pos, yaw, speed=1.5, speed_in_si=True, frame_id="world"):
    service = "/move_to_pos_and_yaw"

    req = MoveToPosAndYawRequest()
    req.header.frame_id = frame_id

    req.position.x = pos[0]
    req.position.y = pos[1]
    req.position.z = pos[2]
    req.yaw = yaw

    req.speed = speed
    req.speed_in_si = speed_in_si

    try:
        call = rospy.ServiceProxy(service, MoveToPosAndYaw)
        response = call.call(req)
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)

if __name__ == "__main__":
    rospy.init_node("rvr_movement_examples", anonymous=True)

    #start_stop_test()
    #call_move_to_pos_and_yaw([-0.0, 1.0, 0.0], 0, speed=0.5, speed_in_si=True, frame_id="base_link")
    call_move_to_pos_and_yaw([-.5, 0.5, 0.0], 0., speed=0.3, speed_in_si=True, frame_id="world")
    print("DONE")
