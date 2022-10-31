ARG PORT TOKEN
FROM gitpod/openvscode-server:1.65.2
USER root
RUN apt update
RUN apt install curl -y
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN apt-get install -y openssl
USER openvscode-server
ENV OPENVSCODE_SERVER_ROOT=${OPENVSCODE_SERVER_ROOT}
ENV TOKEN=${TOKEN}
ENV PORT=${PORT}
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
