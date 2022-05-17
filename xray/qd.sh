#!/bin/bash
#启动Xray
runuser -l root -c 'nohup /etc/xray/xray -c /etc/xray/bin/config.json &'