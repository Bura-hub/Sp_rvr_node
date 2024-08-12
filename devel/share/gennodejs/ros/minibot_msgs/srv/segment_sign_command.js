// Auto-generated. Do not edit!

// (in-package minibot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class segment_sign_commandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type segment_sign_commandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type segment_sign_commandRequest
    let len;
    let data = new segment_sign_commandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'minibot_msgs/segment_sign_commandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67dfdadbbb6dd9ac14fa405e04acf5b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 PERSISTENT_SAVE=0
    int8 TOGGLE_PATCH_VISUALIZATION=1
    int8 LOAD_DEFAULT=2
    
    int8 command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new segment_sign_commandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

// Constants for message
segment_sign_commandRequest.Constants = {
  PERSISTENT_SAVE: 0,
  TOGGLE_PATCH_VISUALIZATION: 1,
  LOAD_DEFAULT: 2,
}

class segment_sign_commandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type segment_sign_commandResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type segment_sign_commandResponse
    let len;
    let data = new segment_sign_commandResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'minibot_msgs/segment_sign_commandResponse';
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
    const resolved = new segment_sign_commandResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: segment_sign_commandRequest,
  Response: segment_sign_commandResponse,
  md5sum() { return '67dfdadbbb6dd9ac14fa405e04acf5b7'; },
  datatype() { return 'minibot_msgs/segment_sign_command'; }
};
