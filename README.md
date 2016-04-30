# ELK-Stack on Openshift v3

**Under construction**

These are modified dockerfiles from the official docker images. I removed the gosu stuff and made sure relevant files are world readable.

## Usage
There is a docker-compose and a openshift template file in the `example` directory.
### Local
```
docker-compose up
```
### Openshift
```
oc new-project elk
oc new-app lbischof/kibana
oc new-app lbischof/elasticsearch
oc new-app https://github.com/lbischof/openshift3-elk.git --context-dir example --name logstash-git
oc expose service kibana
```

