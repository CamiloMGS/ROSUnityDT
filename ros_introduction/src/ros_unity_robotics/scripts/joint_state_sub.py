#!/usr/bin/env python

import rospy

from ros_unity_robotics.msg import Robot_Joints
from moveit_msgs.msg import RobotTrajectory


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard:\n%s", data)

def listener():
    rospy.init_node('Joints_Subscriber', anonymous=True)
    rospy.Subscriber("robot_joints", Robot_Joints, callback)
    print("Waiting for data Camilo x)")

    rospy.spin()


if __name__ == '__main__':
    listener()
