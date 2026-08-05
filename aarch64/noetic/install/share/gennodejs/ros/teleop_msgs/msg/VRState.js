// Auto-generated. Do not edit!

// (in-package teleop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VRState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.eyePose = null;
      this.l = null;
      this.r = null;
      this.leftJS = null;
      this.leftTrig = null;
      this.leftGrip = null;
      this.LThU = null;
      this.LTr = null;
      this.LG = null;
      this.X = null;
      this.Y = null;
      this.rightJS = null;
      this.rightTrig = null;
      this.rightGrip = null;
      this.RThU = null;
      this.RTr = null;
      this.RG = null;
      this.A = null;
      this.B = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('eyePose')) {
        this.eyePose = initObj.eyePose
      }
      else {
        this.eyePose = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('leftJS')) {
        this.leftJS = initObj.leftJS
      }
      else {
        this.leftJS = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('leftTrig')) {
        this.leftTrig = initObj.leftTrig
      }
      else {
        this.leftTrig = 0.0;
      }
      if (initObj.hasOwnProperty('leftGrip')) {
        this.leftGrip = initObj.leftGrip
      }
      else {
        this.leftGrip = 0.0;
      }
      if (initObj.hasOwnProperty('LThU')) {
        this.LThU = initObj.LThU
      }
      else {
        this.LThU = false;
      }
      if (initObj.hasOwnProperty('LTr')) {
        this.LTr = initObj.LTr
      }
      else {
        this.LTr = false;
      }
      if (initObj.hasOwnProperty('LG')) {
        this.LG = initObj.LG
      }
      else {
        this.LG = false;
      }
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = false;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = false;
      }
      if (initObj.hasOwnProperty('rightJS')) {
        this.rightJS = initObj.rightJS
      }
      else {
        this.rightJS = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('rightTrig')) {
        this.rightTrig = initObj.rightTrig
      }
      else {
        this.rightTrig = 0.0;
      }
      if (initObj.hasOwnProperty('rightGrip')) {
        this.rightGrip = initObj.rightGrip
      }
      else {
        this.rightGrip = 0.0;
      }
      if (initObj.hasOwnProperty('RThU')) {
        this.RThU = initObj.RThU
      }
      else {
        this.RThU = false;
      }
      if (initObj.hasOwnProperty('RTr')) {
        this.RTr = initObj.RTr
      }
      else {
        this.RTr = false;
      }
      if (initObj.hasOwnProperty('RG')) {
        this.RG = initObj.RG
      }
      else {
        this.RG = false;
      }
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = false;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VRState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [eyePose] has the right length
    if (obj.eyePose.length !== 16) {
      throw new Error('Unable to serialize array field eyePose - length must be 16')
    }
    // Serialize message field [eyePose]
    bufferOffset = _arraySerializer.float32(obj.eyePose, buffer, bufferOffset, 16);
    // Check that the constant length array field [l] has the right length
    if (obj.l.length !== 16) {
      throw new Error('Unable to serialize array field l - length must be 16')
    }
    // Serialize message field [l]
    bufferOffset = _arraySerializer.float32(obj.l, buffer, bufferOffset, 16);
    // Check that the constant length array field [r] has the right length
    if (obj.r.length !== 16) {
      throw new Error('Unable to serialize array field r - length must be 16')
    }
    // Serialize message field [r]
    bufferOffset = _arraySerializer.float32(obj.r, buffer, bufferOffset, 16);
    // Check that the constant length array field [leftJS] has the right length
    if (obj.leftJS.length !== 2) {
      throw new Error('Unable to serialize array field leftJS - length must be 2')
    }
    // Serialize message field [leftJS]
    bufferOffset = _arraySerializer.float32(obj.leftJS, buffer, bufferOffset, 2);
    // Serialize message field [leftTrig]
    bufferOffset = _serializer.float32(obj.leftTrig, buffer, bufferOffset);
    // Serialize message field [leftGrip]
    bufferOffset = _serializer.float32(obj.leftGrip, buffer, bufferOffset);
    // Serialize message field [LThU]
    bufferOffset = _serializer.bool(obj.LThU, buffer, bufferOffset);
    // Serialize message field [LTr]
    bufferOffset = _serializer.bool(obj.LTr, buffer, bufferOffset);
    // Serialize message field [LG]
    bufferOffset = _serializer.bool(obj.LG, buffer, bufferOffset);
    // Serialize message field [X]
    bufferOffset = _serializer.bool(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.bool(obj.Y, buffer, bufferOffset);
    // Check that the constant length array field [rightJS] has the right length
    if (obj.rightJS.length !== 2) {
      throw new Error('Unable to serialize array field rightJS - length must be 2')
    }
    // Serialize message field [rightJS]
    bufferOffset = _arraySerializer.float32(obj.rightJS, buffer, bufferOffset, 2);
    // Serialize message field [rightTrig]
    bufferOffset = _serializer.float32(obj.rightTrig, buffer, bufferOffset);
    // Serialize message field [rightGrip]
    bufferOffset = _serializer.float32(obj.rightGrip, buffer, bufferOffset);
    // Serialize message field [RThU]
    bufferOffset = _serializer.bool(obj.RThU, buffer, bufferOffset);
    // Serialize message field [RTr]
    bufferOffset = _serializer.bool(obj.RTr, buffer, bufferOffset);
    // Serialize message field [RG]
    bufferOffset = _serializer.bool(obj.RG, buffer, bufferOffset);
    // Serialize message field [A]
    bufferOffset = _serializer.bool(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.bool(obj.B, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VRState
    let len;
    let data = new VRState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [eyePose]
    data.eyePose = _arrayDeserializer.float32(buffer, bufferOffset, 16)
    // Deserialize message field [l]
    data.l = _arrayDeserializer.float32(buffer, bufferOffset, 16)
    // Deserialize message field [r]
    data.r = _arrayDeserializer.float32(buffer, bufferOffset, 16)
    // Deserialize message field [leftJS]
    data.leftJS = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [leftTrig]
    data.leftTrig = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [leftGrip]
    data.leftGrip = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LThU]
    data.LThU = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LTr]
    data.LTr = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LG]
    data.LG = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [X]
    data.X = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rightJS]
    data.rightJS = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [rightTrig]
    data.rightTrig = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rightGrip]
    data.rightGrip = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RThU]
    data.RThU = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RTr]
    data.RTr = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RG]
    data.RG = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [A]
    data.A = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 234;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/VRState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00c31bc920504fb5ee84c550ff4ee100';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float32[16] eyePose  # 眼镜位置姿态矩阵 4x4
    float32[16] l   # 左手柄姿态矩阵 4x4
    float32[16] r   # 右手柄姿态矩阵 4x4
    
    float32[2] leftJS # 左摇杆
    float32 leftTrig  # 左扳机
    float32 leftGrip  # 左 Grip 键
    bool LThU  # 左拇指（布尔值）
    bool LTr   # 左扳机（布尔值）
    bool LG    # 左 Grip 键（布尔值）
    bool X     # X 键
    bool Y     # Y 键
    
    float32[2] rightJS  # 右摇杆
    float32 rightTrig   # 右扳机
    float32 rightGrip   # 右 Grip 键
    bool RThU  # 右拇指（布尔值）
    bool RTr   # 右扳机（布尔值）
    bool RG    # 右 Grip 键（布尔值）
    bool A     # A 键
    bool B     # B 键
    
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
    const resolved = new VRState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.eyePose !== undefined) {
      resolved.eyePose = msg.eyePose;
    }
    else {
      resolved.eyePose = new Array(16).fill(0)
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = new Array(16).fill(0)
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = new Array(16).fill(0)
    }

    if (msg.leftJS !== undefined) {
      resolved.leftJS = msg.leftJS;
    }
    else {
      resolved.leftJS = new Array(2).fill(0)
    }

    if (msg.leftTrig !== undefined) {
      resolved.leftTrig = msg.leftTrig;
    }
    else {
      resolved.leftTrig = 0.0
    }

    if (msg.leftGrip !== undefined) {
      resolved.leftGrip = msg.leftGrip;
    }
    else {
      resolved.leftGrip = 0.0
    }

    if (msg.LThU !== undefined) {
      resolved.LThU = msg.LThU;
    }
    else {
      resolved.LThU = false
    }

    if (msg.LTr !== undefined) {
      resolved.LTr = msg.LTr;
    }
    else {
      resolved.LTr = false
    }

    if (msg.LG !== undefined) {
      resolved.LG = msg.LG;
    }
    else {
      resolved.LG = false
    }

    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = false
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = false
    }

    if (msg.rightJS !== undefined) {
      resolved.rightJS = msg.rightJS;
    }
    else {
      resolved.rightJS = new Array(2).fill(0)
    }

    if (msg.rightTrig !== undefined) {
      resolved.rightTrig = msg.rightTrig;
    }
    else {
      resolved.rightTrig = 0.0
    }

    if (msg.rightGrip !== undefined) {
      resolved.rightGrip = msg.rightGrip;
    }
    else {
      resolved.rightGrip = 0.0
    }

    if (msg.RThU !== undefined) {
      resolved.RThU = msg.RThU;
    }
    else {
      resolved.RThU = false
    }

    if (msg.RTr !== undefined) {
      resolved.RTr = msg.RTr;
    }
    else {
      resolved.RTr = false
    }

    if (msg.RG !== undefined) {
      resolved.RG = msg.RG;
    }
    else {
      resolved.RG = false
    }

    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = false
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = false
    }

    return resolved;
    }
};

module.exports = VRState;
