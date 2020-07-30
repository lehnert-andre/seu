# School - SEU

## Getting started



## Setup 

### Ubuntu

https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc

```
docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal

docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt
```

Open: http://127.0.0.1:6080/

### Ubuntu Dockerfile erstellen

```
docker build -t seu-with-eclipse -f Complete_Dockerfile .


```

### Dockerfile erstellen

```
docker run --rm -ti -p15901:5901 fedora:32 bash

dnf -y install tigervnc-server --quiet && mkdir ~/.vnc &&echo "school" | vncpasswd -f >> ~/.vnc/passwd && chmod 700 ~/.vnc/passwd && vncserver :1 -geometry 800x600
```