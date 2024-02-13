FROM amd64/debian:bookworm-slim

WORKDIR /src

ENV DUC_VERSION=3.0.0
ENV DUC_URI=https://dmej8g5cpdyqd.cloudfront.net
ENV DUC_HOST=all.ddnskey.com
ENV DUC_USERNAME=username
ENV DUC_PASSWORD=password

RUN apt update
RUN apt install wget -y
RUN wget ${DUC_URI}/downloads/noip-duc_${DUC_VERSION}.tar.gz 
RUN tar xf noip-duc_${DUC_VERSION}.tar.gz 
RUN cd ./noip-duc_${DUC_VERSION}/binaries && apt install ./noip-duc_${DUC_VERSION}_amd64.deb
RUN noip-duc --help

CMD ["sh", "-c", "noip-duc -g $DUC_HOST --username $DUC_USERNAME --password $DUC_PASSWORD"]