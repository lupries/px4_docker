#!/bin/bash

# Build jammy_ros2_px4 image
cd jammy_ros2_px4
docker build -t jammy_ros2_px4:latest -f Dockerfile .

# Build jammy_ros2_px4_gz image
cd ../jammy_ros2_px4_gz
docker build -t jammy_ros2_px4_gz:latest -f Dockerfile .