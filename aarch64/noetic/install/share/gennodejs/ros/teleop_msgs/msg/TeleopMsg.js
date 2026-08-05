// Auto-generated. Do not edit!

// (in-package teleop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyPoint = require('./KeyPoint.js');
let controller_msgs = _finder('controller_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TeleopMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.world = null;
      this.anchors = null;
      this.joint_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('world')) {
        this.world = initObj.world
      }
      else {
        this.world = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('anchors')) {
        this.anchors = initObj.anchors
      }
      else {
        this.anchors = [];
      }
      if (initObj.hasOwnProperty('joint_cmd')) {
        this.joint_cmd = initObj.joint_cmd
      }
      else {
        this.joint_cmd = new controller_msgs.msg.JointCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeleopMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [world]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.world, buffer, bufferOffset);
    // Serialize message field [anchors]
    // Serialize the length for message field [anchors]
    bufferOffset = _serializer.uint32(obj.anchors.length, buffer, bufferOffset);
    obj.anchors.forEach((val) => {
      bufferOffset = KeyPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [joint_cmd]
    bufferOffset = controller_msgs.msg.JointCmd.serialize(obj.joint_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeleopMsg
    let len;
    let data = new TeleopMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [world]
    data.world = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchors]
    // Deserialize array length for message field [anchors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.anchors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.anchors[i] = KeyPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [joint_cmd]
    data.joint_cmd = controller_msgs.msg.JointCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.anchors.forEach((val) => {
      length += KeyPoint.getMessageSize(val);
    });
    length += controller_msgs.msg.JointCmd.getMessageSize(object.joint_cmd);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teleop_msgs/TeleopMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd53df3708d33197543f8f10dd6767226';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    geometry_msgs/Pose world
    
    teleop_msgs/KeyPoint[] anchors
    
    controller_msgs/JointCmd joint_cmd
    
    
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
    MSG: teleop_msgs/KeyPoint
    string name
    geometry_msgs/Pose pose
    
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
    const resolved = new TeleopMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.world !== undefined) {
      resolved.world = geometry_msgs.msg.Pose.Resolve(msg.world)
    }
    else {
      resolved.world = new geometry_msgs.msg.Pose()
    }

    if (msg.anchors !== undefined) {
      resolved.anchors = new Array(msg.anchors.length);
      for (let i = 0; i < resolved.anchors.length; ++i) {
        resolved.anchors[i] = KeyPoint.Resolve(msg.anchors[i]);
      }
    }
    else {
      resolved.anchors = []
    }

    if (msg.joint_cmd !== undefined) {
      resolved.joint_cmd = controller_msgs.msg.JointCmd.Resolve(msg.joint_cmd)
    }
    else {
      resolved.joint_cmd = new controller_msgs.msg.JointCmd()
    }

    return resolved;
    }
};

module.exports = TeleopMsg;
