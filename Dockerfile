FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python3 python3-pip

RUN pip install open-interpreter==0.2.0
RUN pip install numpy matplotlib pandas

WORKDIR /root
