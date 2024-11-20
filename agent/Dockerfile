FROM python:latest

WORKDIR /home

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install libgsl-dev -y

RUN pip3 install --upgrade pip

RUN pip3 install numpy pybind11 pandas psutil stable-baselines3 gym shimmy

CMD ["sh", "-c", "while true; do sleep 3600; done"]