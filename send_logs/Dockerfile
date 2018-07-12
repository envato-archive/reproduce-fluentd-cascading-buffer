FROM alpine

RUN apk add --no-cache netcat-openbsd bash
COPY entrypoint.sh /app/

ENTRYPOINT [ "/app/entrypoint.sh" ]
