// Generated by gencpp from file sauvc/toggle_switch_form.msg
// DO NOT EDIT!


#ifndef SAUVC_MESSAGE_TOGGLE_SWITCH_FORM_H
#define SAUVC_MESSAGE_TOGGLE_SWITCH_FORM_H

#include <ros/service_traits.h>


#include <sauvc/toggle_switch_formRequest.h>
#include <sauvc/toggle_switch_formResponse.h>


namespace sauvc
{

struct toggle_switch_form
{

typedef toggle_switch_formRequest Request;
typedef toggle_switch_formResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct toggle_switch_form
} // namespace sauvc


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sauvc::toggle_switch_form > {
  static const char* value()
  {
    return "caaeaa00099342c954da62e3798f80e9";
  }

  static const char* value(const ::sauvc::toggle_switch_form&) { return value(); }
};

template<>
struct DataType< ::sauvc::toggle_switch_form > {
  static const char* value()
  {
    return "sauvc/toggle_switch_form";
  }

  static const char* value(const ::sauvc::toggle_switch_form&) { return value(); }
};


// service_traits::MD5Sum< ::sauvc::toggle_switch_formRequest> should match
// service_traits::MD5Sum< ::sauvc::toggle_switch_form >
template<>
struct MD5Sum< ::sauvc::toggle_switch_formRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sauvc::toggle_switch_form >::value();
  }
  static const char* value(const ::sauvc::toggle_switch_formRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sauvc::toggle_switch_formRequest> should match
// service_traits::DataType< ::sauvc::toggle_switch_form >
template<>
struct DataType< ::sauvc::toggle_switch_formRequest>
{
  static const char* value()
  {
    return DataType< ::sauvc::toggle_switch_form >::value();
  }
  static const char* value(const ::sauvc::toggle_switch_formRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sauvc::toggle_switch_formResponse> should match
// service_traits::MD5Sum< ::sauvc::toggle_switch_form >
template<>
struct MD5Sum< ::sauvc::toggle_switch_formResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sauvc::toggle_switch_form >::value();
  }
  static const char* value(const ::sauvc::toggle_switch_formResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sauvc::toggle_switch_formResponse> should match
// service_traits::DataType< ::sauvc::toggle_switch_form >
template<>
struct DataType< ::sauvc::toggle_switch_formResponse>
{
  static const char* value()
  {
    return DataType< ::sauvc::toggle_switch_form >::value();
  }
  static const char* value(const ::sauvc::toggle_switch_formResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SAUVC_MESSAGE_TOGGLE_SWITCH_FORM_H
