# FROM nvidia/cuda:9.0-runtime-ubuntu16.04
FROM tensorflow/tensorflow:1.11.0-devel-py3
MAINTAINER evil.rod@overflow.biz

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE

COPY . /opt/anon
WORKDIR /opt/anon
RUN apt-get update && apt-get install software-properties-common curl --no-install-recommends -y && \
	add-apt-repository ppa:deadsnakes/ppa && \
	apt-get update && apt-get install python3.6 -y --no-install-recommends && \
	curl https://bootstrap.pypa.io/get-pip.py | python3.6 && \
	python3.6 -m pip install -r requirements.txt

ENTRYPOINT [ "/opt/anon/entrypoint.sh" ]
