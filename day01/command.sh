pwd
ls
ls -l
ls -la
cd /home
cd ~
cd ..
cd -
mkdir test
mkdir -p a/b/c
touch 1.txt
cp 1.txt 2.txt
mv 2.txt test/
rm -f 1.txt
rm -rf test
tree
echo "hello sre" > test.txt
cat test.txt
more test.txt
less test.txt
head test.txt
tail test.txt
ls -l
chmod 755 test.txt
chmod u+x test.txt
chown root:root test.txt
id
whoami
useradd testuser
passwd testuser
groupadd testgroup
usermod -aG testgroup testuser
id testuser
find / -name "*.conf"
find /etc -name "*.repo"
which ls
whereis ls
# 1. 创建目录结构
mkdir -p /data/sre/logs

# 2. 新建文件并写入内容
echo "Day01 Linux 学习完成" > /data/sre/logs/day01.txt

# 3. 查看权限、修改权限
ls -l /data/sre/logs/day01.txt
chmod 644 /data/sre/logs/day01.txt

# 4. 查看内容
cat /data/sre/logs/day01.txt

# 5. 查看系统信息
df -h
free -h
ip addr
