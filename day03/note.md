# Day03 学习笔记
日期：2026年03月28日
学习主题：磁盘IO性能、文件查找、日志查看与过滤

## 一、今日学习内容
1. 磁盘IO性能排查
   - vmstat：查看系统整体CPU、内存、IO负载
   - iostat：查看磁盘读写繁忙程度，定位IO瓶颈

2. 文件查找命令
   - find：按文件名、文件大小搜索系统文件
   - which：查看命令所在路径
   - 查找大文件，用于磁盘满时快速定位占用空间的文件

3. 日志排查基础
   - tail -f：实时滚动查看系统日志
   - tail -n：查看日志最后N行
   - grep：过滤日志中的 error、fail、warn 等关键字
   - wc -l：统计错误行数

## 二、掌握的核心命令
- vmstat 1 3
- iostat 1 3 / iostat -x 1 3
- find /etc -name "*.conf"
- find / -type f -size +100M
- which
- tail -f /var/log/messages
- grep -i error /var/log/messages

## 三、学习目标
- 学会判断系统卡顿是否由磁盘IO引起
- 能快速找到配置文件、大文件
- 能从系统日志中筛选关键报错信息
