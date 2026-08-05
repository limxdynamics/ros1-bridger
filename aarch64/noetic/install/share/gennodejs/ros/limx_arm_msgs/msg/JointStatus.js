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

class JointStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.deviceid = null;
      this.run_time = null;
      this.enable = null;
      this.error = null;
      this.zero = null;
      this.limit_min = null;
      this.limit_max = null;
      this.tool_size = null;
      this.mode = null;
      this.state = null;
      this.play_state = null;
      this.log_path = null;
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
      if (initObj.hasOwnProperty('run_time')) {
        this.run_time = initObj.run_time
      }
      else {
        this.run_time = 0;
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('zero')) {
        this.zero = initObj.zero
      }
      else {
        this.zero = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('limit_min')) {
        this.limit_min = initObj.limit_min
      }
      else {
        this.limit_min = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('limit_max')) {
        this.limit_max = initObj.limit_max
      }
      else {
        this.limit_max = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('tool_size')) {
        this.tool_size = initObj.tool_size
      }
      else {
        this.tool_size = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('play_state')) {
        this.play_state = initObj.play_state
      }
      else {
        this.play_state = 0;
      }
      if (initObj.hasOwnProperty('log_path')) {
        this.log_path = initObj.log_path
      }
      else {
        this.log_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.int64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [deviceid]
    bufferOffset = _serializer.string(obj.deviceid, buffer, bufferOffset);
    // Serialize message field [run_time]
    bufferOffset = _serializer.int64(obj.run_time, buffer, bufferOffset);
    // Check that the constant length array field [enable] has the right length
    if (obj.enable.length !== 6) {
      throw new Error('Unable to serialize array field enable - length must be 6')
    }
    // Serialize message field [enable]
    bufferOffset = _arraySerializer.int32(obj.enable, buffer, bufferOffset, 6);
    // Check that the constant length array field [error] has the right length
    if (obj.error.length !== 6) {
      throw new Error('Unable to serialize array field error - length must be 6')
    }
    // Serialize message field [error]
    bufferOffset = _arraySerializer.string(obj.error, buffer, bufferOffset, 6);
    // Check that the constant length array field [zero] has the right length
    if (obj.zero.length !== 6) {
      throw new Error('Unable to serialize array field zero - length must be 6')
    }
    // Serialize message field [zero]
    bufferOffset = _arraySerializer.float32(obj.zero, buffer, bufferOffset, 6);
    // Check that the constant length array field [limit_min] has the right length
    if (obj.limit_min.length !== 6) {
      throw new Error('Unable to serialize array field limit_min - length must be 6')
    }
    // Serialize message field [limit_min]
    bufferOffset = _arraySerializer.float32(obj.limit_min, buffer, bufferOffset, 6);
    // Check that the constant length array field [limit_max] has the right length
    if (obj.limit_max.length !== 6) {
      throw new Error('Unable to serialize array field limit_max - length must be 6')
    }
    // Serialize message field [limit_max]
    bufferOffset = _arraySerializer.float32(obj.limit_max, buffer, bufferOffset, 6);
    // Check that the constant length array field [tool_size] has the right length
    if (obj.tool_size.length !== 3) {
      throw new Error('Unable to serialize array field tool_size - length must be 3')
    }
    // Serialize message field [tool_size]
    bufferOffset = _arraySerializer.float32(obj.tool_size, buffer, bufferOffset, 3);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [play_state]
    bufferOffset = _serializer.int32(obj.play_state, buffer, bufferOffset);
    // Serialize message field [log_path]
    bufferOffset = _serializer.string(obj.log_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointStatus
    let len;
    let data = new JointStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [deviceid]
    data.deviceid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [run_time]
    data.run_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _arrayDeserializer.int32(buffer, bufferOffset, 6)
    // Deserialize message field [error]
    data.error = _arrayDeserializer.string(buffer, bufferOffset, 6)
    // Deserialize message field [zero]
    data.zero = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [limit_min]
    data.limit_min = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [limit_max]
    data.limit_max = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [tool_size]
    data.tool_size = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [play_state]
    data.play_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [log_path]
    data.log_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.deviceid);
    object.error.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.log_path);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'limx_arm_msgs/JointStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45ad0038f02003358fe0dfc06f395181';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 stamp
    
    string deviceid
    
    int64 run_time
    
    int32[6] enable
    string[6] error
    float32[6] zero
    float32[6] limit_min
    float32[6] limit_max
    float32[3] tool_size
    
    # 01位置控制，03速度模式，04电流模式 
    int32 MODE_ANGLE    = 1
    int32 MODE_VELOCITY = 3
    int32 MODE_CURRENT  = 4
    int32 mode
    
    int32 STATE_IDLE      = 1
    int32 STATE_STARTED   = 2
    int32 STATE_PAUSED    = 3
    int32 STATE_RESUMED   = 4
    int32 STATE_STOPED    = 5
    int32 STATE_SHUTDOWN  = 6
    int32 state
    
    int32 PLAY_STATE_IDLE      = 0
    int32 PLAY_STATE_STARTED   = 1
    int32 PLAY_STATE_FAILED    = 2
    int32 PLAY_STATE_FINISHED  = 3
    int32 play_state
    
    string log_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointStatus(null);
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

    if (msg.run_time !== undefined) {
      resolved.run_time = msg.run_time;
    }
    else {
      resolved.run_time = 0
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = new Array(6).fill(0)
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = new Array(6).fill(0)
    }

    if (msg.zero !== undefined) {
      resolved.zero = msg.zero;
    }
    else {
      resolved.zero = new Array(6).fill(0)
    }

    if (msg.limit_min !== undefined) {
      resolved.limit_min = msg.limit_min;
    }
    else {
      resolved.limit_min = new Array(6).fill(0)
    }

    if (msg.limit_max !== undefined) {
      resolved.limit_max = msg.limit_max;
    }
    else {
      resolved.limit_max = new Array(6).fill(0)
    }

    if (msg.tool_size !== undefined) {
      resolved.tool_size = msg.tool_size;
    }
    else {
      resolved.tool_size = new Array(3).fill(0)
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.play_state !== undefined) {
      resolved.play_state = msg.play_state;
    }
    else {
      resolved.play_state = 0
    }

    if (msg.log_path !== undefined) {
      resolved.log_path = msg.log_path;
    }
    else {
      resolved.log_path = ''
    }

    return resolved;
    }
};

// Constants for message
JointStatus.Constants = {
  MODE_ANGLE: 1,
  MODE_VELOCITY: 3,
  MODE_CURRENT: 4,
  STATE_IDLE: 1,
  STATE_STARTED: 2,
  STATE_PAUSED: 3,
  STATE_RESUMED: 4,
  STATE_STOPED: 5,
  STATE_SHUTDOWN: 6,
  PLAY_STATE_IDLE: 0,
  PLAY_STATE_STARTED: 1,
  PLAY_STATE_FAILED: 2,
  PLAY_STATE_FINISHED: 3,
}

module.exports = JointStatus;
