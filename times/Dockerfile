FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN buildDeps='gpg g++ git make cmake libfreetype6-dev libode-dev libsdl2-dev ruby ruby-dev libdevil-dev libboost-dev libboost-thread-dev libboost-regex-dev libboost-system-dev qtbase5-dev qtchooser qt5-qmake libqt5opengl5-dev wget'; \
    apt-get update \
    && apt-get install -y $buildDeps

RUN apt-get install -y openjdk-17-jre openjdk-17-jdk

RUN cd /home/ubuntu \
    && wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/FCPortugal_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf FCPortugal_SS3D_RC2024_BIN.tar.gz

RUN cd /home/ubuntu \
    && wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/magmaOffenburg_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf magmaOffenburg_SS3D_RC2024_BIN.tar.gz

RUN cd /home/ubuntu \
    && wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/BahiaRT_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf BahiaRT_SS3D_RC2024_BIN.tar.gz

RUN cd /home/ubuntu \
    && wget https://archive.robocup.info/Soccer/Simulation/3D/binaries/RoboCup/2024/ITAndroids_SS3D_RC2024_BIN.tar.gz \
    && tar -xvzf ITAndroids_SS3D_RC2024_BIN.tar.gz