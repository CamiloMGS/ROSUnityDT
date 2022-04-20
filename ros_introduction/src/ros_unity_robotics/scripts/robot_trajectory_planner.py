#!/usr/bin/env python

from __future__ import print_function

import rospy
import sys
import moveit_commander
from sensor_msgs.msg import JointState
from moveit_msgs.msg import RobotState

from ros_unity_robotics.srv import Trajectory_Planner_Robot, Trajectory_Planner_RobotRequest, Trajectory_Planner_RobotResponse

joint_names = ['panda_joint1', 'panda_joint2', 'panda_joint3', 'panda_joint4', 'panda_joint5', 'panda_joint6',
  'panda_joint7']

if sys.version_info >= (3, 0):
    def planCompat(plan):
        return plan[1]
else:
    def planCompat(plan):
        return plan

def plan_trajectory(move_group, destination_pose, start_joints_angles):
     current_joint_state = JointState()
     current_joint_state.name = joint_names
     current_joint_state.position = start_joints_angles

     moveit_robot_state = RobotState()
     moveit_robot_state.joint_state = current_joint_state
     move_group.set_start_state(moveit_robot_state)

     move_group.set_pose_target(destination_pose)
     plan = move_group.plan()

     if not plan:
         exception_str = """
            Trajectory could not be planned for a destination of {} with starting joint angles {}.
            Please make sure target and destination are reachable by the robot.
        """.format(destination_pose, destination_pose)
         raise Exception(exception_str)

     return planCompat(plan)

def robot_req_trajectory(req):
    response = Trajectory_Planner_RobotResponse()

    group_name = "panda_arm"
    move_group = moveit_commander.MoveGroupCommander(group_name)
    current_robot_joint_configuration = req.joints_input.joints

    new_robot_trajectory = plan_trajectory(move_group, req.target_pose, current_robot_joint_configuration)

    if not new_robot_trajectory.joint_trajectory.points:
        return response
    response.trajectories.append(new_robot_trajectory)

    return response

def Trajectory_service_server():
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node("Trajectory_service_server", anonymous=False)

    service = rospy.Service('trajectory_planner_moveit', Trajectory_Planner_Robot, robot_req_trajectory)
    print("ready to plan Camilo x)")

    rospy.spin()
if __name__ == '__main__':
    Trajectory_service_server()
