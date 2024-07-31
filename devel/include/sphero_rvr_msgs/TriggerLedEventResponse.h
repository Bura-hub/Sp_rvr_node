// Generated by gencpp from file sphero_rvr_msgs/TriggerLedEventResponse.msg
// DO NOT EDIT!


#ifndef SPHERO_RVR_MSGS_MESSAGE_TRIGGERLEDEVENTRESPONSE_H
#define SPHERO_RVR_MSGS_MESSAGE_TRIGGERLEDEVENTRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sphero_rvr_msgs
{
template <class ContainerAllocator>
struct TriggerLedEventResponse_
{
  typedef TriggerLedEventResponse_<ContainerAllocator> Type;

  TriggerLedEventResponse_()
    : success(false)  {
    }
  TriggerLedEventResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TriggerLedEventResponse_

typedef ::sphero_rvr_msgs::TriggerLedEventResponse_<std::allocator<void> > TriggerLedEventResponse;

typedef boost::shared_ptr< ::sphero_rvr_msgs::TriggerLedEventResponse > TriggerLedEventResponsePtr;
typedef boost::shared_ptr< ::sphero_rvr_msgs::TriggerLedEventResponse const> TriggerLedEventResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator1> & lhs, const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator1> & lhs, const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sphero_rvr_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sphero_rvr_msgs/TriggerLedEventResponse";
  }

  static const char* value(const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TriggerLedEventResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sphero_rvr_msgs::TriggerLedEventResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPHERO_RVR_MSGS_MESSAGE_TRIGGERLEDEVENTRESPONSE_H
