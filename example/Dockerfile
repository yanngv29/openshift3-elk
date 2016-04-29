FROM lbischof/logstash

COPY config /logstash-config
CMD ["logstash","agent","--allow-env","-f","/logstash-config"]
