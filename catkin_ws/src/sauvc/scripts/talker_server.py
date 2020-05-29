#!/usr/bin/env python

#Import required libraries 
from sauvc.srv import toggle_switch_form,toggle_switch_formResponse
import rospy
from std_msgs.msg import String
from std_msgs.msg import Bool

current_switch_state=True
	    
#Function to handle service calls
def handle_toggle_switch(req):
	global current_switch_state
	current_switch_state=req.data
	return toggle_switch_formResponse(req.data,"The updated state is")
	
#Function to innitialise and run the ROS publisher and server
def talker_server():
    global current_switch_state
    pub = rospy.Publisher('SwitchState', Bool, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    service = rospy.Service('toggle_switch', toggle_switch_form, handle_toggle_switch)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown(): 
        rospy.loginfo(current_switch_state)
        pub.publish(current_switch_state)
        rate.sleep()
    
#Run the file when called
if __name__ == '__main__':
    try:
        talker_server()
    except rospy.ROSInterruptException:
        pass
