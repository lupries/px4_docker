#!/bin/sh
HOST_DIR=$1
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
sudo touch $XAUTH
sudo xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -


docker run --privileged -it --rm \
    -v ${HOST_DIR}:/home/user/Firmware:rw \
    -v ${XSOCK}:${XSOCK}:rw \
    -v ${XAUTH}:${XAUTH}:rw \
    -v /dev:/dev:rw \
    -e XAUTHORITY=${XAUTH} \
    -e DISPLAY=${DISPLAY} \
    -e LOCAL_USER_ID="$(id -u)" \
    --net=host \
    --name=ros2_px4_dev \
    jammy_ros2_px4:latest \
    /bin/bash