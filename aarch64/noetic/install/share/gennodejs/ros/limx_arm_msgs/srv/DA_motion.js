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

class DA_motionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.functionName = null;
      this.left_arm_pos = null;
      this.right_arm_pos = null;
      this.speed = null;
      this.left_arm_joints = null;
      this.right_arm_joints = null;
      this.headPos = null;
    }
    else {
      if (initObj.hasOwnProperty('functionName')) {
        this.functionName = initObj.functionName
      }
      else {
        this.functionName = '';
      }
      if (initObj.hasOwnProperty('left_arm_pos')) {
        this.left_arm_pos = initObj.left_arm_pos
      }
      else {
        this.left_arm_pos = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('right_arm_pos')) {
        this.right_arm_pos = initObj.right_arm_pos
      }
      else {
        this.right_arm_pos = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('left_arm_joints')) {
        this.left_arm_joints = initObj.left_arm_joints
      }
      else {
        this.left_arm_joints = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('right_arm_joints')) {
        this.right_arm_joints = initObj.right_arm_joints
      }
      else {
        this.right_arm_joints = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('headPos')) {
        this.headPos = initObj.headPos
      }
      else {
        this.headPos = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DA_motionRequest
    // Serialize message field [functionName]
    bufferOffset = _serializer.string(obj.functionName, buffer, bufferOffset);
    // Check that the constant length array field [left_arm_pos] has the right length
    if (obj.left_arm_pos.length !== 7) {
      throw new Error('Unable to serialize array field left_arm_pos - length must be 7')
    }
    // Serialize message field [left_arm_pos]
    bufferOffset = _arraySerializer.float32(obj.left_arm_pos, buffer, bufferOffset, 7);
    // Check that the constant length array field [right_arm_pos] has the right length
    if (obj.right_arm_pos.length !== 7) {
      throw new Error('Unable to serialize array field right_arm_pos - length must be 7')
    }
    // Serialize message field [right_arm_pos]
    bufferOffset = _arraySerializer.float32(obj.right_arm_pos, buffer, bufferOffset, 7);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Check that the constant length array field [left_arm_joints] has the right length
    if (obj.left_arm_joints.length !== 7) {
      throw new Error('Unable to serialize array field left_arm_joints - length must be 7')
    }
    // Serialize message field [left_arm_joints]
    bufferOffset = _arraySerializer.float32(obj.left_arm_joints, buffer, bufferOffset, 7);
    // Check that the constant length array field [right_arm_joints] has the right length
    if (obj.right_arm_joints.length !== 7) {
      throw new Error('Unable to serialize array field right_arm_joints - length must be 7')
    }
    // Serialize message field [right_arm_joints]
    bufferOffset = _arraySerializer.float32(obj.right_arm_joints, buffer, bufferOffset, 7);
    // Check that the constant length array field [headPos] has the right length
    if (obj.headPos.length !== 2) {
      throw new Error('Unable to serialize array field headPos - length must be 2')
    }
    // Serialize message field [headPos]
    bufferOffset = _arraySerializer.float32(obj.headPos, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DA_motionRequest
    let len;
    let data = new DA_motionRequest(null);
    // Deserialize message field [functionName]
    data.functionName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_arm_pos]
    data.left_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [right_arm_pos]
    data.right_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_arm_joints]
    data.left_arm_joints = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [right_arm_joints]
    data.right_arm_joints = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [headPos]
    data.headPos = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.functionName);
    return length + 128;
  }

  static datatype() {
    // Returns string type for a service object
    return 'limx_arm_msgs/DA_motionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e9d91d4001e8034a05104ffc2c9327f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string functionName
    float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]
    float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]
    float32 speed 
    float32[7] left_arm_joints
    float32[7] right_arm_joints  
    float32[2] headPos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DA_motionRequest(null);
    if (msg.functionName !== undefined) {
      resolved.functionName = msg.functionName;
    }
    else {
      resolved.functionName = ''
    }

    if (msg.left_arm_pos !== undefined) {
      resolved.left_arm_pos = msg.left_arm_pos;
    }
    else {
      resolved.left_arm_pos = new Array(7).fill(0)
    }

    if (msg.right_arm_pos !== undefined) {
      resolved.right_arm_pos = msg.right_arm_pos;
    }
    else {
      resolved.right_arm_pos = new Array(7).fill(0)
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.left_arm_joints !== undefined) {
      resolved.left_arm_joints = msg.left_arm_joints;
    }
    else {
      resolved.left_arm_joints = new Array(7).fill(0)
    }

    if (msg.right_arm_joints !== undefined) {
      resolved.right_arm_joints = msg.right_arm_joints;
    }
    else {
      resolved.right_arm_joints = new Array(7).fill(0)
    }

    if (msg.headPos !== undefined) {
      resolved.headPos = msg.headPos;
    }
    else {
      resolved.headPos = new Array(2).fill(0)
    }

    return resolved;
    }
};

class DA_motionResponse {
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
    // Serializes a message object of type DA_motionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DA_motionResponse
    let len;
    let data = new DA_motionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'limx_arm_msgs/DA_motionResponse';
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
    const resolved = new DA_motionResponse(null);
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
  Request: DA_motionRequest,
  Response: DA_motionResponse,
  md5sum() { return '6513938defdd69ca721d029105170004'; },
  datatype() { return 'limx_arm_msgs/DA_motion'; }
};
