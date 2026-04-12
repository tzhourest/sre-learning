# RHCSA Day06 笔记
日期：2026-04-12
环境：Rocky Linux 9

## 今日内容
1. DNF 软件管理：安装、查询、删除
2. 查看命令所属包：dnf provides
3. systemd 服务管理：启动、停止、开机自启、状态
4. 定时任务 crontab：用户级计划任务
5. 时间同步 chrony

## 考试要点
- 安装包用 dnf install -y
- 服务必须设置 enable 开机自启
- 定时任务分分钟小时日月周，格式别写错
- 时间同步用 chrony，不是 ntp

## 核心命令
dnf install / remove / provides / list
systemctl start / stop / restart / enable / status
crontab -e / -l
chronyc sources
