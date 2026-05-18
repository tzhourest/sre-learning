# 学习笔记
日期：2026-05-18
主题：命令行配置网络

## 查看网络信息
- nmcli dev status 查看所有网络设备的状态
- nmcli con show 查看所有的配置文件

## 添加网络配置文件
- 以下示例为名为"eno2"的eno2接口添加一个配置文件。该配置文件的网络信息使用了DHCP服务，并且在启动设备时会自动连接。<br>
  系统还通过在本地链路上监听路由器通告来获取IPv6网络设置。配置文件的名称包含了"nmcli"命令的"conname"参数的值，即"eno2"。<br>
  "con-name"参数的值被保存到/etc/NetworkManager/system-connections/eno2.nmconnection文件中。<br>
***nmcli con add con-name eno2 type ethernet ifname eno2***
- 以下示例为eno3设备创建了eno3配置文件，并设置了静态的IPV4网络参数。此命令将IP地址192.168.0.5配置为具有24位网络前缀<br>
网络网关为192.168.0.254。如果添加的配置文件名称已经存在，则nmcli con add命令将失败。
***nmcli con add con-name eno3 type ethernet ifname eno3 ipv4.addresses 192.168.0.5/24 ipv4.gateway 192.168.0.254***

## 管理网络配置文件
- nmcli con up con-name 激活该配置文件
