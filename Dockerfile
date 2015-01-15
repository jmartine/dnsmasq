FROM debian:wheezy

RUN apt-get update &&\
    apt-get install -y dnsmasq

RUN echo 'user=root' >> /etc/dnsmasq.conf

EXPOSE 53

ENTRYPOINT ["dnsmasq", "--no-daemon", "--log-queries"]
