FROM lbischof/logstash

ENV ELASTICSEARCH_SERVICE_HOST=elasticsearch

COPY config /logstash-config
CMD ["logstash","agent","--allow-env","-f","/logstash-config"]
