# Day03 命令合集：磁盘IO、文件查找、日志排查

# 安装工具
dnf install -y sysstat

# 1. 系统整体状态（CPU/内存/IO）
vmstat 1 3

# 2. 磁盘IO查看
iostat 1 3
iostat -x 1 3

# 3. 文件查找
find /etc -name "*.conf"
find / -name nginx.conf 2>/dev/null
find / -type f -size +100M 2>/dev/null

# 4. 查看命令路径
which ls
which top
which sshd

# 5. 日志查看
tail -n 20 /var/log/messages
tail -f /var/log/messages

# 6. 日志过滤关键字
grep -i error /var/log/messages
grep -i fail /var/log/messages
grep -i warn /var/log/messages

# 7. 统计错误数量
grep -i error /var/log/messages | wc -l

# 今日作业：输出结果到文件
mkdir -p /data/sre/day03
df -h > /data/sre/day03/df.txt
vmstat 1 3 > /data/sre/day03/vmstat.txt
iostat 1 3 > /data/sre/day03/iostat.txt
find /etc -name "*.conf" | head -20 > /data/sre/day03/find.txt
grep -i error /var/log/messages > /data/sre/day03/error_log.txt
ls -lh /data/sre/day03/
