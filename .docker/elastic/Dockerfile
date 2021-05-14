FROM docker.elastic.co/elasticsearch/elasticsearch:7.11.1

COPY .docker/elastic/contains-multiple-0.0.1.zip /plugins/contains-multiple-0.0.1.zip

RUN elasticsearch-plugin install \
  file:///plugins/contains-multiple-0.0.1.zip
