FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    rpm \
    libgsl27 \
    && apt-get clean

COPY /src/spiffe-4.8.2-1.ubuntu.22.04.x86_64.rpm /tmp/spiffe-4.8.2-1.ubuntu.22.04.x86_64.rpm

RUN rpm -i /tmp/spiffe-4.8.2-1.ubuntu.22.04.x86_64.rpm

RUN rm /tmp/spiffe-4.8.2-1.ubuntu.22.04.x86_64.rpm

