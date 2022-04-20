// Auto-generated. Do not edit!

// (in-package ros_unity_robotics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Robot_Joints = require('../msg/Robot_Joints.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let moveit_msgs = _finder('moveit_msgs');

//-----------------------------------------------------------

class trajectory_plannerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints_input = null;
      this.target_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('joints_input')) {
        this.joints_input = initObj.joints_input
      }
      else {
        this.joints_input = new Robot_Joints();
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type trajectory_plannerRequest
    // Serialize message field [joints_input]
    bufferOffset = Robot_Joints.serialize(obj.joints_input, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type trajectory_plannerRequest
    let len;
    let data = new trajectory_plannerRequest(null);
    // Deserialize message field [joints_input]
    data.joints_input = Robot_Joints.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 168;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_unity_robotics/trajectory_plannerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a49b7d4f98da72ef139e2cfcd38f52d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Robot_Joints joints_input
    geometry_msgs/Pose target_pose
    
    ================================================================================
    MSG: ros_unity_robotics/Robot_Joints
    float64[7] joints
    geometry_msgs/Pose final_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new trajectory_plannerRequest(null);
    if (msg.joints_input !== undefined) {
      resolved.joints_input = Robot_Joints.Resolve(msg.joints_input)
    }
    else {
      resolved.joints_input = new Robot_Joints()
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.Pose.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class trajectory_plannerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type trajectory_plannerResponse
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = moveit_msgs.msg.RobotTrajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type trajectory_plannerResponse
    let len;
    let data = new trajectory_plannerResponse(null);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = moveit_msgs.msg.RobotTrajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectories.forEach((val) => {
      length += moveit_msgs.msg.RobotTrajectory.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_unity_robotics/trajectory_plannerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2b40c48066c9f23bf2c1a49578cb21d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    moveit_msgs/RobotTrajectory[] trajectories
    
    
    ================================================================================
    MSG: moveit_msgs/RobotTrajectory
    trajectory_msgs/JointTrajectory joint_trajectory
    trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: trajectory_msgs/MultiDOFJointTrajectory
    # The header is used to specify the coordinate frame and the reference time for the trajectory durations
    Header header
    
    # A representation of a multi-dof joint trajectory (each point is a transformation)
    # Each point along the trajectory will include an array of positions/velocities/accelerations
    # that has the same length as the array of joint names, and has the same order of joints as 
    # the joint names array.
    
    string[] joint_names
    MultiDOFJointTrajectoryPoint[] points
    
    ================================================================================
    MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
    # Each multi-dof joint can specify a transform (up to 6 DOF)
    geometry_msgs/Transform[] transforms
    
    # There can be a velocity specified for the origin of the joint 
    geometry_msgs/Twist[] velocities
    
    # There can be an acceleration specified for the origin of the joint 
    geometry_msgs/Twist[] accelerations
    
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new trajectory_plannerResponse(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = moveit_msgs.msg.RobotTrajectory.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    return resolved;
    }
};

module.exports = {
  Request: trajectory_plannerRequest,
  Response: trajectory_plannerResponse,
  md5sum() { return '21c74ee74be8fa8772be222ac6c4b3c3'; },
  datatype() { return 'ros_unity_robotics/trajectory_planner'; }
};
