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

class BatteryStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryStateRequest
    let len;
    let data = new BatteryStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sphero_rvr_msgs/BatteryStateRequest';
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
    const resolved = new BatteryStateRequest(null);
    return resolved;
    }
};

class BatteryStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_percentage = null;
      this.voltage_state = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_percentage')) {
        this.battery_percentage = initObj.battery_percentage
      }
      else {
        this.battery_percentage = 0;
      }
      if (initObj.hasOwnProperty('voltage_state')) {
        this.voltage_state = initObj.voltage_state
      }
      else {
        this.voltage_state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryStateResponse
    // Serialize message field [battery_percentage]
    bufferOffset = _serializer.int8(obj.battery_percentage, buffer, bufferOffset);
    // Serialize message field [voltage_state]
    bufferOffset = _serializer.string(obj.voltage_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryStateResponse
    let len;
    let data = new BatteryStateResponse(null);
    // Deserialize message field [battery_percentage]
    data.battery_percentage = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [voltage_state]
    data.voltage_state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.voltage_state);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sphero_rvr_msgs/BatteryStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'befe44135dbb4e3ba48bf2536ab69b80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 battery_percentage
    # available states are [unknown, ok, low, critical]
    string voltage_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryStateResponse(null);
    if (msg.battery_percentage !== undefined) {
      resolved.battery_percentage = msg.battery_percentage;
    }
    else {
      resolved.battery_percentage = 0
    }

    if (msg.voltage_state !== undefined) {
      resolved.voltage_state = msg.voltage_state;
    }
    else {
      resolved.voltage_state = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: BatteryStateRequest,
  Response: BatteryStateResponse,
  md5sum() { return 'befe44135dbb4e3ba48bf2536ab69b80'; },
  datatype() { return 'sphero_rvr_msgs/BatteryState'; }
};
