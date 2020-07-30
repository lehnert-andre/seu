# Base image with predefined VNC server and web port
#
# Example:
#
# $ docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:bionic-lxqt
# 
# Open http://127.0.0.1:6080/
#
FROM dorowu/ubuntu-desktop-lxde-vnc:bionic-lxqt as seu

ENV RESOLUTION=1024x768
ENV USER=school
ENV PASSWORD=school

RUN apt-get -qq update \
  && apt-get -y --no-install-recommends install wget curl \
  && apt-get -y --no-install-recommends install git maven \
  && apt-get -y --no-install-recommends install gnupg-agent pinentry-curses pinentry-gtk2 \
  && apt-get autoclean -y \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*


# install java
#
FROM seu as seu-with-java

RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ \
  && apt-get -qq update \
  && apt-get -y --no-install-recommends install adoptopenjdk-11-hotspot

#  && apt-get install adoptopenjdk-8-hotspot  # Java 8 / HotSpot VM
#  && apt-get install adoptopenjdk-8-openj9   # Java 8 / OpenJ9 VM
#  && apt-get install adoptopenjdk-11-hotspot # Java 11 / HotSpot VM
#  && apt-get install adoptopenjdk-11-openj9  # Java 11 / OpenJ9 VM
#  && apt-get install adoptopenjdk-12-hotspot # Java 12 / HotSpot VM
#  && apt-get install adoptopenjdk-12-openj9  # Java 12 / OpenJ9 VM
#  && apt-get install adoptopenjdk-13-hotspot # Java 13 / HotSpot VM
#  && apt-get install adoptopenjdk-13-openj9  # Java 13 / OpenJ9 VM
