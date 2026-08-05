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

class JointSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.deviceid = null;
      this.action = null;
      this.mode = null;
      this.data = null;
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
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSet
    // Serialize message field [stamp]
    bufferOffset = _serializer.int64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [deviceid]
    bufferOffset = _serializer.string(obj.deviceid, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 6) {
      throw new Error('Unable to serialize array field data - length must be 6')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSet
    let len;
    let data = new JointSet(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [deviceid]
    data.deviceid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.deviceid);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'limx_arm_msgs/JointSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '342a69737258a9dd1a3f1a350ffdea87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 stamp
    
    string deviceid
    
    # action
    int32 ACTION_IDLE           = 0
    int32 ACTION_START          = 1
    int32 ACTION_PAUSE          = 2
    int32 ACTION_RESUME         = 3
    int32 ACTION_STOP           = 4
    int32 ACTION_ENABLE_MOTOR   = 5
    int32 ACTION_SET_ZERO       = 6
    int32 ACTION_SET_LIMIT_MIN  = 7
    int32 ACTION_SET_LIMIT_MAX  = 8
    int32 ACTION_SET_POSITION   = 9
    int32 ACTION_SET_MODE       = 10
    int32 ACTION_SET_TOOL_SIZE  = 11
    int32 ACTION_START_DRAG     = 12
    int32 ACTION_STOP_DRAG      = 13
    int32 ACTION_PLAYER_START   = 14
    int32 ACTION_PLAYER_STOP    = 15
    int32 ACTION_SET_CARTESIAN_POSITION = 16
    int32 action
    
    # 01位置控制，03速度模式，04电流模式 
    int32 MODE_ANGLE    = 1
    int32 MODE_VELOCITY = 3
    int32 MODE_CURRENT  = 4
    int32 mode
    
    # data
    float32[6] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSet(null);
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

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(6).fill(0)
    }

    return resolved;
    }
};

// Constants for message
JointSet.Constants = {
  ACTION_IDLE: 0,
  ACTION_START: 1,
  ACTION_PAUSE: 2,
  ACTION_RESUME: 3,
  ACTION_STOP: 4,
  ACTION_ENABLE_MOTOR: 5,
  ACTION_SET_ZERO: 6,
  ACTION_SET_LIMIT_MIN: 7,
  ACTION_SET_LIMIT_MAX: 8,
  ACTION_SET_POSITION: 9,
  ACTION_SET_MODE: 10,
  ACTION_SET_TOOL_SIZE: 11,
  ACTION_START_DRAG: 12,
  ACTION_STOP_DRAG: 13,
  ACTION_PLAYER_START: 14,
  ACTION_PLAYER_STOP: 15,
  ACTION_SET_CARTESIAN_POSITION: 16,
  MODE_ANGLE: 1,
  MODE_VELOCITY: 3,
  MODE_CURRENT: 4,
}

module.exports = JointSet;
