FROM conanio/gcc7

# RUN echo N > /sys/module/overlay/parameters/metacopy && \
RUN sudo apt-get update && sudo apt-get install -y libgflags-dev ; \
    echo "I don't know this error, but continue to build..." && \
    echo "(dpkg: error: error creating new backup file '/var/lib/dpkg/status-old': Invalid cross-device link)"

RUN git clone https://github.com/grpc/grpc.git && cd grpc && git submodule update --init

RUN cd grpc && make grpc_cli
