# 1. 创建组
groupadd devteam
groupadd opsteam

# 2. 创建用户
useradd -m tom
useradd -m jerry
usermod -aG devteam tom
usermod -aG opsteam jerry

# 3. 设置密码（考试会给密码，自己练习随便设）
echo "123456" | passwd --stdin tom
echo "123456" | passwd --stdin jerry

# 4. 查看用户信息
id tom
id jerry
chage -l tom

# 5. 创建测试目录并设置权限
mkdir -p /data/dev
chown root:devteam /data/dev
chmod 770 /data/dev

# 6. ACL 精细权限
setfacl -m u:jerry:rx /data/dev
setfacl -m g:opsteam:r-x /data/dev
getfacl /data/dev

# 7. sudo 配置（允许 tom 无密码执行所有命令）
echo "tom ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/tom

# 验证 sudo
sudo -l -U tom

# 8. 作业输出
mkdir -p /data/rhcsa/day04
cat /etc/passwd | tail -5 > /data/rhcsa/day04/passwd.txt
cat /etc/group | tail -5 > /data/rhcsa/day04/group.txt
getfacl /data/dev > /data/rhcsa/day04/acl.txt
sudo -l -U tom > /data/rhcsa/day04/sudo.txt
ls -ld /data/dev > /data/rhcsa/day04/perm.txt
