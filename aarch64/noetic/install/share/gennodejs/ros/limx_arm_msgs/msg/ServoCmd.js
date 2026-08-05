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

class ServoCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.functionName = null;
      this.left_arm_pos = null;
      this.right_arm_pos = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoCmd
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoCmd
    let len;
    let data = new ServoCmd(null);
    // Deserialize message field [functionName]
    data.functionName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_arm_pos]
    data.left_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [right_arm_pos]
    data.right_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.functionName);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'limx_arm_msgs/ServoCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9baa32abc430b8109110d02971ccd3a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string functionName #servoL SetHeadPos
    float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] #servoL
    float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] #servoL
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoCmd(null);
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

    return resolved;
    }
};

module.exports = ServoCmd;
