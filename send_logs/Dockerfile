FROM alpine

RUN apk add --no-cache netcat-openbsd bash coreutils bc
COPY entrypoint.sh /app/

ENTRYPOINT [ "/app/entrypoint.sh" ]
