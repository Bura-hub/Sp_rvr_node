// Auto-generated. Do not edit!

// (in-package sphero_rvr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Color {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rgb_color = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('rgb_color')) {
        this.rgb_color = initObj.rgb_color
      }
      else {
        this.rgb_color = [];
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Color
    // Serialize message field [rgb_color]
    bufferOffset = _arraySerializer.int32(obj.rgb_color, buffer, bufferOffset, null);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Color
    let len;
    let data = new Color(null);
    // Deserialize message field [rgb_color]
    data.rgb_color = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.rgb_color.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sphero_rvr_msgs/Color';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f95609b7dcba692288894ceebea986be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] rgb_color
    float32 confidence       # the certainty of the measured value. 0 if unknown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Color(null);
    if (msg.rgb_color !== undefined) {
      resolved.rgb_color = msg.rgb_color;
    }
    else {
      resolved.rgb_color = []
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = Color;
