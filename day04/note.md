# Day04 学习笔记
日期：2026-03-30
主题：网络信息、端口监听、连通性排查

## 学习内容
1. 本机网络信息查看
- ip addr / ifconfig：查看本机IP、网卡信息
- ip route / route -n：查看网关与路由

2. 端口与进程监听
- ss -tulnp / netstat：查看正在监听的端口和对应进程
- lsof -i :端口：定位占用端口的程序

3. 网络连通性测试
- ping：测试网络是否通
- telnet / curl：测试端口是否开放
- mtr / traceroute：追踪路由，排查丢包
- nslookup / dig：DNS解析测试

4. 防火墙管理
- firewalld 状态查看
- 开放端口、重载配置

## 核心命令
ip addr
ss -tulnp
ping
telnet
mtr
firewall-cmd

## 学习目标
能够排查：服务不通、端口占用、网络超时、防火墙拦截等常见问题。
