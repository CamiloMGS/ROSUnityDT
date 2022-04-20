#!/usr/bin/env python2.7

import rospy
from std_msgs.msg import Float32

def pos_pub():
    rospy.init_node("position_pub_node")
    pub = rospy.Publisher("position", Float32, queue_size=10)

    print("Publishing Position...")
    pos = 1

    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        new_pos = pos + 0.025
        pos = new_pos
        pub.publish(pos)
        rate.sleep()

if __name__ == '__main__':
    try:
        pos_pub()

    except rospy.ROSInterruptException:
        pass
