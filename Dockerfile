FROM ubuntu:14.04
MAINTAINER Maarten Trompper <m.f.a.trompper@uva.nl>

# Download Alpino binaries
RUN apt-get update && apt-get install -y wget
RUN wget -q -O ~/alpino.tar.gz https://www.dropbox.com/s/askmk153bkq5f6n/Alpino-2.15-20723.tar.gz?dl=0

# Unpack Alpino binaries
RUN mkdir -p /opt/Alpino
RUN tar -xf ~/alpino.tar.gz -C /opt/Alpino
RUN rm ~/alpino.tar.gz

# Set $ALPINO_HOME
ENV ALPINO_HOME=/opt/Alpino
ENV $PATH=$PATH;$ALPINO_HOME

# Set locale (this is necessary for Alpino to work correctly)
ENV LANG=en_US.UTF-8
ENV LC_CTYPE="en_US.UTF-8"
ENV LC_NUMERIC="en_US.UTF-8"
ENV LC_TIME="en_US.UTF-8"
ENV LC_COLLATE=C
ENV LC_MONETARY="en_US.UTF-8"
ENV LC_MESSAGES="en_US.UTF-8"
ENV LC_PAPER="en_US.UTF-8"
ENV LC_NAME="en_US.UTF-8"
ENV LC_ADDRESS="en_US.UTF-8"
ENV LC_TELEPHONE="en_US.UTF-8"
ENV LC_MEASUREMENT="en_US.UTF-8"
ENV LC_IDENTIFICATION="en_US.UTF-8"
ENV LC_ALL=en_US.UTF-8


