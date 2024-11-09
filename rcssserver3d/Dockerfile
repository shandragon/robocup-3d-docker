FROM ubuntu:24.04

RUN apt-get update -y && apt-get upgrade -y && apt-get clean

RUN apt-get install -y --no-install-recommends \
    gpg \
    curl \
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

ARG RCSSSERVER3D_RELEASE=0.7.7

RUN git clone --branch RCSSSERVER3D_${RCSSSERVER3D_RELEASE}_RELEASE --depth 1 https://gitlab.com/robocup-sim/SimSpark.git /tmp/SimSpark \
&& mkdir -p /tmp/SimSpark/spark/build \
&& cd /tmp/SimSpark/spark/build \
&& cmake -DRVDRAW=OFF -DCMAKE_CXX_FLAGS=-w .. \
&& make -j$(nproc) \
&& make install \
&& ldconfig \
&& mkdir -p /tmp/SimSpark/rcssserver3d/build \
&& cd /tmp/SimSpark/rcssserver3d/build \
&& cmake -DRVDRAW=OFF -DCMAKE_CXX_FLAGS=-w .. \
&& make -j$(nproc) \
&& make install && ldconfig \
&& rm -fr /tmp/SimSpark

RUN ldconfig

ENTRYPOINT ["rcssserver3d"]
