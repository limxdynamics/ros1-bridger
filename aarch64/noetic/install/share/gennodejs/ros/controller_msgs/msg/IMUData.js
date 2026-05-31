// Auto-generated. Do not edit!

// (in-package controller_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class IMUData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imustamp = null;
      this.status = null;
      this.euler = null;
      this.quat = null;
      this.acc = null;
      this.gyro = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('imustamp')) {
        this.imustamp = initObj.imustamp
      }
      else {
        this.imustamp = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('euler')) {
        this.euler = initObj.euler
      }
      else {
        this.euler = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('quat')) {
        this.quat = initObj.quat
      }
      else {
        this.quat = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IMUData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imustamp]
    bufferOffset = _serializer.uint64(obj.imustamp, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint32(obj.status, buffer, bufferOffset);
    // Check that the constant length array field [euler] has the right length
    if (obj.euler.length !== 3) {
      throw new Error('Unable to serialize array field euler - length must be 3')
    }
    // Serialize message field [euler]
    bufferOffset = _arraySerializer.float64(obj.euler, buffer, bufferOffset, 3);
    // Check that the constant length array field [quat] has the right length
    if (obj.quat.length !== 4) {
      throw new Error('Unable to serialize array field quat - length must be 4')
    }
    // Serialize message field [quat]
    bufferOffset = _arraySerializer.float64(obj.quat, buffer, bufferOffset, 4);
    // Check that the constant length array field [acc] has the right length
    if (obj.acc.length !== 3) {
      throw new Error('Unable to serialize array field acc - length must be 3')
    }
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float64(obj.acc, buffer, bufferOffset, 3);
    // Check that the constant length array field [gyro] has the right length
    if (obj.gyro.length !== 3) {
      throw new Error('Unable to serialize array field gyro - length must be 3')
    }
    // Serialize message field [gyro]
    bufferOffset = _arraySerializer.float64(obj.gyro, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IMUData
    let len;
    let data = new IMUData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imustamp]
    data.imustamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [euler]
    data.euler = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [quat]
    data.quat = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [gyro]
    data.gyro = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller_msgs/IMUData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4713fbd787897a0c91a2a31aa6a873c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint64 imustamp
    uint32 status
    
    float64[3] euler
    float64[4] quat
    float64[3] acc
    float64[3] gyro
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IMUData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.imustamp !== undefined) {
      resolved.imustamp = msg.imustamp;
    }
    else {
      resolved.imustamp = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.euler !== undefined) {
      resolved.euler = msg.euler;
    }
    else {
      resolved.euler = new Array(3).fill(0)
    }

    if (msg.quat !== undefined) {
      resolved.quat = msg.quat;
    }
    else {
      resolved.quat = new Array(4).fill(0)
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = new Array(3).fill(0)
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = msg.gyro;
    }
    else {
      resolved.gyro = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = IMUData;
