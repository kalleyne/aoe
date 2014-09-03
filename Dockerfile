# This is a Dockerfile to install the ATA over Ethernet (AoE) driver/initiator on Ubuntu 14.04.1
#
# VERSION 0.1

# Use Ubuntu 14.04.1 image provided by docker.com

FROM ubuntu:14.04.1
MAINTAINER Keri Alleyne <k.alleyne@symlogix.com>


# Get noninteractive frontend for Debian to avoid some problems:
#    debconf: unable to initialize frontend: Dialog

ENV DEBIAN_FRONTEND noninteractive


# Install packages

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y aoetools
