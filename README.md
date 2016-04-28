# ELK-Stack on Openshift v3

**Under construction**

These are modified dockerfiles from the official docker images. I removed the gosu stuff and made sure relevant files are world readable.

## Usage

### Local
```
docker run -it --rm --name elasticsearch lbischof/elasticsearch
docker run -it --rm --link elasticsearch:elasticsearch -p 5601:5601 lbischof/kibana
docker run -it --rm --link elasticsearch:elasticsearch lbischof/logstash

```
### Openshift
```
oc new-project elk
oc new-app lbischof/kibana
oc new-app lbischof/elasticsearch
oc new-app lbischof/logstash
```

