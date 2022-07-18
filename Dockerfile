FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/hh.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/hh

COPY hh.sh /usr/bin/hh.sh
RUN chmod +x /usr/bin/hh.sh
COPY target/hh.jar /usr/share/hh/hh.jar