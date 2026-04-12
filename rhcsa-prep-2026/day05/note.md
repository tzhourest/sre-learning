# RHCSA Day05 笔记
日期：2026-04-12
环境：Rocky Linux 9

## 今日内容
1. 查看 SELinux 状态：getenforce、sestatus
2. 切换模式：enforcing / permissive
3. 永久修改配置：/etc/selinux/config
4. 文件上下文查看：ls -Z、ps -Z
5. 临时修改上下文：chcon
6. 永久修改上下文：semanage fcontext + restorecon
7. 常见服务上下文：httpd、nginx 相关

## 考试要点
- 考试默认都是 enforcing 模式，不能随便关掉
- 修改默认目录时，SELinux 上下文一定会错
- 永久生效必须用 semanage + restorecon，不要依赖 chcon
- 排错优先看上下文、看日志

## 核心命令
getenforce
setenforce 0|1
sestatus
ls -Z
ps -Z
chcon
semanage fcontext
restorecon
/var/log/audit/audit.log
