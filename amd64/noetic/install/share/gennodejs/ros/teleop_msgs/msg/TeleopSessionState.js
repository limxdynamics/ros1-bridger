// Auto-generated. Do not edit!

// (in-package teleop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TeleopLimbState = require('./TeleopLimbState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TeleopSessionState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.schema_version = null;
      this.session_state = null;
      this.mode = null;
      this.limbs = null;
      this.reanchor_epoch = null;
      this.retarget_required = null;
      this.fault_code = null;
      this.fault_detail = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('schema_version')) {
        this.schema_version = initObj.schema_version
      }
      else {
        this.schema_version = 0;
      }
      if (initObj.hasOwnProperty('session_state')) {
        this.session_state = initObj.session_state
      }
      else {
        this.session_state = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('limbs')) {
        this.limbs = initObj.limbs
      }
      else {
        this.limbs = [];
      }
      if (initObj.hasOwnProperty('reanchor_epoch')) {
        this.reanchor_epoch = initObj.reanchor_epoch
      }
      else {
        this.reanchor_epoch = 0;
      }
      if (initObj.hasOwnProperty('retarget_required')) {
        this.retarget_required = initObj.retarget_required
      }
      else {
        this.retarget_required = false;
      }
      if (initObj.hasOwnProperty('fault_code')) {
        this.fault_code = initObj.fault_code
      }
      else {
        this.fault_code = 0;
      }
      if (initObj.hasOwnProperty('fault_detail')) {
        this.fault_detail = initObj.fault_detail
      }
      else {
        this.fault_detail = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeleopSessionState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [schema_version]
    bufferOffset = _serializer.uint16(obj.schema_version, buffer, bufferOffset);
    // Serialize message field [session_state]
    bufferOffset = _serializer.uint8(obj.session_state, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [limbs]
    // Serialize the length for message field [limbs]
    bufferOffset = _serializer.uint32(obj.limbs.length, buffer, bufferOffset);
    obj.limbs.forEach((val) => {
      bufferOffset = TeleopLimbState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reanchor_epoch]
    bufferOffset = _serializer.uint32(obj.reanchor_epoch, buffer, bufferOffset);
    // Serialize message field [retarget_required]
    bufferOffset = _serializer.bool(obj.retarget_required, buffer, bufferOffset);
    // Serialize message field [fault_code]
    bufferOffset = _serializer.uint8(obj.fault_code, buffer, bufferOffset);
    // Serialize message field [fault_detail]
    bufferOffset = _serializer.string(obj.fault_detail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeleopSessionState
    let len;
    let data = new TeleopSessionState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [schema_version]
    data.schema_version = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [session_state]
    data.session_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [limbs]
    // Deserialize array length for message field [limbs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.limbs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.limbs[i] = TeleopLimbState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reanchor_epoch]
    data.reanchor_epoch = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [retarget_required]
    data.retarget_required = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_code]
    data.fault_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault_detail]
    data.fault_detail = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.mode);
    object.limbs.forEach((val) => {
      length += TeleopLimbState.getMessageSize(val);
    });
    length += _getByteLength(object.fault_detail);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/TeleopSessionState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebf383eb5a90bcbbd4b9b1366625b009';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 遥操作会话状态。由决策层单向广播，全系统唯一权威，其余模块只读。
    # 接收方不得维护本状态的副本，也不得自行修改跟随状态。
    
    std_msgs/Header header
    
    uint16 SCHEMA_VERSION=1
    uint16 schema_version
    
    uint8 SESSION_INACTIVE=0  # 未进入遥操作
    uint8 SESSION_ACTIVE=1    # 遥操作激活
    uint8 SESSION_HOMING=2    # 回初始姿态流程中，接收方应暂停输出目标
    uint8 SESSION_FAULT=3     # 故障
    uint8 session_state
    
    # 当前遥操作模式名，由产品定义。用字符串以便新增模式不改本消息。
    string mode
    
    # 逐肢体决策。肢体缺席时按不跟随处理。
    teleop_msgs/TeleopLimbState[] limbs
    
    # 重锚计数，单调递增。数值发生变化即要求接收方用当前输入与末端反馈
    # 重新建立锚点。用计数而非布尔边沿，因为收发双方不同频，边沿会丢。
    uint32 reanchor_epoch
    
    # 是否仍需要接收方计算全身重定向。纯性能提示，接收方可以忽略。
    bool retarget_required
    
    uint8 FAULT_NONE=0
    uint8 FAULT_INPUT_TIMEOUT=1  # 上游输入超时
    uint8 FAULT_TARGET_JUMP=2    # 目标跳变被拦截
    uint8 FAULT_OUTPUT=3         # 下发失败
    uint8 FAULT_INTERNAL=4       # 决策层内部错误
    uint8 fault_code
    
    # 故障详情，供日志与诊断使用，不参与控制判定
    string fault_detail
    
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
    MSG: teleop_msgs/TeleopLimbState
    # 会话中单个肢体的决策状态。
    # 作为 TeleopSessionState.limbs 的元素使用。
    
    # 肢体名。与 TeleopTarget.name 取值一致。
    string name
    
    # 该肢体本周期是否处于跟随
    bool following
    
    # 该侧末端是否允许无极开合。
    # 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。
    bool ee_closure_enabled
    
    # 该侧末端当前手势索引。
    # 循环切换与持久化由发布方负责，下发对应手势由接收方负责。
    uint8 ee_gesture_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeleopSessionState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.schema_version !== undefined) {
      resolved.schema_version = msg.schema_version;
    }
    else {
      resolved.schema_version = 0
    }

    if (msg.session_state !== undefined) {
      resolved.session_state = msg.session_state;
    }
    else {
      resolved.session_state = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.limbs !== undefined) {
      resolved.limbs = new Array(msg.limbs.length);
      for (let i = 0; i < resolved.limbs.length; ++i) {
        resolved.limbs[i] = TeleopLimbState.Resolve(msg.limbs[i]);
      }
    }
    else {
      resolved.limbs = []
    }

    if (msg.reanchor_epoch !== undefined) {
      resolved.reanchor_epoch = msg.reanchor_epoch;
    }
    else {
      resolved.reanchor_epoch = 0
    }

    if (msg.retarget_required !== undefined) {
      resolved.retarget_required = msg.retarget_required;
    }
    else {
      resolved.retarget_required = false
    }

    if (msg.fault_code !== undefined) {
      resolved.fault_code = msg.fault_code;
    }
    else {
      resolved.fault_code = 0
    }

    if (msg.fault_detail !== undefined) {
      resolved.fault_detail = msg.fault_detail;
    }
    else {
      resolved.fault_detail = ''
    }

    return resolved;
    }
};

// Constants for message
TeleopSessionState.Constants = {
  SCHEMA_VERSION: 1,
  SESSION_INACTIVE: 0,
  SESSION_ACTIVE: 1,
  SESSION_HOMING: 2,
  SESSION_FAULT: 3,
  FAULT_NONE: 0,
  FAULT_INPUT_TIMEOUT: 1,
  FAULT_TARGET_JUMP: 2,
  FAULT_OUTPUT: 3,
  FAULT_INTERNAL: 4,
}

module.exports = TeleopSessionState;
