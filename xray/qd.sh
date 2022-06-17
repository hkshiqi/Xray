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
ifconfig eth0:1 10.0.0.14 up
ifconfig eth0:1 10.0.0.15 up
ifconfig eth0:1 10.0.0.16 up
ifconfig eth0:1 10.0.0.17 up
#启动Xray
runuser -l root -c 'nohup /etc/xray/xray -c /etc/xray/bin/config.json &'
