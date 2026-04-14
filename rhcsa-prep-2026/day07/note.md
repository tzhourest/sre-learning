# RHCSA Day07 笔记
日期：2026-04-14
环境：Rocky Linux 9 / RHEL 9

## 今日内容
1. 单用户模式重置 root 密码
2. 修复 /etc/fstab 错误导致无法开机
3. 系统简单排错思路

## 考试要点
- 进单用户靠编辑 GRUB 内核行：添加 `rd.break`
- 根目录默认在 `/sysroot`，需重新挂载为可写
- 密码修改后必须 `touch /.autorelabel` 让 SELinux 重新打标签
- fstab 写错是最常见开机故障，用 mount -a 提前检查
