# ELK-Stack on Openshift v3

**Under construction**

These are modified dockerfiles from the official docker images. I removed the gosu stuff and made sure relevant files are world readable.

## Usage

### Local
```
docker build -t elasticsearch elasticsearch
docker build -t kibana kibana
docker build -t logstash logstash

docker run -it --rm --name elasticsearch elasticsearch
docker run -it --rm --link elasticsearch:elasticsearch -p 5601:5601 kibana
docker run -it --rm logstash

```
### Openshift
```
oc new-project elk
oc new-app https://github.com/lbischof/openshift3-elk.git --context-dir kibana --name kibana
oc new-app https://github.com/lbischof/openshift3-elk.git --context-dir elasticsearch --name elasticsearch
oc new-app https://github.com/lbischof/openshift3-elk.git --context-dir logstash --name logstash
```

