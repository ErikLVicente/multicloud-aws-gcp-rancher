#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.5.7 --server https://18.216.179.209 --token pbnjhpm5nqtw494jlbxtpbspckj45jhlpxtwkjfr9wpjl44wqgkqv4 --ca-checksum ce4d8ca6f04ae23b840de4038c30df5f025be1f99194d0bc5dcfd592d9071e5c --etcd --controlplane --worker