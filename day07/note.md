# Day07 学习笔记
日期：2026-04-04
主题：Linux 用户、组、文件权限与 sudo

## 内容
1. 用户与组管理
- useradd、passwd、groupadd、usermod
- /etc/passwd、/etc/group

2. 文件权限 rwx
- r=4 w=2 x=1
- chmod 修改权限
- chown 修改属主、属组

3. 特殊权限
- SUID、SGID、粘滞位 sticky bit

4. sudo 配置
- visudo 编辑规则
- 普通用户限制性提权

5. 实战
- 创建受限用户，仅管理指定目录

## 核心命令
whoami, id, useradd, groupadd
chmod, chown, visudo, su
