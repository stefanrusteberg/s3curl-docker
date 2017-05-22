FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl \
                       git \
                       vim \
                       build-essential &&\
    apt-get clean 

RUN perl -MCPAN -e "install Digest::HMAC_SHA1"

WORKDIR /root
RUN git clone https://github.com/rtdp/s3curl.git
WORKDIR ./s3curl
COPY s3curl.sample .s3curl
RUN chmod 600 .s3curl 
#default to localhost if no endpoint set while building 
ARG endpoint='127.0.0.1'
RUN sed "s|.*@endpoints.*|my @endpoints = ('$endpoint');|" -i s3curl.pl
RUN sed '/amazonaws.com/d' -i s3curl.pl
