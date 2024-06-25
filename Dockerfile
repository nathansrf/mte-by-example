FROM ubuntu:22.04

RUN apt-get update -y && apt-get install -y build-essential gdb qemu-user

WORKDIR /opt/mte-example

COPY Makefile .
COPY src src/
