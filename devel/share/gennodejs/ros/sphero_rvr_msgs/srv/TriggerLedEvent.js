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

class TriggerLedEventRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop_current_event = null;
      this.event_id = null;
    }
    else {
      if (initObj.hasOwnProperty('stop_current_event')) {
        this.stop_current_event = initObj.stop_current_event
      }
      else {
        this.stop_current_event = false;
      }
      if (initObj.hasOwnProperty('event_id')) {
        this.event_id = initObj.event_id
      }
      else {
        this.event_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TriggerLedEventRequest
    // Serialize message field [stop_current_event]
    bufferOffset = _serializer.bool(obj.stop_current_event, buffer, bufferOffset);
    // Serialize message field [event_id]
    bufferOffset = _serializer.int32(obj.event_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TriggerLedEventRequest
    let len;
    let data = new TriggerLedEventRequest(null);
    // Deserialize message field [stop_current_event]
    data.stop_current_event = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [event_id]
    data.event_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sphero_rvr_msgs/TriggerLedEventRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '147cb5dbc38ea793369d35a5158ec7ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set to true to stop all current running events
    # note that this is only important for asynchronous events
    bool stop_current_event
    
    # this event is triggered when stop_current_event is not true
    int32 event_id
    
    # synchronous events
    int32 STARTUP = 1
    int32 EMERGENCY_STOP = 2
    int32 START_DRIVING = 3
    int32 ERROR = 4
    int32 VISION_STARTUP = 5
    
    # asynchronous events
    int32 DOWNLOAD_MODEL = 10
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriggerLedEventRequest(null);
    if (msg.stop_current_event !== undefined) {
      resolved.stop_current_event = msg.stop_current_event;
    }
    else {
      resolved.stop_current_event = false
    }

    if (msg.event_id !== undefined) {
      resolved.event_id = msg.event_id;
    }
    else {
      resolved.event_id = 0
    }

    return resolved;
    }
};

// Constants for message
TriggerLedEventRequest.Constants = {
  STARTUP: 1,
  EMERGENCY_STOP: 2,
  START_DRIVING: 3,
  ERROR: 4,
  VISION_STARTUP: 5,
  DOWNLOAD_MODEL: 10,
}

class TriggerLedEventResponse {
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
    // Serializes a message object of type TriggerLedEventResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TriggerLedEventResponse
    let len;
    let data = new TriggerLedEventResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sphero_rvr_msgs/TriggerLedEventResponse';
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
    const resolved = new TriggerLedEventResponse(null);
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
  Request: TriggerLedEventRequest,
  Response: TriggerLedEventResponse,
  md5sum() { return '519781bfa3d7486c726f766b0ca6f430'; },
  datatype() { return 'sphero_rvr_msgs/TriggerLedEvent'; }
};
