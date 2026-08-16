// Auto-generated. Do not edit!

// (in-package teleop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TeleopTarget {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.pose = null;
      this.validity = null;
      this.source_stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('validity')) {
        this.validity = initObj.validity
      }
      else {
        this.validity = 0;
      }
      if (initObj.hasOwnProperty('source_stamp')) {
        this.source_stamp = initObj.source_stamp
      }
      else {
        this.source_stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeleopTarget
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [validity]
    bufferOffset = _serializer.uint8(obj.validity, buffer, bufferOffset);
    // Serialize message field [source_stamp]
    bufferOffset = _serializer.time(obj.source_stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeleopTarget
    let len;
    let data = new TeleopTarget(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [validity]
    data.validity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [source_stamp]
    data.source_stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/TeleopTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07cc223d3f4368b67d350d5620e9bced';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 遥操作中的单个跟踪目标（末端、头、躯干、足等）。
    # 作为 TeleopIntentFrame.targets 的元素使用。
    
    # 目标名。约定值：left_hand / right_hand / head / torso / base /
    # left_foot / right_foot / left_wrist / right_wrist。
    # 新增跟踪目标只需约定新名字，不需要改本消息。
    string name
    
    # 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。
    geometry_msgs/Pose pose
    
    # 数据可信度。接收方据此决定跟随、降级还是忽略。
    uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略
    uint8 VALIDITY_VALID=1         # 新鲜可用
    uint8 VALIDITY_STALE=2         # 有数据但已超期
    uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测
    uint8 validity
    
    # 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，
    # 接收方据此判断单个目标的新鲜度。
    time source_stamp
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeleopTarget(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.validity !== undefined) {
      resolved.validity = msg.validity;
    }
    else {
      resolved.validity = 0
    }

    if (msg.source_stamp !== undefined) {
      resolved.source_stamp = msg.source_stamp;
    }
    else {
      resolved.source_stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
TeleopTarget.Constants = {
  VALIDITY_INVALID: 0,
  VALIDITY_VALID: 1,
  VALIDITY_STALE: 2,
  VALIDITY_EXTRAPOLATED: 3,
}

module.exports = TeleopTarget;
