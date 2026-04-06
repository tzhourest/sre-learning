# 变量与参数
echo $SHELL
name="sre"
echo $name

# if 判断
if [ 15 -gt 10 ]; then echo "yes"; fi

# 循环
for i in 1 2 3; do echo $i; done

# 磁盘监控脚本
cat > disk_mon.sh <<EOF
#!/bin/bash
use=\$(df -h | grep /\$ | awk '{print \$5}' | tr -d %)
if [ \$use -gt 80 ]; then
    echo "磁盘警告: \$use%"
else
    echo "磁盘正常: \$use%"
fi
EOF

chmod +x disk_mon.sh
sh disk_mon.sh

# 日志清理脚本
cat > log_clean.sh <<EOF
#!/bin/bash
logdir="/data/sre/day09"
mkdir -p \$logdir
for i in {1..10}; do
    echo "log \$i" >> \$logdir/test.log
done
find \$logdir -name "*.log" -mtime +3 -delete
EOF

sh log_clean.sh

# 作业
mkdir -p /data/sre/day09
echo $PATH > /data/sre/day09/path.txt
df -h > /data/sre/day09/disk.txt
sh disk_mon.sh > /data/sre/day09/result.txt
