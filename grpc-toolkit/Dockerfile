FROM golang:1.14-buster as build
ENV GOPROXY=https://goproxy.cn
RUN go get -u github.com/golang/protobuf/protoc-gen-go
RUN go get -u github.com/longkai/istio-tools/grpc-transcoder


#WORKDIR /opt
#RUN git clone -b go-module https://github.com/longkai/istio-tools
#RUN cd istio-tools/grpc-transcoder && go install

FROM ubuntu
ARG VERSION=3.11.4
WORKDIR /opt
ADD https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-x86_64.zip .
ADD https://github.com/googleapis/api-common-protos/archive/master.zip .
COPY --from=build /go/bin/protoc-gen-go /usr/local/bin
COPY --from=build /go/bin/grpc-transcoder /usr/local/bin
RUN apt-get update && \
  apt-get install -y unzip && \
  unzip protoc-${VERSION}-linux-x86_64.zip && \
  mv bin/protoc /usr/local/bin && \
  mv include /usr/local/ && \
  unzip master.zip && \
  mv api-common-protos-master /usr/local/include/googleapis && \
  rm -rf /opt/*
VOLUME /opt
