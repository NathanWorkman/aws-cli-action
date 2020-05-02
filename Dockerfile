FROM python:3-alpine

ENV AWSCLI_VERSION='2.0.10'

RUN pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
