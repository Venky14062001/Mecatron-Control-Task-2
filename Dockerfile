FROM ros:latest

RUN . /opt/ros/melodic/setup.sh

RUN mkdir -p /home/catkin_ws_docker/src

RUN . /opt/ros/melodic/setup.sh && cd /home/catkin_ws_docker && catkin_make && . devel/setup.sh

RUN . /opt/ros/melodic/setup.sh && cd /home/catkin_ws_docker/src && catkin_create_pkg sauvc std_msgs rospy roscpp && cd /home/catkin_ws_docker && catkin_make && . devel/setup.sh

WORKDIR /home/catkin_ws_docker/src/sauvc

COPY catkin_ws/src/sauvc/CMakeLists.txt CMakeLists.txt

COPY catkin_ws/src/sauvc/package.xml package.xml

RUN mkdir srv

COPY catkin_ws/src/sauvc/srv/toggle_switch_form.srv srv/toggle_switch_form.srv

RUN mkdir scripts

COPY catkin_ws/src/sauvc/scripts/toggle_switch_server.py scripts/toggle_switch_server.py

COPY catkin_ws/src/sauvc/scripts/toggle_switch_client.py scripts/toggle_switch_client.py

WORKDIR /

RUN . /opt/ros/melodic/setup.sh && cd /home/catkin_ws_docker && catkin_make && . devel/setup.sh

CMD ["bash"]