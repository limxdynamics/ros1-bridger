// Auto-generated. Do not edit!

// (in-package limx_arm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class arm_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_joints = null;
      this.right_joints = null;
      this.left_endEffector = null;
      this.right_endEffector = null;
      this.ik_statu = null;
    }
    else {
      if (initObj.hasOwnProperty('left_joints')) {
        this.left_joints = initObj.left_joints
      }
      else {
        this.left_joints = [];
      }
      if (initObj.hasOwnProperty('right_joints')) {
        this.right_joints = initObj.right_joints
      }
      else {
        this.right_joints = [];
      }
      if (initObj.hasOwnProperty('left_endEffector')) {
        this.left_endEffector = initObj.left_endEffector
      }
      else {
        this.left_endEffector = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('right_endEffector')) {
        this.right_endEffector = initObj.right_endEffector
      }
      else {
        this.right_endEffector = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('ik_statu')) {
        this.ik_statu = initObj.ik_statu
      }
      else {
        this.ik_statu = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_status
    // Serialize message field [left_joints]
    bufferOffset = _arraySerializer.float64(obj.left_joints, buffer, bufferOffset, null);
    // Serialize message field [right_joints]
    bufferOffset = _arraySerializer.float64(obj.right_joints, buffer, bufferOffset, null);
    // Check that the constant length array field [left_endEffector] has the right length
    if (obj.left_endEffector.length !== 7) {
      throw new Error('Unable to serialize array field left_endEffector - length must be 7')
    }
    // Serialize message field [left_endEffector]
    bufferOffset = _arraySerializer.float64(obj.left_endEffector, buffer, bufferOffset, 7);
    // Check that the constant length array field [right_endEffector] has the right length
    if (obj.right_endEffector.length !== 7) {
      throw new Error('Unable to serialize array field right_endEffector - length must be 7')
    }
    // Serialize message field [right_endEffector]
    bufferOffset = _arraySerializer.float64(obj.right_endEffector, buffer, bufferOffset, 7);
    // Serialize message field [ik_statu]
    bufferOffset = _serializer.int32(obj.ik_statu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_status
    let len;
    let data = new arm_status(null);
    // Deserialize message field [left_joints]
    data.left_joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [right_joints]
    data.right_joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [left_endEffector]
    data.left_endEffector = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [right_endEffector]
    data.right_endEffector = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [ik_statu]
    data.ik_statu = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.left_joints.length;
    length += 8 * object.right_joints.length;
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'limx_arm_msgs/arm_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab1b8cc2dd2d4b67c6f12443dc6788e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] left_joints
    float64[] right_joints
    float64[7] left_endEffector 
    float64[7] right_endEffector
    int32 ik_statu
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_status(null);
    if (msg.left_joints !== undefined) {
      resolved.left_joints = msg.left_joints;
    }
    else {
      resolved.left_joints = []
    }

    if (msg.right_joints !== undefined) {
      resolved.right_joints = msg.right_joints;
    }
    else {
      resolved.right_joints = []
    }

    if (msg.left_endEffector !== undefined) {
      resolved.left_endEffector = msg.left_endEffector;
    }
    else {
      resolved.left_endEffector = new Array(7).fill(0)
    }

    if (msg.right_endEffector !== undefined) {
      resolved.right_endEffector = msg.right_endEffector;
    }
    else {
      resolved.right_endEffector = new Array(7).fill(0)
    }

    if (msg.ik_statu !== undefined) {
      resolved.ik_statu = msg.ik_statu;
    }
    else {
      resolved.ik_statu = 0
    }

    return resolved;
    }
};

module.exports = arm_status;
