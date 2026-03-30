# Day04 网络与端口排查

# 安装工具
dnf install -y net-tools bind-utils mtr

# 网络信息
ip addr
ifconfig
ip route
route -n
hostname

# 端口监听
ss -tulnp
netstat -tulnp
ss -tulnp | grep 22
lsof -i :22

# 连通性测试
ping -c 4 www.baidu.com
telnet www.baidu.com 80
curl -I www.baidu.com
mtr --report www.baidu.com
traceroute www.baidu.com
nslookup www.baidu.com
dig www.baidu.com

# 防火墙
systemctl status firewalld
firewall-cmd --list-ports
firewall-cmd --add-port=80/tcp
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --reload

# 作业输出
mkdir -p /data/sre/day04
ip addr > /data/sre/day04/ip.txt
ss -tulnp > /data/sre/day04/port.txt
ping -c 4 www.baidu.com > /data/sre/day04/ping.txt
firewall-cmd --list-ports > /data/sre/day04/firewall.txt
ls -lh /data/sre/day04/
