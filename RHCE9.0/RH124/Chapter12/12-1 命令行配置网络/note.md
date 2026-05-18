# 学习笔记
日期：2026-05-18
主题：系统日志架构

##  系统日志文件
- /var/log/messages：大多数系统日志都会在此处记录
- /var/log/secure：有关安全和系统认证的日志
- /var/log/maillog：有关邮件服务器的系统认证日志
- /var/log/cron：有关计划任务执行的系统日志
- /var/log/boot.log：与系统启动相关的非syslog控制台消息

## 保护journal日志
- journal log 保存在/run/log文件夹下
- systemd-journald的配置文件在/etc/systemd/journald.conf里
- 如果想要保护journal日志就需要修改配置文件里的Storage参数，分别是：<br>
***persistent,将日志存储在/var/log/journal目录中，该目录会在系统重启后保持不变***<br>
***volatile,将日志存储在/run/log/journal目录中，由于/run文件系统是临时的，仅存在于运行内存中，因此其中的数据在重启后会变化<br>***
***auto,如果/var/log/journal目录存在，则systemd-journald服务会使用持久存储，否则会使用临时存储<br>***
***none,请勿使用任何存储设备。系统会删除所有日志但是仍可以将日志进行转发***
