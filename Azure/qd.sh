#! /bin/bash
ifconfig eth0:1 10.0.0.5 up
ifconfig eth0:2 10.0.0.6 up
ifconfig eth0:3 10.0.0.7 up
ifconfig eth0:4 10.0.0.8 up
ifconfig eth0:5 10.0.0.9 up
ifconfig eth0:6 10.0.0.10 up
ifconfig eth0:7 10.0.0.11 up
ifconfig eth0:8 10.0.0.12 up
ifconfig eth0:9 10.0.0.13 up
ifconfig eth0:10 10.0.0.14 up
ifconfig eth0:11 10.0.0.15 up
ifconfig eth0:12 10.0.0.16 up
ifconfig eth0:13 10.0.0.17 up
ifconfig eth0:14 10.0.0.18 up
ifconfig eth0:15 10.0.0.19 up
ifconfig eth0:16 10.0.0.20 up
ifconfig eth0:17 10.0.0.21 up
ifconfig eth0:18 10.0.0.22 up
ifconfig eth0:19 10.0.0.23 up
ifconfig eth0:20 10.0.0.24 up
#启动Xray
runuser -l root -c 'nohup /etc/xray/xray -c /etc/xray/bin/az-ss.json &'
