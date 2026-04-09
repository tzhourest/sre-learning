# RHCSA Day01 笔记
日期：2026-04-09
环境：Rocky Linux 9

## 今日内容
1. 磁盘查看：lsblk、fdisk -l
2. 分区操作：fdisk 创建普通分区 + swap 分区
3. 文件系统：mkfs.xfs、mkswap
4. 挂载：mount、umount、swapon、swapoff
5. 开机自动挂载：/etc/fstab、UUID、mount -a 验证
6. swap 启用与查看

## 考试要点
- 分区设备名通常为 /dev/sdb、/dev/sdc 等
- swap 分区需用 t 命令改为 82 类型
- 推荐使用 UUID 写入 fstab，更稳定
- 配置 fstab 后必须执行 mount -a 测试
- xfs 是 RHEL 9 默认文件系统

## 核心命令
lsblk, fdisk, partprobe
mkfs.xfs, mkswap
mount, umount, swapon
blkid, /etc/fstab, mount -a
