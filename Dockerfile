# FROM tensorflow/tensorflow:1.11.0-devel-py3
FROM tensorflow/tensorflow:2.4.1
MAINTAINER evil.rod@overflow.biz

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE

COPY . /opt/anon
WORKDIR /opt/anon

RUN apt-get update && apt-get install software-properties-common curl --no-install-recommends -y && \
	apt-get update && apt-get install python3 python3-distutils -y --no-install-recommends && \
	curl https://bootstrap.pypa.io/get-pip.py | python3 && \
	python3 -m pip install -r requirements.txt

ENTRYPOINT [ "/opt/anon/entrypoint.sh" ]
