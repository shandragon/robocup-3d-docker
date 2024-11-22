FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y && apt-get clean

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    gpg \
    g++ \
    git \
    make \
    cmake \
    libfreetype6-dev \
    libode-dev \
    libsdl2-dev \
    ruby \
    ruby-dev \
    libdevil-dev \
    libboost-dev \
    libboost-thread-dev \
    libboost-regex-dev \
    libboost-system-dev \
    qtbase5-dev \
    qtchooser \
    qt5-qmake \
    libqt5opengl5-dev

RUN apt-get install -y openjdk-17-jre openjdk-17-jdk

WORKDIR /home/ubuntu

# Copiando os scripts
COPY start_time.sh .
COPY kill_time.sh .

RUN chmod +x start_time.sh
RUN chmod +x kill_time.sh

RUN wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/FCPortugal_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf FCPortugal_SS3D_RC2024_BIN.tar.gz && rm FCPortugal_SS3D_RC2024_BIN.tar.gz

RUN wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/magmaOffenburg_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf magmaOffenburg_SS3D_RC2024_BIN.tar.gz && rm magmaOffenburg_SS3D_RC2024_BIN.tar.gz

RUN wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/BahiaRT_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf BahiaRT_SS3D_RC2024_BIN.tar.gz && rm BahiaRT_SS3D_RC2024_BIN.tar.gz

RUN wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/ITAndroids_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf ITAndroids_SS3D_RC2024_BIN.tar.gz && rm ITAndroids_SS3D_RC2024_BIN.tar.gz

CMD ["sh", "-c", "while true; do sleep 3600; done"]