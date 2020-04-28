FROM alpine
WORKDIR /app
COPY ./frps ./
COPY ./run.sh ./
COPY ./frps_full.ini ./
ENTRYPOINT ["/bin/sh", "run.sh"]