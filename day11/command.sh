# 网络信息
ip addr
ip route
hostname
cat /etc/hosts

# 连通性
ping -c 3 www.baidu.com
telnet www.baidu.com 80
curl -I www.baidu.com
mtr --report www.baidu.com
nslookup www.baidu.com
dig www.baidu.com

# 端口
ss -tulnp
ss -an

# 防火墙
systemctl status firewalld
firewall-cmd --list-all
firewall-cmd --list-ports

firewall-cmd --add-port=80/tcp
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --reload

# 实验
/usr/local/nginx/sbin/nginx
firewall-cmd --remove-port=80/tcp --permanent
firewall-cmd --reload
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --reload

# 作业
mkdir -p /data/sre/day11
ip addr > /data/sre/day11/ip.txt
ss -tulnp > /data/sre/day11/port.txt
firewall-cmd --list-all > /data/sre/day11/firewall.txt
ping -c 3 www.baidu.com > /data/sre/day11/ping.txt
