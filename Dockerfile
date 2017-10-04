FROM cmu-mars/base

RUN sudo apt-get update

# This patches gazebo with the updated libraries that allow it to work inside a headless VM
RUN sudo cp -r gazebo_mods/usr/* /usr/

# This installs the X-Server dummy and configuration to make dummy X and OpenGL work
RUN sudo apt-get install xserver-xorg-video-dummy -y
RUN sudo ln -sf /dev/null /dev/raw1394

ADD . xorg.conf


