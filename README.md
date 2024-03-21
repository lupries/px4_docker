# px4_docker



## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

### Build Docker Images from Dockerfile

See [docker](./docker) folder for more details.

### Run Docker Container

```bash
./run.sh
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