FROM ubuntu:16.04

EXPOSE 4567

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y g++ \
        make \
        python \
        software-properties-common \
        wget \
        awscli \
        git
RUN wget -qO- https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs

RUN npm install -g envato/kinesalite#add-put-record-failure-rate && \
        apt-get purge -y g++ \
        make \
        software-properties-common \
        wget && \
    apt-get -y autoremove && \
    apt-get clean && rm -rf /build && rm -rf /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /app/

CMD ["/app/entrypoint.sh"]
