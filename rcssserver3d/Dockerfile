FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ARG RCSSSERVER3D_RELEASE=0.7.7

RUN buildDeps='gpg g++ git make cmake libfreetype6-dev libode-dev libsdl2-dev ruby ruby-dev libdevil-dev libboost-dev libboost-thread-dev libboost-regex-dev libboost-system-dev qtbase5-dev qtchooser qt5-qmake libqt5opengl5-dev'; \
    apt-get update \
    && apt-get install -y $buildDeps
    
RUN echo 'deb http://download.opensuse.org/repositories/science:/SimSpark/xUbuntu_24.04/ /' | tee /etc/apt/sources.list.d/science:SimSpark.list \
    curl -fsSL https://download.opensuse.org/repositories/science:SimSpark/xUbuntu_24.04/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/science_SimSpark.gpg > /dev/null \
    apt-get update \
    apt-get install rcssserver3d \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/local/lib/simspark:/usr/local/lib/rcssserver3d

CMD ["rcssserver3d"]
