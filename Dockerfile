#FROM centos:7
FROM python:2.7-slim

COPY requirements.txt /tmp/

RUN apt-get update
RUN apt-get -y install autoconf g++ python2.7-dev
RUN pip install -r /tmp/requirements.txt
RUN apt-get -y install sudo

WORKDIR /CertToolkit
ENTRYPOINT ["/usr/local/bin/python", "/CertToolkit/certtoolkit.py"]
