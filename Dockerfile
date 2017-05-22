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
COPY s3curl .s3curl
RUN chmod 600 .s3curl 
