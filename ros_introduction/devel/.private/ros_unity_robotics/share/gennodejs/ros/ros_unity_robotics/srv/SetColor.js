// Auto-generated. Do not edit!

// (in-package ros_unity_robotics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Color_Object = require('../msg/Color_Object.js');

//-----------------------------------------------------------

class SetColorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetColorRequest
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetColorRequest
    let len;
    let data = new SetColorRequest(null);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_unity_robotics/SetColorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f12226348d323c2e5b2031b3da53f1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetColorRequest(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    return resolved;
    }
};

class SetColorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_color_available = null;
      this.set_color = null;
    }
    else {
      if (initObj.hasOwnProperty('is_color_available')) {
        this.is_color_available = initObj.is_color_available
      }
      else {
        this.is_color_available = false;
      }
      if (initObj.hasOwnProperty('set_color')) {
        this.set_color = initObj.set_color
      }
      else {
        this.set_color = new Color_Object();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetColorResponse
    // Serialize message field [is_color_available]
    bufferOffset = _serializer.bool(obj.is_color_available, buffer, bufferOffset);
    // Serialize message field [set_color]
    bufferOffset = Color_Object.serialize(obj.set_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetColorResponse
    let len;
    let data = new SetColorResponse(null);
    // Deserialize message field [is_color_available]
    data.is_color_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_color]
    data.set_color = Color_Object.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Color_Object.getMessageSize(object.set_color);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_unity_robotics/SetColorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64e52054352d8f7db2af4cfbf9cfe76d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_color_available
    Color_Object set_color
    
    
    ================================================================================
    MSG: ros_unity_robotics/Color_Object
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
    const resolved = new SetColorResponse(null);
    if (msg.is_color_available !== undefined) {
      resolved.is_color_available = msg.is_color_available;
    }
    else {
      resolved.is_color_available = false
    }

    if (msg.set_color !== undefined) {
      resolved.set_color = Color_Object.Resolve(msg.set_color)
    }
    else {
      resolved.set_color = new Color_Object()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetColorRequest,
  Response: SetColorResponse,
  md5sum() { return 'fbf49a4abb8329015706cddfa8925046'; },
  datatype() { return 'ros_unity_robotics/SetColor'; }
};
