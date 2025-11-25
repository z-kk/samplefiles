FROM debian:stable

ARG USR=user
RUN apt-get update &&  \
    apt-get install -y sudo && \
    apt-get install -y adduser && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN adduser $USR
RUN usermod -aG sudo $USR
RUN echo $USR:pass | chpasswd

COPY ./Dockerfile /work/

USER $USR
WORKDIR /work
