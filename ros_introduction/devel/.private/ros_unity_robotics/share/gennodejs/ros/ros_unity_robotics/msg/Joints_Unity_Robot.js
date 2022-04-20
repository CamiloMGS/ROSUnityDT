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

class Joints_Unity_Robot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Joints = null;
      this.pick_pose = null;
      this.place_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('Joints')) {
        this.Joints = initObj.Joints
      }
      else {
        this.Joints = [];
      }
      if (initObj.hasOwnProperty('pick_pose')) {
        this.pick_pose = initObj.pick_pose
      }
      else {
        this.pick_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('place_pose')) {
        this.place_pose = initObj.place_pose
      }
      else {
        this.place_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joints_Unity_Robot
    // Serialize message field [Joints]
    bufferOffset = _arraySerializer.float64(obj.Joints, buffer, bufferOffset, null);
    // Serialize message field [pick_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pick_pose, buffer, bufferOffset);
    // Serialize message field [place_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.place_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joints_Unity_Robot
    let len;
    let data = new Joints_Unity_Robot(null);
    // Deserialize message field [Joints]
    data.Joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pick_pose]
    data.pick_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [place_pose]
    data.place_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.Joints.length;
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_robotics/Joints_Unity_Robot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b28a95cce78395503044b169092bcf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] Joints
    geometry_msgs/Pose pick_pose
    geometry_msgs/Pose place_pose
    
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
    const resolved = new Joints_Unity_Robot(null);
    if (msg.Joints !== undefined) {
      resolved.Joints = msg.Joints;
    }
    else {
      resolved.Joints = []
    }

    if (msg.pick_pose !== undefined) {
      resolved.pick_pose = geometry_msgs.msg.Pose.Resolve(msg.pick_pose)
    }
    else {
      resolved.pick_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.place_pose !== undefined) {
      resolved.place_pose = geometry_msgs.msg.Pose.Resolve(msg.place_pose)
    }
    else {
      resolved.place_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = Joints_Unity_Robot;
