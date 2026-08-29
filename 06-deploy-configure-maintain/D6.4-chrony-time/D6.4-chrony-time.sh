rpm -q chrony || dnf install -y chrony
systemctl enable --now chronyd
timedatectl 
rpm -q chrony
dnf install -y chrony
vi /etc/chrony.conf
cp /etc/chrony.conf /etc/chrony.conf.bak
vi /etc/chrony.conf
systemctl restart chronyd
chronyc sources
chronyc sources > /root/sources.txt
cat /root/sources.txt
timedatectl set-timezone Asia/Shanghai
timedatectl list-timezones | grep -i shanghai
timedatectl list-timezones | grep -i asia | head -20
timedatectl
date
timedatectl set-ntp true
timedatectl
chronyc tracking > /root/tracking.txt
cat /root/tracking.txt
