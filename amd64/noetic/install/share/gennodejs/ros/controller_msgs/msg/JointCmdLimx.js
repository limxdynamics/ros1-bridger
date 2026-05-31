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

class JointCmdLimx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.names = null;
      this.q = null;
      this.v = null;
      this.tau = null;
      this.kp = null;
      this.kd = null;
      this.mode = null;
      this.na = null;
      this.parallel_solver_mode = null;
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
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = [];
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = [];
      }
      if (initObj.hasOwnProperty('tau')) {
        this.tau = initObj.tau
      }
      else {
        this.tau = [];
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = [];
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = [];
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = [];
      }
      if (initObj.hasOwnProperty('na')) {
        this.na = initObj.na
      }
      else {
        this.na = 0;
      }
      if (initObj.hasOwnProperty('parallel_solver_mode')) {
        this.parallel_solver_mode = initObj.parallel_solver_mode
      }
      else {
        this.parallel_solver_mode = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCmdLimx
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float32(obj.q, buffer, bufferOffset, null);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float32(obj.v, buffer, bufferOffset, null);
    // Serialize message field [tau]
    bufferOffset = _arraySerializer.float32(obj.tau, buffer, bufferOffset, null);
    // Serialize message field [kp]
    bufferOffset = _arraySerializer.float32(obj.kp, buffer, bufferOffset, null);
    // Serialize message field [kd]
    bufferOffset = _arraySerializer.float32(obj.kd, buffer, bufferOffset, null);
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.uint8(obj.mode, buffer, bufferOffset, null);
    // Serialize message field [na]
    bufferOffset = _serializer.uint32(obj.na, buffer, bufferOffset);
    // Serialize message field [parallel_solver_mode]
    bufferOffset = _arraySerializer.uint8(obj.parallel_solver_mode, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCmdLimx
    let len;
    let data = new JointCmdLimx(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tau]
    data.tau = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [kp]
    data.kp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [kd]
    data.kd = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [na]
    data.na = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parallel_solver_mode]
    data.parallel_solver_mode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.q.length;
    length += 4 * object.v.length;
    length += 4 * object.tau.length;
    length += 4 * object.kp.length;
    length += 4 * object.kd.length;
    length += object.mode.length;
    length += object.parallel_solver_mode.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller_msgs/JointCmdLimx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa66c708f26b270ba9c935d9e8db6182';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    string[]  names
    float32[] q
    float32[] v
    float32[] tau
    float32[] kp
    float32[] kd
    uint8[] mode
    uint32 na
    uint8[] parallel_solver_mode
    
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
    const resolved = new JointCmdLimx(null);
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

    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = []
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = []
    }

    if (msg.tau !== undefined) {
      resolved.tau = msg.tau;
    }
    else {
      resolved.tau = []
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = []
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = []
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = []
    }

    if (msg.na !== undefined) {
      resolved.na = msg.na;
    }
    else {
      resolved.na = 0
    }

    if (msg.parallel_solver_mode !== undefined) {
      resolved.parallel_solver_mode = msg.parallel_solver_mode;
    }
    else {
      resolved.parallel_solver_mode = []
    }

    return resolved;
    }
};

module.exports = JointCmdLimx;
