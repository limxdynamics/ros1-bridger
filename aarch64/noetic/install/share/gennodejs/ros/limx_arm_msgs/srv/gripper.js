// Auto-generated. Do not edit!

// (in-package limx_arm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class gripperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.initial = null;
      this.dis = null;
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('initial')) {
        this.initial = initObj.initial
      }
      else {
        this.initial = false;
      }
      if (initObj.hasOwnProperty('dis')) {
        this.dis = initObj.dis
      }
      else {
        this.dis = 0;
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gripperRequest
    // Serialize message field [initial]
    bufferOffset = _serializer.bool(obj.initial, buffer, bufferOffset);
    // Serialize message field [dis]
    bufferOffset = _serializer.int32(obj.dis, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = _serializer.int32(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gripperRequest
    let len;
    let data = new gripperRequest(null);
    // Deserialize message field [initial]
    data.initial = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dis]
    data.dis = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'limx_arm_msgs/gripperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3909130208209c5992a224311630f26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool initial
    int32 dis
    int32 force
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gripperRequest(null);
    if (msg.initial !== undefined) {
      resolved.initial = msg.initial;
    }
    else {
      resolved.initial = false
    }

    if (msg.dis !== undefined) {
      resolved.dis = msg.dis;
    }
    else {
      resolved.dis = 0
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = 0
    }

    return resolved;
    }
};

class gripperResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gripperResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gripperResponse
    let len;
    let data = new gripperResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'limx_arm_msgs/gripperResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86791dcf1de997ec7de5a0de7e4dcfcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gripperResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: gripperRequest,
  Response: gripperResponse,
  md5sum() { return '0f92630af2d2a713e88b3235d577ea49'; },
  datatype() { return 'limx_arm_msgs/gripper'; }
};
