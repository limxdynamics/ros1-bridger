// Auto-generated. Do not edit!

// (in-package hand_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TactileCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.names = null;
      this.tactile_switch = null;
      this.channel_reset = null;
      this.calibration_trigger = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('tactile_switch')) {
        this.tactile_switch = initObj.tactile_switch
      }
      else {
        this.tactile_switch = [];
      }
      if (initObj.hasOwnProperty('channel_reset')) {
        this.channel_reset = initObj.channel_reset
      }
      else {
        this.channel_reset = [];
      }
      if (initObj.hasOwnProperty('calibration_trigger')) {
        this.calibration_trigger = initObj.calibration_trigger
      }
      else {
        this.calibration_trigger = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TactileCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [tactile_switch]
    bufferOffset = _arraySerializer.bool(obj.tactile_switch, buffer, bufferOffset, null);
    // Serialize message field [channel_reset]
    bufferOffset = _arraySerializer.bool(obj.channel_reset, buffer, bufferOffset, null);
    // Serialize message field [calibration_trigger]
    bufferOffset = _arraySerializer.bool(obj.calibration_trigger, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TactileCmd
    let len;
    let data = new TactileCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tactile_switch]
    data.tactile_switch = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [channel_reset]
    data.channel_reset = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [calibration_trigger]
    data.calibration_trigger = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.tactile_switch.length;
    length += object.channel_reset.length;
    length += object.calibration_trigger.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_msgs/TactileCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b0263238e251bcb7003327943797186';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    string[]  names
    bool[] tactile_switch             # 触觉开关 (true=开启 false=关闭)
    bool[] channel_reset              # 通道复位 (true触发, 执行时手指不可受力)
    bool[] calibration_trigger        # 参数校准 (true触发, 执行约10s内数据不可用, 手指不可受力)
    
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
    const resolved = new TactileCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.tactile_switch !== undefined) {
      resolved.tactile_switch = msg.tactile_switch;
    }
    else {
      resolved.tactile_switch = []
    }

    if (msg.channel_reset !== undefined) {
      resolved.channel_reset = msg.channel_reset;
    }
    else {
      resolved.channel_reset = []
    }

    if (msg.calibration_trigger !== undefined) {
      resolved.calibration_trigger = msg.calibration_trigger;
    }
    else {
      resolved.calibration_trigger = []
    }

    return resolved;
    }
};

module.exports = TactileCmd;
