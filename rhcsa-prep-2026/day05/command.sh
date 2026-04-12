# 查看状态
getenforce
sestatus

# 临时切换
setenforce 0
setenforce 1

# 查看上下文
ls -Zd /root
ls -Zd /home
ls -Z /var/www/html

# 安装 httpd 用于实验
dnf install -y httpd
systemctl start httpd
ps -efZ | grep httpd

# 自定义网页目录
mkdir -p /web/html
echo "test" > /web/html/index.html

# 临时改上下文
chcon -t httpd_sys_content_t /web/html -R

# 永久改上下文（考试推荐）
semanage fcontext -a -t httpd_sys_content_t "/web/html(/.*)?"
restorecon -Rv /web/html

# 验证
ls -Zd /web/html

# 作业输出
mkdir -p /data/rhcsa/day05
getenforce > /data/rhcsa/day05/enforce.txt
sestatus > /data/rhcsa/day05/status.txt
ls -Zd /web/html > /data/rhcsa/day05/context.txt
ps -efZ | grep httpd | head > /data/rhcsa/day05/process_z.txt
