#!/bin/bash

set -ex

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
yum install -y --setopt=tsflags=nodocs \
  java-1.8.0-openjdk \
  elasticsearch
yum clean all

mkdir -p ${HOME}
ln -s /usr/share/elasticsearch /usr/share/java/elasticsearch
mkdir /elasticsearch
chmod -R og+w /usr/share/java/elasticsearch ${HOME} /elasticsearch
