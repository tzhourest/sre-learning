ps aux
ps aux | head
ps aux | grep ssh
ps aux --sort=-%cpu
ps aux --sort=-%mem

top
# 进入 top 后按：
# 1  看CPU核心
# P  按CPU排序
# M  按内存排序
# q  退出

htop

# 找进程
pidof sshd
pgrep sshd

# 杀进程
kill 1234        # 换成你查到的PID
kill -9 1234
pkill nginx
killall sleep

# 后台运行
sleep 3000 &
jobs
fg 1
bg 1
# 找进程
pidof sshd
pgrep sshd

# 杀进程
kill 1234        # 换成你查到的PID
kill -9 1234
pkill nginx
killall sleep

# 后台运行
sleep 3000 &
jobs
fg 1
bg 1
# 系统负载
uptime
w

# 内存
free -h
cat /proc/meminfo

# 磁盘
df -h
du -sh /root
du -sh /* | sort -rh | head -10

# 开机时间
uptime
last reboot
