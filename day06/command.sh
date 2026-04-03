# Day06 超级加强版

# Nginx 实战
dnf install -y nginx
systemctl start nginx
systemctl enable nginx
ss -tulnp | grep nginx
curl 127.0.0.1

# 制造失败并排查
echo "aaaaa" >> /etc/nginx/nginx.conf
systemctl restart nginx || true
systemctl status nginx
journalctl -u nginx --no-pager | head -20

# 恢复配置
cp /etc/nginx/nginx.conf.default /etc/nginx/nginx.conf
systemctl restart nginx

# crontab 定时任务
# 编辑用 crontab -e
# 格式：分 时 日 月 周 命令

# 自定义服务
cat > /root/my_script.sh <<'EOF'
#!/bin/bash
echo "$(date) my service running" >> /tmp/my_service.log
EOF
chmod +x /root/my_script.sh

cat > /etc/systemd/system/myservice.service <<EOF
[Unit]
Description=My Test Service
[Service]
Type=oneshot
ExecStart=/root/my_script.sh
[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl start myservice
systemctl status myservice

# 作业输出
mkdir -p /data/sre/day06
systemctl status nginx > /data/sre/day06/nginx_status.txt
crontab -l > /data/sre/day06/crontab.txt
journalctl -u nginx --no-pager | head -20 > /data/sre/day06/nginx_log.txt
ls /etc/systemd/system/ > /data/sre/day06/systemd_files.txt
