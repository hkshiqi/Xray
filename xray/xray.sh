#! /bin/bash
#安装必备工具
apt-get update && apt-get install wget curl git -y
apt install unzip


#性能优化
echo 500000 >/proc/sys/kernel/pid_max
echo 500000 >/proc/sys/kernel/threads-max
echo 500000 >/proc/sys/vm/max_map_count
echo 500000 >/proc/sys/fs/file-max
ulimit -SHn 10240
ulimit -SHs unlimited
modprobe ip_conntrack
echo 1000000 >/proc/sys/net/nf_conntrack_max
lsmod |grep conntrack

#下载安装XRAY
mkdir /etc/xray
wget --no-check-certificate -O /etc/xray/Xray-linux-64.zip https://github.com/XTLS/Xray-core/releases/download/v1.5.5/Xray-linux-64.zip
cd /etc/xray
unzip -o /etc/xray/Xray-linux-64.zip
mkdir /etc/xray/bin
wget --no-check-certificate -O /etc/xray/bin/config.json https://raw.githubusercontent.com/hkshiqi/Xray/gh-pages/xray/bin/config.json
chmod +x /etc/xray
wget --no-check-certificate -O /lib/systemd/system/qd.service https://raw.githubusercontent.com/hkshiqi/Xray/gh-pages/xray/qd.service
sudo systemctl daemon-reload
systemctl enable qd.service
wget --no-check-certificate -O /etc/xray/qd.sh https://raw.githubusercontent.com/hkshiqi/Xray/gh-pages/xray/qd.sh
chmod +x /etc/xray/bbr.sh
cd /etc/xray
./qd.sh

#安装启动BBR
wget --no-check-certificate -O /etc/xray/bbr.sh https://raw.githubusercontent.com/hkshiqi/x-ui/main/installbbr/bbr 
chmod +x /etc/xray/bbr.sh
cd /etc/xray
./bbr.sh
