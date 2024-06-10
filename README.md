# TortoiseBot ROS1 Docker

This repository contains Docker images and Docker Compose configuration files for managing the bringup of the TortoiseBot robot in a ROS1 environment. The goal is to simplify the setup and usage of the TortoiseBot simulation and real robot systems through containerization.

## Overview

The repository is structured to provide Docker images for different aspects of the TortoiseBot environment, including simulation, mapping, waypoints action server, and web application. Docker Compose is used to manage and run these containers efficiently.

## Docker Images

The following Docker images are created and used in this project:

- **tortoisebot-ros1-gazebo**: Contains everything necessary for starting the Gazebo simulation.
- **tortoisebot-ros1-slam**: Contains everything necessary for starting the mapping system.
- **tortoisebot-ros1-waypoints**: Contains everything necessary for starting the waypoints action server.
- **tortoisebot-ros1-webapp**: Contains everything necessary for starting the TortoiseBot web application.

## Prerequisites

Ensure you have Docker and Docker Compose installed on your system. You can follow the instructions below to install them if they are not already installed:

```sh
sudo apt-get update
sudo apt-get install docker.io docker-compose
sudo service docker start
sudo usermod -aG docker $USER
newgrp docker
```

## Getting Started

### Cloning the Repository

Clone this repository to your local machine:

```sh
git clone https://github.com/MiguelSolisSegura/tortoisebot_ros1_docker.git
cd tortoisebot_ros1_docker
```

### Building the Docker Images

Build the Docker images using the provided Dockerfiles:

```sh
docker-compose build
```

### Running the Containers

Start all the containers using Docker Compose:

```sh
docker-compose up
```

Verify that the expected containers are up and running:

```sh
docker ps
```

Expected Output:

```
IMAGE                         CREATED                STATUS                NAMES
tortoisebot-ros1-gazebo       About a minute ago     Up About a minute     tortoisebot-ros1-gazebo_1
tortoisebot-ros1-slam         About a minute ago     Up About a minute     tortoisebot-ros1-slam_1
tortoisebot-ros1-waypoints    About a minute ago     Up About a minute     tortoisebot-ros1-waypoints_1
tortoisebot-ros1-webapp       About a minute ago     Up About a minute     tortoisebot-ros1-webapp_1
```

### Testing the Web Application

Access the web application and ensure you can command the robot with it. Open your web browser and navigate to the appropriate address (e.g., `http://localhost:8080`).

## Stopping the Containers

To stop the running containers, use the following command:

```sh
docker-compose down
```

## Troubleshooting

If your simulation does not load properly the first time, relaunch it, and it should work correctly.

In some cases, the `gzserver` process might not die properly even after stopping the simulation, causing issues. Find and kill the process manually with the following commands:

```sh
ps faux | grep gz
kill -9 <process_id>
```
