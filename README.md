# px4_docker



## Getting started

### Clone repository

```bash
git clone https://github.com/lupries/px4_docker.git
cd px4_docker && git submodule update --init --recursive
```

### Build Docker Images from Dockerfile

See [docker](./docker) folder for more details.

### Run Docker Container

```bash
./run_docker.sh
```

### Run PX4 SITL

```bash
cd ~/PX4_docker/extern/PX4
make distclean
make px4_sitl gz_x500
```

Takeoff
```bash
commander takeoff
```

### Next steps

Follow [PX4 ROS2 User Guide](https://docs.px4.io/main/en/ros/ros2_comm.html)
