FROM alpine:3.12
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV JSHINT_VERSION=2.12.0

RUN apk add --no-cache --virtual .run-deps npm git \
 && npm install -g jshint@$JSHINT_VERSION \
 && mkdir -p /code

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["jshint"]
