// Auto-generated. Do not edit!

// (in-package teleop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TeleopTarget = require('./TeleopTarget.js');
let TeleopRawInput = require('./TeleopRawInput.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');
let controller_msgs = _finder('controller_msgs');

//-----------------------------------------------------------

class TeleopIntentFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.schema_version = null;
      this.source = null;
      this.source_mask = null;
      this.reference_frame = null;
      this.reference_pose = null;
      this.targets = null;
      this.raw_valid = null;
      this.raw = null;
      this.head_control_selected = null;
      this.retarget_valid = null;
      this.retarget_joints = null;
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
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('source_mask')) {
        this.source_mask = initObj.source_mask
      }
      else {
        this.source_mask = 0;
      }
      if (initObj.hasOwnProperty('reference_frame')) {
        this.reference_frame = initObj.reference_frame
      }
      else {
        this.reference_frame = '';
      }
      if (initObj.hasOwnProperty('reference_pose')) {
        this.reference_pose = initObj.reference_pose
      }
      else {
        this.reference_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('targets')) {
        this.targets = initObj.targets
      }
      else {
        this.targets = [];
      }
      if (initObj.hasOwnProperty('raw_valid')) {
        this.raw_valid = initObj.raw_valid
      }
      else {
        this.raw_valid = false;
      }
      if (initObj.hasOwnProperty('raw')) {
        this.raw = initObj.raw
      }
      else {
        this.raw = new TeleopRawInput();
      }
      if (initObj.hasOwnProperty('head_control_selected')) {
        this.head_control_selected = initObj.head_control_selected
      }
      else {
        this.head_control_selected = false;
      }
      if (initObj.hasOwnProperty('retarget_valid')) {
        this.retarget_valid = initObj.retarget_valid
      }
      else {
        this.retarget_valid = false;
      }
      if (initObj.hasOwnProperty('retarget_joints')) {
        this.retarget_joints = initObj.retarget_joints
      }
      else {
        this.retarget_joints = new controller_msgs.msg.JointCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeleopIntentFrame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [schema_version]
    bufferOffset = _serializer.uint16(obj.schema_version, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.uint8(obj.source, buffer, bufferOffset);
    // Serialize message field [source_mask]
    bufferOffset = _serializer.uint32(obj.source_mask, buffer, bufferOffset);
    // Serialize message field [reference_frame]
    bufferOffset = _serializer.string(obj.reference_frame, buffer, bufferOffset);
    // Serialize message field [reference_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.reference_pose, buffer, bufferOffset);
    // Serialize message field [targets]
    // Serialize the length for message field [targets]
    bufferOffset = _serializer.uint32(obj.targets.length, buffer, bufferOffset);
    obj.targets.forEach((val) => {
      bufferOffset = TeleopTarget.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [raw_valid]
    bufferOffset = _serializer.bool(obj.raw_valid, buffer, bufferOffset);
    // Serialize message field [raw]
    bufferOffset = TeleopRawInput.serialize(obj.raw, buffer, bufferOffset);
    // Serialize message field [head_control_selected]
    bufferOffset = _serializer.bool(obj.head_control_selected, buffer, bufferOffset);
    // Serialize message field [retarget_valid]
    bufferOffset = _serializer.bool(obj.retarget_valid, buffer, bufferOffset);
    // Serialize message field [retarget_joints]
    bufferOffset = controller_msgs.msg.JointCmd.serialize(obj.retarget_joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeleopIntentFrame
    let len;
    let data = new TeleopIntentFrame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [schema_version]
    data.schema_version = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [source_mask]
    data.source_mask = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reference_frame]
    data.reference_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reference_pose]
    data.reference_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [targets]
    // Deserialize array length for message field [targets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.targets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.targets[i] = TeleopTarget.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [raw_valid]
    data.raw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [raw]
    data.raw = TeleopRawInput.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_control_selected]
    data.head_control_selected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [retarget_valid]
    data.retarget_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [retarget_joints]
    data.retarget_joints = controller_msgs.msg.JointCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.reference_frame);
    object.targets.forEach((val) => {
      length += TeleopTarget.getMessageSize(val);
    });
    length += controller_msgs.msg.JointCmd.getMessageSize(object.retarget_joints);
    return length + 114;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/TeleopIntentFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3147143ffcdf2121d4c65dce9c5f350';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 遥操作意图帧。输入汇聚层每组装出一个操作者帧，发布至多一条本消息。
    # 承载「操作者想做什么」，不承载任何控制决策。
    
    # stamp 为帧组装时刻；seq 为帧序号，供接收方检测丢帧。
    std_msgs/Header header
    
    uint16 SCHEMA_VERSION=1
    uint16 schema_version
    
    # 本帧的主输入源
    uint8 SOURCE_UNKNOWN=0
    uint8 SOURCE_VR=1
    uint8 SOURCE_MOCAP=2
    uint8 SOURCE_GLOVE=3
    uint8 SOURCE_FUSED=4
    uint8 source
    
    # 参与本帧合成的全部输入源，按 1 << SOURCE_* 置位
    uint32 source_mask
    
    # targets 中位姿所在参考系的名称
    string reference_frame
    
    # 当参考系本身是运行时位姿（例如随头部偏航的参考系）时给出其位姿。
    # 参考系为静态具名坐标系时填单位位姿。
    geometry_msgs/Pose reference_pose
    
    # 本帧的跟踪目标。目标缺席即表示该肢体本帧无输入。
    teleop_msgs/TeleopTarget[] targets
    
    # 原始输入是否有效。纯动捕帧没有手柄输入时为 false。
    bool raw_valid
    teleop_msgs/TeleopRawInput raw
    
    # 操作者侧选项：是否选择了「控头」。
    # 来源可能是 VR 应用内的选择，也可能是兼容服务设置，不属于设备原始输入。
    bool head_control_selected
    
    # 全身重定向结果是否有效。是否真正下发由接收方决定。
    bool retarget_valid
    controller_msgs/JointCmd retarget_joints
    
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
    
    ================================================================================
    MSG: teleop_msgs/TeleopTarget
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
    MSG: teleop_msgs/TeleopRawInput
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
    
    ================================================================================
    MSG: controller_msgs/JointCmd
    std_msgs/Header header
    
    string[]  names
    float32[] q
    float32[] v
    float32[] tau
    float32[] kp
    float32[] kd
    uint8[] mode
    uint32 na
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeleopIntentFrame(null);
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

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.source_mask !== undefined) {
      resolved.source_mask = msg.source_mask;
    }
    else {
      resolved.source_mask = 0
    }

    if (msg.reference_frame !== undefined) {
      resolved.reference_frame = msg.reference_frame;
    }
    else {
      resolved.reference_frame = ''
    }

    if (msg.reference_pose !== undefined) {
      resolved.reference_pose = geometry_msgs.msg.Pose.Resolve(msg.reference_pose)
    }
    else {
      resolved.reference_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.targets !== undefined) {
      resolved.targets = new Array(msg.targets.length);
      for (let i = 0; i < resolved.targets.length; ++i) {
        resolved.targets[i] = TeleopTarget.Resolve(msg.targets[i]);
      }
    }
    else {
      resolved.targets = []
    }

    if (msg.raw_valid !== undefined) {
      resolved.raw_valid = msg.raw_valid;
    }
    else {
      resolved.raw_valid = false
    }

    if (msg.raw !== undefined) {
      resolved.raw = TeleopRawInput.Resolve(msg.raw)
    }
    else {
      resolved.raw = new TeleopRawInput()
    }

    if (msg.head_control_selected !== undefined) {
      resolved.head_control_selected = msg.head_control_selected;
    }
    else {
      resolved.head_control_selected = false
    }

    if (msg.retarget_valid !== undefined) {
      resolved.retarget_valid = msg.retarget_valid;
    }
    else {
      resolved.retarget_valid = false
    }

    if (msg.retarget_joints !== undefined) {
      resolved.retarget_joints = controller_msgs.msg.JointCmd.Resolve(msg.retarget_joints)
    }
    else {
      resolved.retarget_joints = new controller_msgs.msg.JointCmd()
    }

    return resolved;
    }
};

// Constants for message
TeleopIntentFrame.Constants = {
  SCHEMA_VERSION: 1,
  SOURCE_UNKNOWN: 0,
  SOURCE_VR: 1,
  SOURCE_MOCAP: 2,
  SOURCE_GLOVE: 3,
  SOURCE_FUSED: 4,
}

module.exports = TeleopIntentFrame;
