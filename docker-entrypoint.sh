#!/bin/sh

/usr/share/elasticsearch/bin/elasticsearch-systemd-pre-exec

/usr/share/elasticsearch/bin/elasticsearch -Des.network.host=0.0.0.0 \
                                           -Des.pidfile=/var/run/elasticsearch/elasticsearch.pid \
                                           -Des.default.path.home=/usr/share/elasticsearch \
                                           -Des.default.path.logs=/var/log/elasticsearch \
                                           -Des.default.path.data=/var/lib/elasticsearch \
                                           -Des.default.path.conf=/etc/elasticsearch
