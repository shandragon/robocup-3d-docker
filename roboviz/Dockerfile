FROM ubuntu:24.04

RUN apt-get update

RUN apt-get install -y rsync openjdk-17-jdk git wget

RUN apt-get install -y openjdk-17-jre mesa-utils xserver-xorg-video-all

RUN wget https://github.com/PetrusNoleto/Error-in-install-cisco-packet-tracer-in-ubuntu-23.10-unmet-dependencies/releases/download/CiscoPacketTracerFixUnmetDependenciesUbuntu23.10/libgl1-mesa-glx_23.0.4-0ubuntu1.22.04.1_amd64.deb && dpkg -i libgl1-mesa-glx_23.0.4-0ubuntu1.22.04.1_amd64.deb

ARG ROBOVIZ_RELEASE=2.0.0

RUN git clone --branch $ROBOVIZ_RELEASE --depth 1 https://github.com/magmaOffenburg/RoboViz.git /tmp/RoboViz \
    && cd /tmp/RoboViz/scripts \
    && chmod +x ../gradlew \
    && ./build.sh \
    && mv ../bin /roboviz \
    && cd / \
    && rm -r /tmp/RoboViz \
    && apt-get purge -y --auto-remove $buildDeps && rm -rf /var/lib/apt/lists/*
    
ENTRYPOINT ["/roboviz/roboviz.sh"]
