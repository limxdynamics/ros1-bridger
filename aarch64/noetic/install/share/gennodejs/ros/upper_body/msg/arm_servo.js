// Auto-generated. Do not edit!

// (in-package upper_body.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class arm_servo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_type = null;
      this.left_arm_joints = null;
      this.right_arm_joints = null;
      this.left_arm_pos = null;
      this.right_arm_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_type')) {
        this.servo_type = initObj.servo_type
      }
      else {
        this.servo_type = '';
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_servo
    // Serialize message field [servo_type]
    bufferOffset = _serializer.string(obj.servo_type, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_servo
    let len;
    let data = new arm_servo(null);
    // Deserialize message field [servo_type]
    data.servo_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_arm_joints]
    data.left_arm_joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [right_arm_joints]
    data.right_arm_joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [left_arm_pos]
    data.left_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [right_arm_pos]
    data.right_arm_pos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.servo_type);
    length += 4 * object.left_arm_joints.length;
    length += 4 * object.right_arm_joints.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'upper_body/arm_servo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97e96a0b33437f001f2d5b69b43cfc77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string servo_type # servoJ or servoP
    # servoJ
    float32[] left_arm_joints # unit: rad
    float32[] right_arm_joints # unit: rad
    # servoP
    float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
    float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: mz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_servo(null);
    if (msg.servo_type !== undefined) {
      resolved.servo_type = msg.servo_type;
    }
    else {
      resolved.servo_type = ''
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

    return resolved;
    }
};

module.exports = arm_servo;
