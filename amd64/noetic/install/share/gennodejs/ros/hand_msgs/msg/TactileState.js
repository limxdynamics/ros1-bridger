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

class TactileState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.names = null;
      this.normal_force = null;
      this.tangential_force = null;
      this.direction_angle = null;
      this.approximate_value = null;
      this.tactile_state = null;
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
      if (initObj.hasOwnProperty('normal_force')) {
        this.normal_force = initObj.normal_force
      }
      else {
        this.normal_force = [];
      }
      if (initObj.hasOwnProperty('tangential_force')) {
        this.tangential_force = initObj.tangential_force
      }
      else {
        this.tangential_force = [];
      }
      if (initObj.hasOwnProperty('direction_angle')) {
        this.direction_angle = initObj.direction_angle
      }
      else {
        this.direction_angle = [];
      }
      if (initObj.hasOwnProperty('approximate_value')) {
        this.approximate_value = initObj.approximate_value
      }
      else {
        this.approximate_value = [];
      }
      if (initObj.hasOwnProperty('tactile_state')) {
        this.tactile_state = initObj.tactile_state
      }
      else {
        this.tactile_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TactileState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [normal_force]
    bufferOffset = _arraySerializer.float32(obj.normal_force, buffer, bufferOffset, null);
    // Serialize message field [tangential_force]
    bufferOffset = _arraySerializer.float32(obj.tangential_force, buffer, bufferOffset, null);
    // Serialize message field [direction_angle]
    bufferOffset = _arraySerializer.float32(obj.direction_angle, buffer, bufferOffset, null);
    // Serialize message field [approximate_value]
    bufferOffset = _arraySerializer.uint32(obj.approximate_value, buffer, bufferOffset, null);
    // Serialize message field [tactile_state]
    bufferOffset = _arraySerializer.uint16(obj.tactile_state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TactileState
    let len;
    let data = new TactileState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [normal_force]
    data.normal_force = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tangential_force]
    data.tangential_force = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [direction_angle]
    data.direction_angle = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [approximate_value]
    data.approximate_value = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [tactile_state]
    data.tactile_state = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.normal_force.length;
    length += 4 * object.tangential_force.length;
    length += 4 * object.direction_angle.length;
    length += 4 * object.approximate_value.length;
    length += 2 * object.tactile_state.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_msgs/TactileState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8b0b952da0486df66b2e68584d4b3c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    string[]  names
    float32[] normal_force             
    float32[] tangential_force         
    float32[] direction_angle          
    uint32[] approximate_value         
    uint16[] tactile_state             
    
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
    const resolved = new TactileState(null);
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

    if (msg.normal_force !== undefined) {
      resolved.normal_force = msg.normal_force;
    }
    else {
      resolved.normal_force = []
    }

    if (msg.tangential_force !== undefined) {
      resolved.tangential_force = msg.tangential_force;
    }
    else {
      resolved.tangential_force = []
    }

    if (msg.direction_angle !== undefined) {
      resolved.direction_angle = msg.direction_angle;
    }
    else {
      resolved.direction_angle = []
    }

    if (msg.approximate_value !== undefined) {
      resolved.approximate_value = msg.approximate_value;
    }
    else {
      resolved.approximate_value = []
    }

    if (msg.tactile_state !== undefined) {
      resolved.tactile_state = msg.tactile_state;
    }
    else {
      resolved.tactile_state = []
    }

    return resolved;
    }
};

module.exports = TactileState;
