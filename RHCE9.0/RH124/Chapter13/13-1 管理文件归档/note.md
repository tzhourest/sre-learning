# 学习笔记
日期：2026-05-21
主题：管理文件归档

##  tar命令的常见选项
### 必要的tar命令
- -c 或 --create ：创建一个存档文件
- -t 或 --list ：列出存档文件中的内容
- -x 或 --extract ：解压一个存档文件

### 常见的tar命令
- -v 或 --verbose ：在执行tar操作时显示正在归档或解压的文件
- -f 或 --file ：在该选项后跟上要创建或打开的归档文件名
- -p 或 --preserve-permissions ：在解压时保留原始文件的权限
- --xattrs ：启用扩展属性支持，并存储扩展文件属性
- --selinux ：启用SELinux上下文支持，并存储SELinux文件上下文
