## 前期学习记录
此前已完成 Linux 基础、文本处理、服务管理、脚本编写、性能排查，
现进入 RHCSA 专项备考阶段。

# RHCSA 备考笔记 (EX200)
基于 Rocky Linux 9 / RHEL 9 的 RHCSA 实战练习笔记，每日任务 + 命令脚本 + 易错点总结。

## 学习目标
- 熟练掌握 RHEL 系统管理
- 完成 RHCSA (EX200) 考试
- 具备 Linux 运维基础排障能力

## 目录结构
- day01/  磁盘分区、文件系统、fstab、swap
- day02/  LVM 逻辑卷管理（PV/VG/LV/扩容）
- day03/  nmcli 网络配置
- day04/  用户、权限、ACL、sudo
- day05/  SELinux 管理与排错
- day06/  DNF 软件仓库、服务管理
- day07/  系统启动排错、root 密码重置

## 核心命令汇总
- lsblk, fdisk, mkfs.xfs, mount, fstab
- pvcreate, vgcreate, lvcreate, lvextend
- nmcli, hostnamectl, chronyc
- useradd, setfacl, visudo
- chcon, semanage, restorecon
- systemctl, firewall-cmd
