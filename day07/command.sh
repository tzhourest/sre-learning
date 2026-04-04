# 用户与组
whoami
id
cat /etc/passwd
cat /etc/group

useradd testuser
passwd testuser
groupadd testgroup
usermod -aG testgroup testuser
userdel -r testuser

# 权限
ls -l /etc/passwd
touch test.txt
chmod 644 test.txt
chmod 755 test.txt
chown testuser:testgroup test.txt

# 特殊权限
chmod u+s /usr/bin/cat
chmod g+s testdir
chmod o+t /tmp

# sudo
visudo

# 实战
useradd loguser
groupadd loggroup
usermod -aG loggroup loguser
mkdir -p /data/mylog
chown root:loggroup /data/mylog
chmod 770 /data/mylog

# 作业
mkdir -p /data/sre/day07
ls -l /etc/passwd > /data/sre/day07/passwd.txt
id > /data/sre/day07/id.txt
ls -lh /data > /data/sre/day07/data_perm.txt
