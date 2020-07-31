# School - SEU

## Getting started

Run `docker run -p 6080:80 -p 5900:5900 -v /dev/shm:/dev/shm alehnert/seu:latest`

Open http://127.0.0.1:6080/ in your browser or 127.0.0.1:5900 in your VNC client.

---

Default linux user `school` with password `school`.

Use `-e RESOLUTION=1600x900` to define the target resolution

Use `-e VNC_PASSWORD=school` to define a VNC password.

Get the full list of parameters: https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc 


## Tags

- `seu:latest` Full version with all IDEs: Intellij IDEA Community Edition, Eclipse JEE 2020-06, AdoptJDK 11 Hotspot, Git, Maven, Python 2.x, cURL, Firefox
- `seu:intellij` Intellij IDEA Community Edition, AdoptJDK 11 Hotspot, Git, Maven, Python 2.x, cURL, Firefox
- `seu:eclipse` Eclipse JEE 2020-06, AdoptJDK 11 Hotspot, Git, Maven, Python 2.x, cURL, Firefox
- `seu:jdk11` AdoptJDK 11 Hotspot, Git, Maven, Python 2.x, cURL, Firefox

## Setup 

Build `docker build -t seu -f  .` and 

run `docker run -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=school -e RESOLUTION=1600x900 -v /dev/shm:/dev/shm seu:latest`

Open http://127.0.0.1:6080/ in your browser or 127.0.0.1:5900 in your VNC client.

Enter the `VNC_PASSWORD`: `school` (you can remove the parameter to disable the password protection)

Set `RESOLUTION` to your target browser resolution.

### Baseimage

Baseimage: https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc

```
docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal

docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt
```

Open: http://127.0.0.1:6080/
