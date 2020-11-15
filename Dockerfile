# This is my first dockerfile. It use ubuntu in a specific version and install joe as editor.
FROM ubuntu:18.04

LABEL maintainer "brueggemann.bjoern@gmx.de"

RUN apt-get update && \
    apt-get install -y joe && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]