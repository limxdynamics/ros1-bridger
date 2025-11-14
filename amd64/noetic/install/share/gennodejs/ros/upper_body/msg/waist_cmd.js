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

class waist_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waistCMD = null;
    }
    else {
      if (initObj.hasOwnProperty('waistCMD')) {
        this.waistCMD = initObj.waistCMD
      }
      else {
        this.waistCMD = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type waist_cmd
    // Check that the constant length array field [waistCMD] has the right length
    if (obj.waistCMD.length !== 3) {
      throw new Error('Unable to serialize array field waistCMD - length must be 3')
    }
    // Serialize message field [waistCMD]
    bufferOffset = _arraySerializer.float32(obj.waistCMD, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type waist_cmd
    let len;
    let data = new waist_cmd(null);
    // Deserialize message field [waistCMD]
    data.waistCMD = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'upper_body/waist_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '985c2e8a51e1fd1482af0d011eb5a7d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] waistCMD # ["waist_yaw_joint", "waist_roll_joint", "waist_pitch_joint"] units: rad
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new waist_cmd(null);
    if (msg.waistCMD !== undefined) {
      resolved.waistCMD = msg.waistCMD;
    }
    else {
      resolved.waistCMD = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = waist_cmd;
