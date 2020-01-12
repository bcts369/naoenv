FROM ubuntu:latest
# FROM node:lts

LABEL maintainer "nao"

#ENV PATH="${PATH}:/var/lib/app/bin"

RUN set -x && \
  apt update && \
  apt upgrade -y && \
  apt install -y --no-install-recommends 


ENTRYPOINT [ "/bin/bash", "-c" ]
CMD [ "ping 127.0.0.1" ] # -cの引数なので全体を囲む
VOLUME [ "/root", "/home" ]

