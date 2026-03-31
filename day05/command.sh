# Day05 文本处理三剑客：grep awk sed

# grep 过滤
grep "error" /var/log/messages
grep -i "error" /var/log/messages
grep -n "error" /var/log/messages
grep -v "null" /var/log/messages
grep sshd /var/log/secure

# awk 按列取值
awk -F: '{print $1,$3}' /etc/passwd
ss -an | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

# sed 替换
echo "hello sre" > test.txt
sed 's/hello/hi/g' test.txt
sed -i 's/hi/HELLO/g' test.txt
cat test.txt

# 模拟日志实战
echo "2025-12-25 INFO 启动成功" > app.log
echo "2025-12-25 ERROR 连接数据库失败" >> app.log
echo "2025-12-25 WARN 磁盘使用率85%" >> app.log

grep ERROR app.log
grep WARN app.log
sed 's/ERROR/ERRORED/g' app.log

# 作业输出
mkdir -p /data/sre/day05
grep sshd /var/log/secure > /data/sre/day05/ssh_log.txt
awk -F: '{print $1,$3}' /etc/passwd > /data/sre/day05/user.txt
cp app.log /data/sre/day05/
