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

class JointData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.deviceid = null;
      this.angle = null;
      this.velocity = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0;
      }
      if (initObj.hasOwnProperty('deviceid')) {
        this.deviceid = initObj.deviceid
      }
      else {
        this.deviceid = '';
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointData
    // Serialize message field [stamp]
    bufferOffset = _serializer.int64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [deviceid]
    bufferOffset = _serializer.string(obj.deviceid, buffer, bufferOffset);
    // Check that the constant length array field [angle] has the right length
    if (obj.angle.length !== 6) {
      throw new Error('Unable to serialize array field angle - length must be 6')
    }
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, 6);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 6) {
      throw new Error('Unable to serialize array field velocity - length must be 6')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 6);
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 6) {
      throw new Error('Unable to serialize array field current - length must be 6')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float32(obj.current, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointData
    let len;
    let data = new JointData(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [deviceid]
    data.deviceid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.deviceid);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'limx_arm_msgs/JointData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd17bc79a498488bca00b006c2ebe2bc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 stamp
    
    string deviceid
    
    float32[6] angle
    float32[6] velocity
    float32[6] current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointData(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0
    }

    if (msg.deviceid !== undefined) {
      resolved.deviceid = msg.deviceid;
    }
    else {
      resolved.deviceid = ''
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = new Array(6).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(6).fill(0)
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = JointData;
