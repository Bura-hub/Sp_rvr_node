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

class AddVisibleObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddVisibleObjectsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddVisibleObjectsRequest
    let len;
    let data = new AddVisibleObjectsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'minibot_msgs/AddVisibleObjectsRequest';
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
    const resolved = new AddVisibleObjectsRequest(null);
    return resolved;
    }
};

class AddVisibleObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('object_ids')) {
        this.object_ids = initObj.object_ids
      }
      else {
        this.object_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddVisibleObjectsResponse
    // Serialize message field [object_ids]
    bufferOffset = _arraySerializer.string(obj.object_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddVisibleObjectsResponse
    let len;
    let data = new AddVisibleObjectsResponse(null);
    // Deserialize message field [object_ids]
    data.object_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.object_ids.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'minibot_msgs/AddVisibleObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e528cc6018453c0c96b68b36e0e306c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] object_ids
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddVisibleObjectsResponse(null);
    if (msg.object_ids !== undefined) {
      resolved.object_ids = msg.object_ids;
    }
    else {
      resolved.object_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AddVisibleObjectsRequest,
  Response: AddVisibleObjectsResponse,
  md5sum() { return 'e528cc6018453c0c96b68b36e0e306c9'; },
  datatype() { return 'minibot_msgs/AddVisibleObjects'; }
};
