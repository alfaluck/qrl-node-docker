FROM ubuntu

MAINTAINER alfaluck <alfaluck@gmail.com>

COPY ./node /qrl-node

WORKDIR /qrl-node

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential telnet python-dev python-pip python3-setuptools \
    && pip install -U pip setuptools \
    && pip install -r requirements.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

    # opening access from host system
    && sed -i "s/TCP4ServerEndpoint(reactor, 8888, interface='127.0.0.1')/TCP4ServerEndpoint(reactor, 8888)/" /qrl-node/qrl/webwallet.py

EXPOSE 8080 8888 9000

CMD python start_qrl.py