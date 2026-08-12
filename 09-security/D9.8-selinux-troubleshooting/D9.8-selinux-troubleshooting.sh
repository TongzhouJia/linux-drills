systemctl is-active auditd
getenforce
setenforce 0
getenforce
curl http://localhost
systemctl restart httpd
setenforce 1
systemctl restart httpd
getenforce
curl http://localhost/
ausearch -m AVC -ts recent
curl http://localhost/
echo hi > /root/index.html
  mv /root/index.html /var/www/html/
  curl http://localhost/
  curl -I  http://localhost/
dnf install -y setroubleshoot-server
setenforce 0
  curl -I  http://localhost/
setenforce 1
  curl -I  http://localhost/
ausearch -m AVC -ts recent
ausearch -m AVC -ts recent > avc.txt
ll
sealert -a /var/log/audit/audit.log
sealert -a /var/log/audit/audit.log > /root/sealert.txt
mkdir -p /root/backup
echo "hello from backup" > /root/backup/index.html
ls -Z /root/backup/index.html
mv /root/backup/index.html /var/www/html/
ls -Z /var/www/html/index.html
systemctl enable --now httpd
curl http://localhost/index.html
