#!/bin/sh
HOST_DIR=$(pwd)
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
sudo touch $XAUTH
sudo xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -


docker run --privileged -it --rm \
    -v ${HOST_DIR}:/home/user/PX4_docker:rw \
    -v ${XSOCK}:${XSOCK}:rw \
    -v ${XAUTH}:${XAUTH}:rw \
    -v /dev:/dev:rw \
    -e XAUTHORITY=${XAUTH} \
    -e DISPLAY=${DISPLAY} \
    -e LOCAL_USER_ID="$(id -u)" \
    --net=host \
    --name=ros2_px4_sim \
    jammy_ros2_px4_gz:latest \
    /bin/bash