// Generated by gencpp from file minibot_msgs/set_urlResponse.msg
// DO NOT EDIT!


#ifndef MINIBOT_MSGS_MESSAGE_SET_URLRESPONSE_H
#define MINIBOT_MSGS_MESSAGE_SET_URLRESPONSE_H


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
struct set_urlResponse_
{
  typedef set_urlResponse_<ContainerAllocator> Type;

  set_urlResponse_()
    : success(false)  {
    }
  set_urlResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::minibot_msgs::set_urlResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::minibot_msgs::set_urlResponse_<ContainerAllocator> const> ConstPtr;

}; // struct set_urlResponse_

typedef ::minibot_msgs::set_urlResponse_<std::allocator<void> > set_urlResponse;

typedef boost::shared_ptr< ::minibot_msgs::set_urlResponse > set_urlResponsePtr;
typedef boost::shared_ptr< ::minibot_msgs::set_urlResponse const> set_urlResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::minibot_msgs::set_urlResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::minibot_msgs::set_urlResponse_<ContainerAllocator1> & lhs, const ::minibot_msgs::set_urlResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::minibot_msgs::set_urlResponse_<ContainerAllocator1> & lhs, const ::minibot_msgs::set_urlResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace minibot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::minibot_msgs::set_urlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::minibot_msgs::set_urlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::minibot_msgs::set_urlResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::minibot_msgs::set_urlResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "minibot_msgs/set_urlResponse";
  }

  static const char* value(const ::minibot_msgs::set_urlResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::minibot_msgs::set_urlResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_urlResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::minibot_msgs::set_urlResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::minibot_msgs::set_urlResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MINIBOT_MSGS_MESSAGE_SET_URLRESPONSE_H
