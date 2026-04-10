# RHCSA Day03 笔记
日期：2026-04-10
环境：Rocky Linux 9

## 今日内容
1. 查看网卡与连接：nmcli device, nmcli connection
2. 修改主机名 hostnamectl
3. 配置静态 IP、子网掩码、网关、DNS
4. 重启网络连接、生效
5. 测试网络连通性 ping / curl
6. 查看路由表 ip route

## 考试要点
- RHEL 9 只能用 nmcli，不能用旧版 network 服务
- 网卡名一般是 ens160、ens33、eth0 之类
- 修改配置后必须 nmcli connection up 才能生效
- DNS 至少配置 2 个
- 主机名修改用 hostnamectl 永久生效

## 核心命令
nmcli device status
nmcli connection show
nmcli connection modify
nmcli connection up
hostnamectl
ip addr
ip route
ping
