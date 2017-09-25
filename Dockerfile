FROM ubuntu

MAINTAINER alfaluck <alfaluck@gmail.com>

COPY ./node /qrl-node

VOLUME /root/.qrl

WORKDIR /qrl-node

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential telnet python-dev python-pip python3-setuptools \
    && pip install -U pip setuptools \
    && pip install -r requirements.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    #&& echo "ntp 123/tcp" >> /etc/services \
    #&& echo "ntp 123/udp" >> /etc/services \

    # opening access from host system
    #&& sed -i "s/listenTCP(2000, wallet_factory, interface='127.0.0.1')/listenTCP(2000, wallet_factory)/" ./qrl/main.py \
    && sed -i "s/TCP4ServerEndpoint(reactor, 8888, interface='127.0.0.1')/TCP4ServerEndpoint(reactor, 8888)/" ./qrl/webwallet.py

EXPOSE 2000 8888 9000

CMD python start_qrl.py