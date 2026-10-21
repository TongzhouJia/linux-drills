systemctl enable --now httpd
systemctl is-active httpd
systemctl is-enabled httpd
systemctl status httpd --no-pager
ls -l /etc/systemd/system/multi-user.target.wants/httpd.service
systemctl disable --now httpd
systemctl is-active httpd
systemctl is-enabled httpd
systemctl status httpd
systemctl mask httpd
systemctl is-enabled httpd
systemctl unmask httpd
systemctl is-enabled httpd
systemctl start httpd
systemctl stop httpd
systemctl status httpd
systemctl is-activity httpd
systemctl is-active  httpd
systemctl is-enabled httpd
systemctl enable  httpd
systemctl is-enabled firewalld > /root/enabled.txt
cat /root/enabled.txt

# --- 2026-10-20 redo ---
ls -l /etc/systemd/system/multi-user.target.wants/httpd.service
systemctl disable --now httpd
systemctl is-active httpd
systemctl is-enabled httpd
systemctl mask httpd
systemctl is-enabled httpd
systemctl start httpd
ls -l /etc/systemd/system/httpd.service
systemctl unmask httpd
systemctl is-enabled httpd
systemctl start httpd
systemctl stop httpd
systemctl --failed --no-pager
systemctl list-units
systemctl list-units --type=service
systemctl is-enabled firewalld
