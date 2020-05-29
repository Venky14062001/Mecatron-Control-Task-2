

/*
   2  * rosserial Subscriber Example
   3  * Blinks an LED for the given amount of time
   4  */ 
#include <ros.h>
#include <std_msgs/Bool.h>
#include <sauvc/toggle_switch_form.h>
using sauvc::toggle_switch_form;

//Initialise subscriber callback function
void messageCb(const std_msgs::Bool& toggle_msg);

//Create instance of ROS node
ros::NodeHandle nh;

//Subscriber callback function  
void messageCb( const std_msgs::Bool& toggle_msg){

     if(toggle_msg.data){
       digitalWrite(9, HIGH);   // Turn on the led
     }

     else{
       digitalWrite(9, LOW);
     }
     
}

//Create subscriber and client instance
ros::Subscriber<std_msgs::Bool> sub("SwitchState", &messageCb );
ros::ServiceClient<toggle_switch_form::Request, toggle_switch_form::Response> client("toggle_switch");


void setup()
   {
    pinMode(9, OUTPUT);
    nh.initNode();
    nh.serviceClient(client);
    nh.subscribe(sub);
    while(!nh.connected()) nh.spinOnce();
    nh.loginfo("Startup Complete");
   }

//Start time
unsigned long start_time=millis();

//Previous response to print status when it changes
bool prev_response=false;

void loop()
   {
     
     toggle_switch_form::Request req;
     toggle_switch_form::Response res;

     unsigned long current_time=millis();
     unsigned long elapsed_time=current_time-start_time;
     
     if (elapsed_time>3000 && elapsed_time<6000){
      req.data=false;
      client.call(req, res);
      if (prev_response!=req.data){
      nh.loginfo("Toggling Switch Off");
     }
     
     }
     else{
      req.data=true;
      client.call(req, res);
      if (prev_response!=req.data){
      nh.loginfo("Toggling Switch On");
     }
     }
     
     nh.spinOnce();
     delay(1);

     bool prev_response=req.data;
   }









   
