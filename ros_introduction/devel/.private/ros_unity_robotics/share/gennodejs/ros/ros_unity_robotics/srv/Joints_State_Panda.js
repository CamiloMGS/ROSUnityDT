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


//-----------------------------------------------------------

class Joints_State_PandaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joints_State_PandaRequest
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joints_State_PandaRequest
    let len;
    let data = new Joints_State_PandaRequest(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_unity_robotics/Joints_State_PandaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f2d21c30868b92dc41a0431bacd47b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joints_State_PandaRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    return resolved;
    }
};

class Joints_State_PandaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.found = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('found')) {
        this.found = initObj.found
      }
      else {
        this.found = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joints_State_PandaResponse
    // Serialize message field [found]
    bufferOffset = _arraySerializer.uint32(obj.found, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joints_State_PandaResponse
    let len;
    let data = new Joints_State_PandaResponse(null);
    // Deserialize message field [found]
    data.found = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.found.length;
    length += 8 * object.position.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_unity_robotics/Joints_State_PandaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '785adb81720cc9e50d19b610dc028963';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] found
    float64[] position
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joints_State_PandaResponse(null);
    if (msg.found !== undefined) {
      resolved.found = msg.found;
    }
    else {
      resolved.found = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    return resolved;
    }
};

module.exports = {
  Request: Joints_State_PandaRequest,
  Response: Joints_State_PandaResponse,
  md5sum() { return '4d4ae00253742627cd925fe537e1f8dd'; },
  datatype() { return 'ros_unity_robotics/Joints_State_Panda'; }
};
