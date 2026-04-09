# RHCSA Day02 笔记
日期：2026-04-09
环境：Rocky Linux 9

## 今日内容
1. LVM 基础概念：PV → VG → LV
2. 创建流程：pvcreate → vgcreate → lvcreate
3. 格式化与挂载：mkfs.xfs + mount + /etc/fstab
4. LV 在线扩容：lvextend + xfs_growfs
5. 查看命令：pvdisplay、vgdisplay、lvdisplay
6. 开机自动挂载配置

## 考试要点
- RHEL 9 默认文件系统为 xfs，扩容用 xfs_growfs
- 考试只考扩容，不考缩容
- 必须用 UUID 写入 /etc/fstab
- 扩容前先检查 VG 是否有剩余空间
- 配置完必须 mount -a 验证

## 核心命令
pvcreate、pvdisplay
vgcreate、vgdisplay、vgextend
lvcreate、lvdisplay、lvextend
mkfs.xfs、mount、/etc/fstab
xfs_growfs
