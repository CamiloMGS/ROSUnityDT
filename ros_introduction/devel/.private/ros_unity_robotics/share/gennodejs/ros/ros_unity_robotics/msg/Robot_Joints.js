// Auto-generated. Do not edit!

// (in-package ros_unity_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Robot_Joints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.final_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('final_pose')) {
        this.final_pose = initObj.final_pose
      }
      else {
        this.final_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Robot_Joints
    // Check that the constant length array field [joints] has the right length
    if (obj.joints.length !== 7) {
      throw new Error('Unable to serialize array field joints - length must be 7')
    }
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float64(obj.joints, buffer, bufferOffset, 7);
    // Serialize message field [final_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.final_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Robot_Joints
    let len;
    let data = new Robot_Joints(null);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [final_pose]
    data.final_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_robotics/Robot_Joints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd71637ec7bc0deeb68ee5d5ebe956a0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Robot_Joints(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = new Array(7).fill(0)
    }

    if (msg.final_pose !== undefined) {
      resolved.final_pose = geometry_msgs.msg.Pose.Resolve(msg.final_pose)
    }
    else {
      resolved.final_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = Robot_Joints;
