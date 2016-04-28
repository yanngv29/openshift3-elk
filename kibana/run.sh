sed -ri "s/^(\#\s*)?(elasticsearch_url:).*/\2 'elasticsearch.elk.svc.cluster.local:9200'/" /opt/app-root/src/config/kibana.yml

kibana
