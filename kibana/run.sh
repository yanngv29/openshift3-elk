sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://${ELASTICSEARCH_SERVICE_HOST}:9200'!" /opt/app-root/src/config/kibana.yml

kibana
