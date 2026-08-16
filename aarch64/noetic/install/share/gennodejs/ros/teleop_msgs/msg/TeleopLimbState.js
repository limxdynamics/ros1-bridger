// Auto-generated. Do not edit!

// (in-package teleop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TeleopLimbState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.following = null;
      this.ee_closure_enabled = null;
      this.ee_gesture_index = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('following')) {
        this.following = initObj.following
      }
      else {
        this.following = false;
      }
      if (initObj.hasOwnProperty('ee_closure_enabled')) {
        this.ee_closure_enabled = initObj.ee_closure_enabled
      }
      else {
        this.ee_closure_enabled = false;
      }
      if (initObj.hasOwnProperty('ee_gesture_index')) {
        this.ee_gesture_index = initObj.ee_gesture_index
      }
      else {
        this.ee_gesture_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeleopLimbState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [following]
    bufferOffset = _serializer.bool(obj.following, buffer, bufferOffset);
    // Serialize message field [ee_closure_enabled]
    bufferOffset = _serializer.bool(obj.ee_closure_enabled, buffer, bufferOffset);
    // Serialize message field [ee_gesture_index]
    bufferOffset = _serializer.uint8(obj.ee_gesture_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeleopLimbState
    let len;
    let data = new TeleopLimbState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [following]
    data.following = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ee_closure_enabled]
    data.ee_closure_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ee_gesture_index]
    data.ee_gesture_index = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/TeleopLimbState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa4590909bb809d1cfda598a4b6604be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TeleopLimbState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.following !== undefined) {
      resolved.following = msg.following;
    }
    else {
      resolved.following = false
    }

    if (msg.ee_closure_enabled !== undefined) {
      resolved.ee_closure_enabled = msg.ee_closure_enabled;
    }
    else {
      resolved.ee_closure_enabled = false
    }

    if (msg.ee_gesture_index !== undefined) {
      resolved.ee_gesture_index = msg.ee_gesture_index;
    }
    else {
      resolved.ee_gesture_index = 0
    }

    return resolved;
    }
};

module.exports = TeleopLimbState;
