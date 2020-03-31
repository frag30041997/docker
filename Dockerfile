FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y python3.6 python3-pip vim jupyter

RUN mkdir src
WORKDIR src/

RUN pip3 install flask numpy pandas

RUN jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
