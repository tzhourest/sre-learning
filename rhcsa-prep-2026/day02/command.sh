# 1. 准备分区（假设 /dev/sdb1 已分区，类型 8e）
fdisk /dev/sdb
# n → p → 1 → 回车 → +2G
# t → 1 → 8e
# w
partprobe

# 2. 创建 PV、VG、LV
pvcreate /dev/sdb1
pvdisplay

vgcreate vgdata /dev/sdb1
vgdisplay

lvcreate -L 1G -n lvdata vgdata
lvdisplay

# 3. 格式化并挂载
mkfs.xfs /dev/mapper/vgdata-lvdata
mkdir /mnt/lvdata
mount /dev/mapper/vgdata-lvdata /mnt/lvdata
df -h

# 4. 写入 fstab（用 UUID）
blkid /dev/mapper/vgdata-lvdata
# echo "UUID=xxxx /mnt/lvdata xfs defaults 0 0" >> /etc/fstab
mount -a

# 5. LV 在线扩容（考试必考）
lvextend -L +500M /dev/mapper/vgdata-lvdata
xfs_growfs /dev/mapper/vgdata-lvdata
df -h

# 6. 作业输出
mkdir -p /data/rhcsa/day02
pvdisplay > /data/rhcsa/day02/pv.txt
vgdisplay > /data/rhcsa/day02/vg.txt
lvdisplay > /data/rhcsa/day02/lv.txt
df -h > /data/rhcsa/day02/df.txt
cat /etc/fstab > /data/rhcsa/day02/fstab.txt
