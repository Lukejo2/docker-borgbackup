FROM alpine:latest

RUN apt add --no-cache borgbackup
RUN mkdir -p /backup && mkdir -p /source
VOLUME [ "/backup", "/source" ]
WORKDIR /usr/src/app
COPY backup.sh .
COPY entrypoint.sh .

CMD ["sh", "entrypoint.sh"]
