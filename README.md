# ELK-Stack on Openshift v3

**Under construction**

These are modified dockerfiles and templates from: https://github.com/openshift/origin-aggregated-logging

I removed ssl and authentication because it complicates the setup and I do not need it for the internal network.

## Usage

### Local
```
docker build -t elasticsearch elasticsearch
docker build -t kibana kibana

docker run -it --rm --name elasticsearch elasticsearch
docker run -it --rm -e ELASTICSEARCH_URL=elasticsearch:9200 --link elasticsearch:elasticsearch -p 5601:5601 kibana
```
### Openshift
```
oc new-project elk
oc new-app https://github.com/lbischof/openshift3-elk.git --context-dir kibana --name kibana
oc new-app https://github.com/lbischof/openshift3-elk.git --context-dir elasticsearch --name elasticsearch
```

