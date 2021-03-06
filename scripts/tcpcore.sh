#!/bin/sh
sysctl -w net.core.netdev_max_backlog=262144

sysctl -w net.core.somaxconn=262144

sysctl -w net.ipv4.tcp_max_syn_backlog=262144

sysctl -w net.ipv4.tcp_syncookies=1

sysctl -w net.nf_conntrack_max=1000000

sysctl -w net.netfilter.nf_conntrack_buckets=50000

#表示开启重用。允许将TIME-WAIT sockets重新用于新的TCP连接，默认为0，表示关闭
sysctl -w net.ipv4.tcp_tw_reuse=1
#表示开启TCP连接中TIME-WAIT sockets的快速回收，默认为0，表示关闭
sysctl -w net.ipv4.tcp_tw_recycle=1

sysctl -w net.ipv4.ip_local_port_range="1024 65000"
