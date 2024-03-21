# Docker

This folder contains custom Docker images and Dockerfiles for our development environments.

## Prerequisites

Before you begin, ensure that you have the following installed:

- Docker: [Install Docker Desktop on Ubuntu](https://docs.docker.com/desktop/install/ubuntu/)

## Getting Started

All Dockerfiles can be found in the subdirectories.

### Build Docker Images from Dockerfile

Simply run:
```bash
./build.sh
```

Manual build:
```bash
docker build -t <IMAGE-NAME>:<TAG> /path/to/Dockerfile
```
e.g.
```bash
docker build -t jammy_ros2_px4:latest jammy_ros2_px4/Dockerfile
```

## Folder Structure

- [jammy_ros2_px4](./jammy_ros2_px4) (Ubuntu 22.04 + ROS2 + Build Tools for PX4)
    - [jammy_ros2_px4_gz](.jammy_ros2_px4_gz) (Ubuntu 22.04 + ROS2 + Build Tools for PX4 + Gazebo Harmonic)
