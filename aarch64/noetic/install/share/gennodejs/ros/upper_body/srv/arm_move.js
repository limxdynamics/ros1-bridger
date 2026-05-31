// Auto-generated. Do not edit!

// (in-package upper_body.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class arm_moveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.move_type = null;
      this.left_arm_joints = null;
      this.right_arm_joints = null;
      this.left_arm_pos = null;
      this.right_arm_pos = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('move_type')) {
        this.move_type = initObj.move_type
      }
      else {
        this.move_type = '';
      }
      if (initObj.hasOwnProperty('left_arm_joints')) {
        this.left_arm_joints = initObj.left_arm_joints
      }
      else {
        this.left_arm_joints = [];
      }
      if (initObj.hasOwnProperty('right_arm_joints')) {
        this.right_arm_joints = initObj.right_arm_joints
      }
      else {
        this.right_arm_joints = [];
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_moveRequest
    // Serialize message field [move_type]
    bufferOffset = _serializer.string(obj.move_type, buffer, bufferOffset);
    // Serialize message field [left_arm_joints]
    bufferOffset = _arraySerializer.float32(obj.left_arm_joints, buffer, bufferOffset, null);
    // Serialize message field [right_arm_joints]
    bufferOffset = _arraySerializer.float32(obj.right_arm_joints, buffer, bufferOffset, null);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_moveRequest
    let len;
    let data = new arm_moveRequest(null);
    // Deserialize message field [move_type]
    data.move_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_arm_joints]
    data.left_arm_joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [right_arm_joints]
    data.right_arm_joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [left_arm_pos]
    data.left_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [right_arm_pos]
    data.right_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.move_type);
    length += 4 * object.left_arm_joints.length;
    length += 4 * object.right_arm_joints.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'upper_body/arm_moveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86d864eb43c1d4b530056a745f746964';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # motion type
    string move_type # moveJ\ moveL\ moveP\ moveWaistArm
    # moveJ
    float32[] left_arm_joints # unit: rad
    float32[] right_arm_joints # unit: rad
    # moveL\ moveP
    float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
    float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
    # speed
    float32 speed # unit: rad/s or m/s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_moveRequest(null);
    if (msg.move_type !== undefined) {
      resolved.move_type = msg.move_type;
    }
    else {
      resolved.move_type = ''
    }

    if (msg.left_arm_joints !== undefined) {
      resolved.left_arm_joints = msg.left_arm_joints;
    }
    else {
      resolved.left_arm_joints = []
    }

    if (msg.right_arm_joints !== undefined) {
      resolved.right_arm_joints = msg.right_arm_joints;
    }
    else {
      resolved.right_arm_joints = []
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

    return resolved;
    }
};

class arm_moveResponse {
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
    // Serializes a message object of type arm_moveResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_moveResponse
    let len;
    let data = new arm_moveResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'upper_body/arm_moveResponse';
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
    const resolved = new arm_moveResponse(null);
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
  Request: arm_moveRequest,
  Response: arm_moveResponse,
  md5sum() { return 'f13b61a0c47c46ffa39677bd176fad6d'; },
  datatype() { return 'upper_body/arm_move'; }
};
