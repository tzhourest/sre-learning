# 查看磁盘信息
lsblk
fdisk -l

# 分区示例（以 /dev/sdb 为例，根据实际磁盘修改）
# fdisk /dev/sdb
# n → p → 1 → 回车 → +1G
# n → p → 2 → 回车 → +512M
# t → 2 → 82
# w

# 刷新分区表
partprobe

# 格式化文件系统
mkfs.xfs /dev/sdb1
mkswap /dev/sdb2

# 查看 UUID（写入 fstab 用）
blkid /dev/sdb1
blkid /dev/sdb2

# 创建挂载点并临时挂载
mkdir -p /data1
mount /dev/sdb1 /data1

# 启用 swap
swapon /dev/sdb2
swapon --show

# 查看挂载情况
df -h
mount

# 写入 /etc/fstab（示例，需替换为自己的 UUID）
# echo "UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx /data1 xfs defaults 0 0" >> /etc/fstab
# echo "UUID=yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy swap swap defaults 0 0" >> /etc/fstab

# 验证 fstab 配置是否正确
mount -a

# 作业输出目录
mkdir -p /data/rhcsa/day01
lsblk > /data/rhcsa/day01/lsblk.txt
fdisk -l > /data/rhcsa/day01/fdisk.txt
cat /etc/fstab > /data/rhcsa/day01/fstab.txt
mount > /data/rhcsa/day01/mount.txt
swapon --show > /data/rhcsa/day01/swap.txt
