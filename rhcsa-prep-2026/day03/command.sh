# 查看网卡和连接
nmcli device status
nmcli connection show
ip addr

# 查看当前主机名
hostname
hostnamectl

# 设置永久主机名
hostnamectl set-hostname rhcsa-node01
bash

# 网卡名是 ens160
NIC=ens160

# 配置静态 IP
nmcli connection modify $NIC \
  ipv4.method manual \
  ipv4.addresses 192.168.239.100/24 \
  ipv4.gateway 192.168.239.2 \
  ipv4.dns "114.114.114.114" \
  ipv4.dns-search localdomain \
  connection.autoconnect yes

# 重启连接生效
nmcli connection up $NIC

# 查看 IP
ip addr
ip route

# 测试
ping -c 3 192.168.239.2
ping -c 3 www.baidu.com

# 作业输出
mkdir -p /data/rhcsa/day03
nmcli connection show > /data/rhcsa/day03/conn.txt
ip addr > /data/rhcsa/day03/ip.txt
ip route > /data/rhcsa/day03/route.txt
cat /etc/hostname > /data/rhcsa/day03/hostname.txt
ping -c 3 www.baidu.com > /data/rhcsa/day03/ping.txt
