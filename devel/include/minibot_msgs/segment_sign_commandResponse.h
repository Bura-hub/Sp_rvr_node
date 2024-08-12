// Generated by gencpp from file minibot_msgs/segment_sign_commandResponse.msg
// DO NOT EDIT!


#ifndef MINIBOT_MSGS_MESSAGE_SEGMENT_SIGN_COMMANDRESPONSE_H
#define MINIBOT_MSGS_MESSAGE_SEGMENT_SIGN_COMMANDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace minibot_msgs
{
template <class ContainerAllocator>
struct segment_sign_commandResponse_
{
  typedef segment_sign_commandResponse_<ContainerAllocator> Type;

  segment_sign_commandResponse_()
    {
    }
  segment_sign_commandResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct segment_sign_commandResponse_

typedef ::minibot_msgs::segment_sign_commandResponse_<std::allocator<void> > segment_sign_commandResponse;

typedef boost::shared_ptr< ::minibot_msgs::segment_sign_commandResponse > segment_sign_commandResponsePtr;
typedef boost::shared_ptr< ::minibot_msgs::segment_sign_commandResponse const> segment_sign_commandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace minibot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "minibot_msgs/segment_sign_commandResponse";
  }

  static const char* value(const ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct segment_sign_commandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::minibot_msgs::segment_sign_commandResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MINIBOT_MSGS_MESSAGE_SEGMENT_SIGN_COMMANDRESPONSE_H
