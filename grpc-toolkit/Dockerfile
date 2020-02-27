FROM ubuntu
ARG VERSION=3.11.4
WORKDIR /opt
ADD https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-x86_64.zip .
ADD https://github.com/googleapis/api-common-protos/archive/master.zip .
RUN apt-get update && \
  apt-get install -y unzip && \
  unzip protoc-${VERSION}-linux-x86_64.zip && \
  mv bin/protoc /usr/local/bin && \
  mv include /usr/local/ && \
  unzip master.zip && \
  mv api-common-protos-master /usr/local/include/googleapis && \
  rm -rf /opt/*
VOLUME /opt
