FROM openshift/base-centos7

MAINTAINER OpenShift Development <dev@lists.openshift.redhat.com>

EXPOSE 5601

ENV KIBANA_VER=4.5.0 \
    ELASTICSEARCH_SERVICE_HOST=elasticsearch

LABEL io.k8s.description="Kibana container for querying Elasticsearch for aggregated logs" \
  io.k8s.display-name="Kibana" \
  io.openshift.expose-services="5601:http" \
  io.openshift.tags="logging,elk,kibana"

RUN   wget -q https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VER}-linux-x64.tar.gz && \
      tar -xzf kibana-${KIBANA_VER}-linux-x64.tar.gz && \
      mv kibana-${KIBANA_VER}-linux-x64/* /opt/app-root/src/ && \
      rm -rf kibana-${KIBANA_VER}-linux-x64* && \
      chmod -R og+w /opt/app-root/src

COPY run.sh /opt/app-root/src/run.sh

USER default

CMD ["sh", "run.sh"]
