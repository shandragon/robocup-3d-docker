FROM ubuntu:24.04

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    rsync \
    git \
    openjdk-17-jre \
    openjdk-17-jdk \
    x11-apps \
    xauth \
    xserver-xorg-video-dummy \
    mesa-utils \
    libgl1-mesa-dri \
    && rm -rf /var/lib/apt/lists/*

# Set the DISPLAY environment variable
ENV DISPLAY=:0
ENV XDG_RUNTIME_DIR=/tmp

ARG ROBOVIZ_RELEASE=2.0.0

RUN git clone --branch $ROBOVIZ_RELEASE --depth 1 https://github.com/magmaOffenburg/RoboViz.git /home/ubuntu/RoboViz \
    && cd /home/ubuntu/RoboViz/scripts \
    && chmod +x ../gradlew \
    && ./build.sh \
    && cd /home/ubuntu \
    && mv /home/ubuntu/RoboViz/bin /home/ubuntu/roboviz \
    && rm -r /home/ubuntu/RoboViz
    
ENTRYPOINT ["/home/ubuntu/roboviz/roboviz.sh"]