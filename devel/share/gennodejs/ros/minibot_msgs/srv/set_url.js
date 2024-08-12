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

class set_urlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.url = null;
    }
    else {
      if (initObj.hasOwnProperty('url')) {
        this.url = initObj.url
      }
      else {
        this.url = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_urlRequest
    // Serialize message field [url]
    bufferOffset = _serializer.string(obj.url, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_urlRequest
    let len;
    let data = new set_urlRequest(null);
    // Deserialize message field [url]
    data.url = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.url);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'minibot_msgs/set_urlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b8fc5815211e556073b8281ccf07035';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string url
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_urlRequest(null);
    if (msg.url !== undefined) {
      resolved.url = msg.url;
    }
    else {
      resolved.url = ''
    }

    return resolved;
    }
};

class set_urlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_urlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_urlResponse
    let len;
    let data = new set_urlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'minibot_msgs/set_urlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_urlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_urlRequest,
  Response: set_urlResponse,
  md5sum() { return '5a074a836c82adf8b27a048ee31b3a82'; },
  datatype() { return 'minibot_msgs/set_url'; }
};
