# Day08 磁盘管理

# 查看磁盘
lsblk
fdisk -l
df -h

# 分区（根据实际磁盘修改，如 sdb）
# fdisk /dev/sdb
# n → p → 回车 → 回车 → w

# 格式化
# mkfs.xfs /dev/sdb1

# 创建挂载点并挂载
mkdir -p /data2
# mount /dev/sdb1 /data2

df -h

# 配置开机挂载
# echo "/dev/sdb1 /data2 xfs defaults 0 0" >> /etc/fstab
mount -a

# 测试卸载
# umount /data2

# 小实战
mkdir -p /test_disk
# mount /dev/sdb1 /test_disk
echo "test" > /test_disk/test.txt
ls /test_disk

# 作业输出
mkdir -p /data/sre/day08
lsblk > /data/sre/day08/lsblk.txt
fdisk -l > /data/sre/day08/fdisk.txt
df -h > /data/sre/day08/df.txt
cat /etc/fstab > /data/sre/day08/fstab.txt
