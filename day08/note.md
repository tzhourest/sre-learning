# Day08 学习笔记
日期：2026-04-05
主题：磁盘分区、格式化、挂载与 fstab 开机挂载

## 学习内容
1. 磁盘查看
- lsblk：块设备概览
- fdisk -l：详细磁盘信息
- df -h：挂载情况

2. 磁盘分区
- 使用 fdisk 进行分区：n p w
- 分区设备名一般为 /dev/sdb1

3. 格式化文件系统
- mkfs.xfs 格式化为 xfs
- mkfs.ext4 格式化为 ext4

4. 挂载与卸载
- mount 临时挂载
- umount 卸载
- mkdir 创建挂载点

5. 开机自动挂载
- /etc/fstab 配置
- mount -a 测试配置是否正确

## 核心命令
lsblk
fdisk
mkfs.xfs / mkfs.ext4
mount / umount
/etc/fstab
