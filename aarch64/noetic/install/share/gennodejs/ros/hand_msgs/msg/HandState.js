// Auto-generated. Do not edit!

// (in-package hand_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HandMsg = require('./HandMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HandState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hand_type = null;
      this.ctrl_mode = null;
      this.hand_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hand_type')) {
        this.hand_type = initObj.hand_type
      }
      else {
        this.hand_type = '';
      }
      if (initObj.hasOwnProperty('ctrl_mode')) {
        this.ctrl_mode = initObj.ctrl_mode
      }
      else {
        this.ctrl_mode = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('hand_state')) {
        this.hand_state = initObj.hand_state
      }
      else {
        this.hand_state = new Array(2).fill(new HandMsg());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hand_type]
    bufferOffset = _serializer.string(obj.hand_type, buffer, bufferOffset);
    // Check that the constant length array field [ctrl_mode] has the right length
    if (obj.ctrl_mode.length !== 2) {
      throw new Error('Unable to serialize array field ctrl_mode - length must be 2')
    }
    // Serialize message field [ctrl_mode]
    bufferOffset = _arraySerializer.uint8(obj.ctrl_mode, buffer, bufferOffset, 2);
    // Check that the constant length array field [hand_state] has the right length
    if (obj.hand_state.length !== 2) {
      throw new Error('Unable to serialize array field hand_state - length must be 2')
    }
    // Serialize message field [hand_state]
    obj.hand_state.forEach((val) => {
      bufferOffset = HandMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandState
    let len;
    let data = new HandState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hand_type]
    data.hand_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ctrl_mode]
    data.ctrl_mode = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [hand_state]
    len = 2;
    data.hand_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hand_state[i] = HandMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.hand_type);
    object.hand_state.forEach((val) => {
      length += HandMsg.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_msgs/HandState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e859982707a5c9b2e1da5a16bffb891';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string hand_type
    
    uint8[2] ctrl_mode
    
    HandMsg[2] hand_state
    
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
    
    ================================================================================
    MSG: hand_msgs/HandMsg
    std_msgs/Header header
    
    string[]  names
    float32[] pos
    float32[] vel
    float32[] current
    float32[] time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hand_type !== undefined) {
      resolved.hand_type = msg.hand_type;
    }
    else {
      resolved.hand_type = ''
    }

    if (msg.ctrl_mode !== undefined) {
      resolved.ctrl_mode = msg.ctrl_mode;
    }
    else {
      resolved.ctrl_mode = new Array(2).fill(0)
    }

    if (msg.hand_state !== undefined) {
      resolved.hand_state = new Array(2)
      for (let i = 0; i < resolved.hand_state.length; ++i) {
        if (msg.hand_state.length > i) {
          resolved.hand_state[i] = HandMsg.Resolve(msg.hand_state[i]);
        }
        else {
          resolved.hand_state[i] = new HandMsg();
        }
      }
    }
    else {
      resolved.hand_state = new Array(2).fill(new HandMsg())
    }

    return resolved;
    }
};

module.exports = HandState;
