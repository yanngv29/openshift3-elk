#sed -i "s/es_host/$ES_HOST/" /opt/app-root/src/config/kibana.yml
#sed -i "s/es_port/$ES_PORT/" /opt/app-root/src/config/kibana.yml

if [ "$ELASTICSEARCH_URL" -o "$ELASTICSEARCH_PORT_9200_TCP" ]; then
    : ${ELASTICSEARCH_URL:='http://elasticsearch:9200'}
    sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 '$ELASTICSEARCH_URL'!" /opt/app-root/src/config/kibana.yml
else
    echo >&2 'warning: missing ELASTICSEARCH_PORT_9200_TCP or ELASTICSEARCH_URL'
    echo >&2 '  Did you forget to --link some-elasticsearch:elasticsearch'
    echo >&2 '  or -e ELASTICSEARCH_URL=http://some-elasticsearch:9200 ?'
    echo >&2
fi

kibana
