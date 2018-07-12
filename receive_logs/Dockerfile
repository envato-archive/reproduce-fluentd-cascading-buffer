FROM alpine

RUN apk add --no-cache python python-dev py-pip jq
RUN pip install awscli
COPY entrypoint.sh /app/
entrypoint ["/app/entrypoint.sh"]
