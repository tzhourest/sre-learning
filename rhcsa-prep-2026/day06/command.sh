# 1. DNF 软件管理
# 查看已安装包
dnf list installed

# 安装 tree
dnf install -y tree

# 查找某个命令来自哪个包
dnf provides /usr/bin/ss

# 卸载 tree
dnf remove -y tree

# 2. systemd 服务管理
# 查看 sshd 状态
systemctl status sshd

# 启用并立即启动（enable --now = 开机自启+立刻启动）
systemctl enable --now sshd

# 查看是否开机自启
systemctl is-enabled sshd

# 3. 定时任务 crontab
# 编辑当前用户定时任务
crontab -e
# 写入下面这行（每分钟把日期写入 /tmp/date.log）
# * * * * * /usr/bin/date >> /tmp/date.log

# 查看定时任务
crontab -l

# 4. 时间同步 chrony
dnf install -y chrony
systemctl enable --now chronyd
chronyc sources -v

# 5. 作业输出
mkdir -p /data/rhcsa/day06
dnf list installed > /data/rhcsa/day06/packages.txt
systemctl status sshd > /data/rhcsa/day06/sshd.txt
crontab -l > /data/rhcsa/day06/crontab.txt
chronyc sources -v > /data/rhcsa/day06/chrony.txt
