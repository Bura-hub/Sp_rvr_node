// Auto-generated. Do not edit!

// (in-package sphero_rvr_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLedsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rgb_color = null;
    }
    else {
      if (initObj.hasOwnProperty('rgb_color')) {
        this.rgb_color = initObj.rgb_color
      }
      else {
        this.rgb_color = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLedsRequest
    // Serialize message field [rgb_color]
    bufferOffset = _arraySerializer.int32(obj.rgb_color, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLedsRequest
    let len;
    let data = new SetLedsRequest(null);
    // Deserialize message field [rgb_color]
    data.rgb_color = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.rgb_color.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sphero_rvr_msgs/SetLedsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a09c60cc08197f172120c3cd927913a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] rgb_color
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLedsRequest(null);
    if (msg.rgb_color !== undefined) {
      resolved.rgb_color = msg.rgb_color;
    }
    else {
      resolved.rgb_color = []
    }

    return resolved;
    }
};

class SetLedsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLedsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLedsResponse
    let len;
    let data = new SetLedsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sphero_rvr_msgs/SetLedsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLedsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetLedsRequest,
  Response: SetLedsResponse,
  md5sum() { return 'a09c60cc08197f172120c3cd927913a3'; },
  datatype() { return 'sphero_rvr_msgs/SetLeds'; }
};
