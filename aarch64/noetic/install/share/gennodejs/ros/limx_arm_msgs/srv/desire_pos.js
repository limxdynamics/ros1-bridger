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

class desire_posRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskNum = null;
      this.desire_pos = null;
      this.co_control = null;
    }
    else {
      if (initObj.hasOwnProperty('taskNum')) {
        this.taskNum = initObj.taskNum
      }
      else {
        this.taskNum = 0;
      }
      if (initObj.hasOwnProperty('desire_pos')) {
        this.desire_pos = initObj.desire_pos
      }
      else {
        this.desire_pos = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('co_control')) {
        this.co_control = initObj.co_control
      }
      else {
        this.co_control = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type desire_posRequest
    // Serialize message field [taskNum]
    bufferOffset = _serializer.int32(obj.taskNum, buffer, bufferOffset);
    // Check that the constant length array field [desire_pos] has the right length
    if (obj.desire_pos.length !== 6) {
      throw new Error('Unable to serialize array field desire_pos - length must be 6')
    }
    // Serialize message field [desire_pos]
    bufferOffset = _arraySerializer.float32(obj.desire_pos, buffer, bufferOffset, 6);
    // Serialize message field [co_control]
    bufferOffset = _serializer.bool(obj.co_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type desire_posRequest
    let len;
    let data = new desire_posRequest(null);
    // Deserialize message field [taskNum]
    data.taskNum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desire_pos]
    data.desire_pos = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [co_control]
    data.co_control = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'limx_arm_msgs/desire_posRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c892bd9edc7017c3aca8dce5899122dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 taskNum
    float32[6] desire_pos  # deg/m
    bool co_control
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new desire_posRequest(null);
    if (msg.taskNum !== undefined) {
      resolved.taskNum = msg.taskNum;
    }
    else {
      resolved.taskNum = 0
    }

    if (msg.desire_pos !== undefined) {
      resolved.desire_pos = msg.desire_pos;
    }
    else {
      resolved.desire_pos = new Array(6).fill(0)
    }

    if (msg.co_control !== undefined) {
      resolved.co_control = msg.co_control;
    }
    else {
      resolved.co_control = false
    }

    return resolved;
    }
};

class desire_posResponse {
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
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type desire_posResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type desire_posResponse
    let len;
    let data = new desire_posResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'limx_arm_msgs/desire_posResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new desire_posResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: desire_posRequest,
  Response: desire_posResponse,
  md5sum() { return '66df596b0ec651af3f62afa42d52c21b'; },
  datatype() { return 'limx_arm_msgs/desire_pos'; }
};
