# RHCSA Day06 笔记
日期：2026-04-13
环境：Rocky Linux 9

## 今日内容
1. DNF 包管理：安装、删除、查询、查找命令所属包
2. systemd 服务管理：启动、开机自启、查看状态
3. 用户级定时任务 crontab
4. 时间同步服务 chrony

## 考试要点
- 安装软件一律用 dnf install -y
- 服务必须 enable 并 start，考试才给分
- crontab 格式：分 时 日 月 周
- chrony 是 RHEL 9 默认时间同步服务

## 核心命令
dnf install / remove / list / provides
systemctl enable --now / status / is-enabled
crontab -e / -l
chronyc sources -v
