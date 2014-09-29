FROM martinseeler/oracle-server-jre

# Specify version
ENV ES_VERSION 1.3.2

# Install ElasticSearch.
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-${ES_VERSION}.tar.gz && \
  tar xvzf elasticsearch-${ES_VERSION}.tar.gz && \
  rm -f elasticsearch-${ES_VERSION}.tar.gz && \
  mv /tmp/elasticsearch-${ES_VERSION} /elasticsearch

RUN cd /elasticsearch && \
    ./bin/plugin -v --install mobz/elasticsearch-head && \
    ./bin/plugin -v --install lukas-vlcek/bigdesk

# Mount elasticsearch.yml config
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300
