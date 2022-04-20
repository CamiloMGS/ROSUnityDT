#!/usr/bin/env python

import roslib
import rospy
from ros_unity_robotics.srv import Joints_State_Panda, Joints_State_PandaRequest, Joints_State_PandaResponse
from sensor_msgs.msg import JointState
import threading

class LatestJointState:

    def __init__(self):
        rospy.init_node('joint_states_server')
        self.lock = threading.Lock()
        self.name = []
        self.position = []
        self.thread = threading.Thread(target=self.joints_state_service_server)
        self.thread.start()

        service = rospy.Service('return_joint_states', Joints_State_Panda, self.return_joint_states)

    def joints_state_service_server(self):
        rospy.Subscriber('joint_states', JointState, self.joint_states_callback)
        rospy.spin()

    def joint_states_callback(self, msg):
        self.lock.acquire()
        self.name = msg.name
        self.position = msg.position
        self.lock.release()

    def return_joint_state(self, joint_name):
        if self.name == []:
            rospy.logerr("no robot\n")
            return (0,0,0,0)

        self.lock.acquire()
        if joint_name in self.name:
            index = self.name.index(joint_name)
            position = self.position[index]

        else:
            rospy.logerr("Joint %s not found!", (joint_name,))
            self.lock.release()
            return (0,0,0,0)
        self.lock.release()
        return(1, position)

    def return_joint_states(self, req):
        joints_found = []
        positions = []
        for joint_name in req.name:
            (found, position) = self.return_joint_state(joint_name)
            joints_found.append(found)
            positions.append(position)
        print("joints states sent... Camilo x)")

        return Joints_State_PandaResponse(joints_found, positions)

if __name__ == "__main__":

    latestJointState = LatestJointState()
    print("joints_states_listener server started, waiting for queries")
    rospy.spin()
