<img width="466" height="68" alt="image" src="https://github.com/user-attachments/assets/95db7c29-a8f4-4284-9b9a-8bb074ba5269" /># 学习笔记
日期：2026-05-06
主题：用户和用户组概念

## 用户
- ID或UID是识别用户的关键信息
- 用户分为：超级用户、系统用户以及常规用户三类

##  用户的相关信息
- 在/etc/passwd文件中的每一行都包含一个用户的信息，例如：
- user01:x:1000:1000:用户一:/home/user01:/bin/bash
- user01:此用户的用户名
- x：用户的加密密码，过去曾经存于此处
- 1000：此用户账户的唯一识别码
- 1000：此用户账户所属主组的GID编号
- 用户一：关于此用户的简短评论、描述或真实姓名
- /home/user01：这是用户的主目录，也是登录shell启动时的初始工作目录
- /bin/bash:此用户在登录时运行的默认shell程序。某些账户使用/sbin/nologin shell来禁止该账户进行交互式登录。
