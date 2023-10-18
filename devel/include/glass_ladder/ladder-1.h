// Generated by gencpp from file glass_ladder/ladder.msg
// DO NOT EDIT!


#ifndef GLASS_LADDER_MESSAGE_LADDER_H
#define GLASS_LADDER_MESSAGE_LADDER_H

#include <ros/service_traits.h>


#include <glass_ladder/ladderRequest.h>
#include <glass_ladder/ladderResponse.h>


namespace glass_ladder
{

struct ladder
{

typedef ladderRequest Request;
typedef ladderResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ladder
} // namespace glass_ladder


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::glass_ladder::ladder > {
  static const char* value()
  {
    return "d762345fb551f3386e8ace5b623f571a";
  }

  static const char* value(const ::glass_ladder::ladder&) { return value(); }
};

template<>
struct DataType< ::glass_ladder::ladder > {
  static const char* value()
  {
    return "glass_ladder/ladder";
  }

  static const char* value(const ::glass_ladder::ladder&) { return value(); }
};


// service_traits::MD5Sum< ::glass_ladder::ladderRequest> should match
// service_traits::MD5Sum< ::glass_ladder::ladder >
template<>
struct MD5Sum< ::glass_ladder::ladderRequest>
{
  static const char* value()
  {
    return MD5Sum< ::glass_ladder::ladder >::value();
  }
  static const char* value(const ::glass_ladder::ladderRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::glass_ladder::ladderRequest> should match
// service_traits::DataType< ::glass_ladder::ladder >
template<>
struct DataType< ::glass_ladder::ladderRequest>
{
  static const char* value()
  {
    return DataType< ::glass_ladder::ladder >::value();
  }
  static const char* value(const ::glass_ladder::ladderRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::glass_ladder::ladderResponse> should match
// service_traits::MD5Sum< ::glass_ladder::ladder >
template<>
struct MD5Sum< ::glass_ladder::ladderResponse>
{
  static const char* value()
  {
    return MD5Sum< ::glass_ladder::ladder >::value();
  }
  static const char* value(const ::glass_ladder::ladderResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::glass_ladder::ladderResponse> should match
// service_traits::DataType< ::glass_ladder::ladder >
template<>
struct DataType< ::glass_ladder::ladderResponse>
{
  static const char* value()
  {
    return DataType< ::glass_ladder::ladder >::value();
  }
  static const char* value(const ::glass_ladder::ladderResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GLASS_LADDER_MESSAGE_LADDER_H
