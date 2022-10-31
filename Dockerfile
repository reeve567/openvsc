FROM gitpod/openvscode-server:latest

USER root
RUN apt update
RUN apt install curl -Y
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain none
USER openvscode-server
