#!/bin/bash -eux

/sbin/haproxy -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid
