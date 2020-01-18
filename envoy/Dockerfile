FROM envoyproxy/envoy

RUN apt update && apt install -y python curl tcpdump
ADD https://raw.githubusercontent.com/envoyproxy/envoy/master/restarter/hot-restarter.py /

ENTRYPOINT [ "python", "/hot-restarter.py" ]
