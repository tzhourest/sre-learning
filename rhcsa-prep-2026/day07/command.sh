# ==============================================
# RHCSA Day07 系统排错与密码重置
# ==============================================

# 1. 查看当前挂载与 fstab
cat /etc/fstab
mount
lsblk

# 2. 模拟 fstab 错误（练习修复用）
mkdir -p /test
echo "UUID=wrong-uuid /test xfs defaults 0 0" >> /etc/fstab

# 检查 fstab 是否有错（考试必做）
mount -a

# 修复 fstab 错误
# vim /etc/fstab  # 删掉错误那行
mount -a

# 3. 查看系统关键信息（作业输出）
mkdir -p /data/rhcsa/day07
cat /etc/fstab > /data/rhcsa/day07/fstab.txt
lsblk > /data/rhcsa/day07/lsblk.txt
mount > /data/rhcsa/day07/mount.txt
systemctl --failed > /data/rhcsa/day07/failed.txt

# 重启进入 GRUB 后按 e
# 找到 linux 行末尾加入：
rd.break console=tty0

# Ctrl+x 进入后执行：
mount -o remount,rw /sysroot
chroot /sysroot
passwd
# 输入两次新密码

touch /.autorelabel
exit
reboot
