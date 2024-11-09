FROM ubuntu:24.04

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    rsync \
    git \
    openjdk-17-jre \
    openjdk-17-jdk \
    mesa-utils \
    libgl1 \
    libglx-mesa0 \
    xserver-xorg-video-all \
    libnvidia-egl-wayland1

ARG ROBOVIZ_RELEASE=2.0.0

RUN git clone --branch $ROBOVIZ_RELEASE --depth 1 https://github.com/magmaOffenburg/RoboViz.git /home/ubuntu/RoboViz \
    && cd /home/ubuntu/RoboViz/scripts \
    && chmod +x ../gradlew \
    && ./build.sh \
    && cd /home/ubuntu \
    && mv /home/ubuntu/RoboViz/bin /home/ubuntu/roboviz \
    && rm -r /home/ubuntu/RoboViz 
    
ENTRYPOINT ["/home/ubuntu/roboviz/roboviz.sh"]