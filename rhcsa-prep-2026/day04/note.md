# RHCSA Day04 笔记
日期：2026-04-10
环境：Rocky Linux 9

## 今日内容
1. 用户与组管理：useradd、groupadd、usermod、passwd
2. 密码过期策略：chage
3. 文件权限：chmod、chown
4. ACL 访问控制：setfacl、getfacl
5. sudo 配置：visudo 普通用户提权
6. 权限排查与验证

## 考试要点
- 用户家目录默认 /home/用户名，useradd -m 强制创建
- 密码必须满足复杂度，可用 passwd 设置
- ACL 用于实现更精细的权限控制
- sudo 配置后必须用 sudo -l 验证
- chage 用于查看/修改密码有效期

## 核心命令
useradd, groupadd, usermod, passwd
chage, chmod, chown
setfacl, getfacl
visudo, sudo -l
id, ls -l
