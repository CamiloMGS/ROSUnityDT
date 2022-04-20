// Auto-generated. Do not edit!

// (in-package ros_unity_robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Color_Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.g = null;
      this.b = null;
      this.a = null;
      this.color_name = null;
    }
    else {
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('color_name')) {
        this.color_name = initObj.color_name
      }
      else {
        this.color_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Color_Object
    // Serialize message field [r]
    bufferOffset = _serializer.int32(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.int32(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int32(obj.b, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    // Serialize message field [color_name]
    bufferOffset = _serializer.string(obj.color_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Color_Object
    let len;
    let data = new Color_Object(null);
    // Deserialize message field [r]
    data.r = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [color_name]
    data.color_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color_name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_robotics/Color_Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ed8425fc1461c60d2beb39175943ef9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 r
    int32 g
    int32 b
    int32 a
    string color_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Color_Object(null);
    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.color_name !== undefined) {
      resolved.color_name = msg.color_name;
    }
    else {
      resolved.color_name = ''
    }

    return resolved;
    }
};

module.exports = Color_Object;
