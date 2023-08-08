FROM fluent/fluentd:edge-debian

USER root

RUN apt-get update -y && \
    apt-get install -y build-essential libstdc++-10-dev

COPY fluentd.conf /fluentd/etc/fluent.conf


RUN gem install fluent-plugin-kubernetes_metadata_filter -v 3.2.0
RUN gem install elasticsearch -v 7.10.1
RUN gem install fluent-plugin-elasticsearch -v 5.0.5