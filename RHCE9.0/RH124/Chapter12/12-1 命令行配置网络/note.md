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
