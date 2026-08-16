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

class TeleopRawInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_trigger = null;
      this.right_trigger = null;
      this.left_grip = null;
      this.right_grip = null;
      this.left_stick = null;
      this.right_stick = null;
      this.buttons = null;
      this.buttons_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('left_trigger')) {
        this.left_trigger = initObj.left_trigger
      }
      else {
        this.left_trigger = 0.0;
      }
      if (initObj.hasOwnProperty('right_trigger')) {
        this.right_trigger = initObj.right_trigger
      }
      else {
        this.right_trigger = 0.0;
      }
      if (initObj.hasOwnProperty('left_grip')) {
        this.left_grip = initObj.left_grip
      }
      else {
        this.left_grip = 0.0;
      }
      if (initObj.hasOwnProperty('right_grip')) {
        this.right_grip = initObj.right_grip
      }
      else {
        this.right_grip = 0.0;
      }
      if (initObj.hasOwnProperty('left_stick')) {
        this.left_stick = initObj.left_stick
      }
      else {
        this.left_stick = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('right_stick')) {
        this.right_stick = initObj.right_stick
      }
      else {
        this.right_stick = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('buttons')) {
        this.buttons = initObj.buttons
      }
      else {
        this.buttons = 0;
      }
      if (initObj.hasOwnProperty('buttons_valid')) {
        this.buttons_valid = initObj.buttons_valid
      }
      else {
        this.buttons_valid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeleopRawInput
    // Serialize message field [left_trigger]
    bufferOffset = _serializer.float32(obj.left_trigger, buffer, bufferOffset);
    // Serialize message field [right_trigger]
    bufferOffset = _serializer.float32(obj.right_trigger, buffer, bufferOffset);
    // Serialize message field [left_grip]
    bufferOffset = _serializer.float32(obj.left_grip, buffer, bufferOffset);
    // Serialize message field [right_grip]
    bufferOffset = _serializer.float32(obj.right_grip, buffer, bufferOffset);
    // Check that the constant length array field [left_stick] has the right length
    if (obj.left_stick.length !== 2) {
      throw new Error('Unable to serialize array field left_stick - length must be 2')
    }
    // Serialize message field [left_stick]
    bufferOffset = _arraySerializer.float32(obj.left_stick, buffer, bufferOffset, 2);
    // Check that the constant length array field [right_stick] has the right length
    if (obj.right_stick.length !== 2) {
      throw new Error('Unable to serialize array field right_stick - length must be 2')
    }
    // Serialize message field [right_stick]
    bufferOffset = _arraySerializer.float32(obj.right_stick, buffer, bufferOffset, 2);
    // Serialize message field [buttons]
    bufferOffset = _serializer.uint32(obj.buttons, buffer, bufferOffset);
    // Serialize message field [buttons_valid]
    bufferOffset = _serializer.uint32(obj.buttons_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeleopRawInput
    let len;
    let data = new TeleopRawInput(null);
    // Deserialize message field [left_trigger]
    data.left_trigger = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_trigger]
    data.right_trigger = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_grip]
    data.left_grip = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_grip]
    data.right_grip = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_stick]
    data.left_stick = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [right_stick]
    data.right_stick = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [buttons]
    data.buttons = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [buttons_valid]
    data.buttons_valid = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/TeleopRawInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '681b645c832574afd3efcab58e686b87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 操作者控制器的原始输入量。
    # 发送方不解释任何按键含义，组合键语义一律由接收方解释。
    
    # 模拟量，范围 0.0 ~ 1.0
    float32 left_trigger
    float32 right_trigger
    float32 left_grip
    float32 right_grip
    
    # 摇杆，[x, y]，范围 -1.0 ~ 1.0
    float32[2] left_stick
    float32[2] right_stick
    
    # 按键位掩码。预留高位，新增按键不需要改本消息。
    uint32 BTN_LEFT_X=1
    uint32 BTN_LEFT_Y=2
    uint32 BTN_RIGHT_A=4
    uint32 BTN_RIGHT_B=8
    uint32 BTN_LEFT_STICK=16         # 左摇杆按下
    uint32 BTN_RIGHT_STICK=32        # 右摇杆按下
    uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态
    uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态
    uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态
    uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态
    uint32 BTN_LEFT_THUMBREST=1024
    uint32 BTN_RIGHT_THUMBREST=2048
    uint32 buttons
    
    # 哪些按键位本帧有效。设备不提供的按键，对应位为 0。
    # 接收方不得把「设备未提供」当成「按键未按下」。
    uint32 buttons_valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeleopRawInput(null);
    if (msg.left_trigger !== undefined) {
      resolved.left_trigger = msg.left_trigger;
    }
    else {
      resolved.left_trigger = 0.0
    }

    if (msg.right_trigger !== undefined) {
      resolved.right_trigger = msg.right_trigger;
    }
    else {
      resolved.right_trigger = 0.0
    }

    if (msg.left_grip !== undefined) {
      resolved.left_grip = msg.left_grip;
    }
    else {
      resolved.left_grip = 0.0
    }

    if (msg.right_grip !== undefined) {
      resolved.right_grip = msg.right_grip;
    }
    else {
      resolved.right_grip = 0.0
    }

    if (msg.left_stick !== undefined) {
      resolved.left_stick = msg.left_stick;
    }
    else {
      resolved.left_stick = new Array(2).fill(0)
    }

    if (msg.right_stick !== undefined) {
      resolved.right_stick = msg.right_stick;
    }
    else {
      resolved.right_stick = new Array(2).fill(0)
    }

    if (msg.buttons !== undefined) {
      resolved.buttons = msg.buttons;
    }
    else {
      resolved.buttons = 0
    }

    if (msg.buttons_valid !== undefined) {
      resolved.buttons_valid = msg.buttons_valid;
    }
    else {
      resolved.buttons_valid = 0
    }

    return resolved;
    }
};

// Constants for message
TeleopRawInput.Constants = {
  BTN_LEFT_X: 1,
  BTN_LEFT_Y: 2,
  BTN_RIGHT_A: 4,
  BTN_RIGHT_B: 8,
  BTN_LEFT_STICK: 16,
  BTN_RIGHT_STICK: 32,
  BTN_LEFT_GRIP: 64,
  BTN_RIGHT_GRIP: 128,
  BTN_LEFT_TRIGGER: 256,
  BTN_RIGHT_TRIGGER: 512,
  BTN_LEFT_THUMBREST: 1024,
  BTN_RIGHT_THUMBREST: 2048,
}

module.exports = TeleopRawInput;
