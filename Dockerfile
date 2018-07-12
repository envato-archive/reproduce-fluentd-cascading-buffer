FROM fluent/fluentd

RUN fluent-gem install fluent-plugin-kinesis --no-ri --no-rdoc --version 1.1.3
COPY fluentd.conf /fluentd/etc/
ENV FLUENTD_CONF fluentd.conf
