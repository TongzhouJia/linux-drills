dnf install -y at cronie
systemctl enable --now atd crond
systemctl is-active atd crond
mkdir -p /coolfiles
at now +10 minutes <<'EOF'
echo "This task was easy!" > /coolfiles/at_job.txt
EOF

cat /coolfiles/at_job.txt 
atq
journalctl -u atd --since "-15min"
journalctl -u atd --since "-30min"
at now +20 minutes <<'EOF'
echo test2 > /tmp/at2.txt
EOF

at now +30 minutes <<'EOF'
echo test3 > /tmp/at3.txt
EOF

atq
atq EOF atq.txt
atq EOF
atq atq.txt
atq
atq > atq.txt
catatq.txt
cat catatq.txt
cat atq.txt
atrm 3
atq
crontab -e
crontab -l
cat /var/spool/cron/root
ll /var/spool/cron
id manny
crontab -u manny -e
ls -l /home/manny/report.sh
touch /home/manny/report.sh
ls -l /home/manny/report.sh
touch +x /home/manny/report.sh
ls -l /home/manny/report.sh
chmod +x /home/manny/report.sh
ls -l /home/manny/report.sh
crontab -u manny -l
ls -l /var/spool/cron/manny
crontab -u manny -l
cat /var/spool/cron/manny 
cat /etc/crontab 
crontab -e
dnf install -y at cronie
systemctl enable --now atd crond
systemctl is-active atd crond
ls /coolfiles/
at now +10 minutes <<'EOF'
echo "This task was easy!" > /coolfiles/at_job.txt
EOF

at now +10 minutes
atq
at -c 3
at -c 4
at -c 3
atq
at -c 4
ls /var/spool/at
ll /var/spool/at
journalctl -u atd --since "-15min"
ip a
ll
history -a
history
systemctl enable --now atd
systemctl enable --now crond
ls /var/spool/at/
at now +1 minutes <<'EOF'
echo "This task was easy!" > /coolfiles/at_job.txt
EOF
journalctl -u atd --since "-15min"
journalctl -u atd --since "-15min"
at now +20 minutes <<'EOF'
echo test2 > /tmp/at2.txt
EOF
at now +30 minutes <<'EOF'
echo test3 > /tmp/at3.txt
EOF
atq > /root/atq.txt
cat /root/atq.txt
at -d 10
journalctl -u atd --since "-15min"
atq
crontab -e
crontab -l
cat /var/spool/cron/root
id manny
ll /home/manny/report.sh
cat /home/manny/report.sh
chmod +x /home/manny/report.sh
crontab -u manny -e
crontab -u manny -l
ls -l /var/spool/cron/manny
su -

# --- 2026-10-20 redo ---
systemctl enable --now atd crond
systemctl is-active atd crond
rpm -q at cronie || dnf install -y at cronie
systemctl enable --now atd crond
systemctl is-active atd crond
systemctl enable --now atd crond
systemctl status
systemctl enable --now atd crond
reboot
systemctl enable --now atd crond
mkdir -p /coolfiles
echo 'echo "This task was easy!" > /coolfiles/at_job.txt' | at now + 10 minutes
at now +10 minutes
atq
journalctl -u atd --since "-15min"
echo test2 >/tmp/at2.txt|at now +20 minutes
echo test3 >/tmp/at3.txt|at now +20 minutes
atq
atrm 14
atq
crontab -e
cat /var/log/messages
cat /var/log/messages |grep pass this test
cat /var/log/messages |grep "pass this test"
crontab -l
cat /var/spool/cron/root
id manny
ll /home/manny/report.sh
touch /home/manny/report.sh
chmod +x /home/manny/report.sh
crontab -u manny -e
crontab -u manny -l
crontab -e
crontab -l
cat /tmp/every5.log
ll /usr/local/bin/mytask.sh
touch /usr/local/bin/mytask.sh
chmod +x /usr/local/bin/mytask.sh
cat /tmp/every5.log
journalctl -u atd --since "-15min"
