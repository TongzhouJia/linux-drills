cat > /usr/local/bin/backup.sh <<'EOF'
#!/bin/bash
echo "backup ran at $(date)" >> /var/log/backup.log
EOF

chmod +x /usr/local/bin/backup.sh
/usr/local/bin/backup.sh
./usr/local/bin/backup.sh
sh -c /usr/local/bin/backup.sh
cat /usr/local/bin/backup.sh
cat /var/log/backup.log 
vim /etc/systemd/system/backup.service
vi /etc/systemd/system/backup.service
vi /etc/systemd/system/backup.timer
systemctl daemon-reload
systemctl enable --now backup.timer
systemctl is-enabled backup.timer
systemctl is-active backup.timer
systemctl status backup.timer --no-pager
systemctl list-timers backup.timer
systemctl start backup.service
systemctl status backup.service --no-pager
journalctl -u backup.service --no-pager
cat /var/log/backup.log
systemctl list-timers --all --no-pager > /root/timers.txt
cat /root/timers.txt
systemctl list-timers --all 
systemctl list-timers
systemctl list-timers --all 
systemd-analyze calendar "*-*-* 02:00:00"
systemd-analyze calendar --iterations=5 "*-*-* 02:00:00"
systemd-analyze calendar --iterations=3 "Mon *-*-* 09:00:00"
systemd-analyze calendar daily weekly monthly
systemd-analyze timespan "15min"
systemd-analyze timestamp "2026-08-20" 
vim /etc/systemd/system/boottask.service
vi /etc/systemd/system/boottask.service
vi /etc/systemd/system/boottask.timer
systemctl daemon-reload
systemctl enable --now boottask.timer
systemctl list-timers boottask.timer
systemctl daemon-reload
systemctl restart backup.timer
systemctl enable --now backup.timer
systemctl is-enabled backup.timer
systemctl is-active backup.timer
systemctl list-timers backup.timer
