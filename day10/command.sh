# DNF 操作
dnf list | grep nginx
dnf install -y nginx
dnf list installed
dnf provides /usr/bin/ss
dnf remove -y nginx
dnf clean all
dnf makecache

# 源码编译 Nginx
cd /usr/local/src
dnf install -y gcc make pcre-devel zlib-devel
wget http://nginx.org/download/nginx-1.24.0.tar.gz
tar zxf nginx-1.24.0.tar.gz
cd nginx-1.24.0
./configure
make
make install

# 启动
/usr/local/nginx/sbin/nginx
ss -tulnp | grep nginx
curl 127.0.0.1

# 作业
mkdir -p /data/sre/day10
dnf list installed > /data/sre/day10/installed.txt
/usr/local/nginx/sbin/nginx -v > /data/sre/day10/nginx_version.txt
ss -tulnp | grep nginx > /data/sre/day10/nginx_port.txt
