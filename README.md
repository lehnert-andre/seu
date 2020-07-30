# School - SEU

## Getting started

Build `docker build -t seu -f  .` and run `docker run -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=school -v /dev/shm:/dev/shm seu:latest`

## Setup 

Baseimage: https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc

```
docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal

docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt
```

Open: http://127.0.0.1:6080/