getenforce 
ls -dZ /var/www/html
dnf install httpd -y
ls -dZ /var/www/html
ls -d /var/www/html
ls -dl /var/www/html
ls -dl /var/www/html > context.txt
dnf install policycoreutils-python-utils -y
mkdir /web
echo "selinux" >/web/index.html
ls -Z /web
semanage fcontext -a -t httpd_sys_content_t '/web(/.*)?'
restorecon -Rv /web
    touch /root/testfile.txt
chcon -t tmp_t /root/testfile.txt
ls -Z /root/testfile.txt
restorecon -v /root/testfile.txt
ll /root/testfile.txt
ll Z /root/testfile.txt
ll -Z /root/testfile.txt
ps -C sshd
ps -C sshd -Z
ps -C sshd -Z > /root/proc_context.txt
id -Z >> /root/proc_context.txt
mkdir -p /data/myapp/config
touch /data/myapp/config/settings.conf
semanage fcontext -a -t httpd_sys_content_t '/data/myapp(/.*)?'
restorecon -Rv /data/myapp
ip a
ps -eZ | grep sshd
id
id root
id -u
id -Z
id -g
id -G
matchpathcon
matchpathcon /var/www/html/test.html
chcon -t samba_share_t /var/www/html/test.html
ls -Z /var/www/html/test.html
cat /var/www/html/test.html
ll /var/www/html/
echo "hello" > /var/www/html/test.html
ls -Z /var/www/html/test.html
chcon -t samba_share_t /var/www/html/test.html
ls -Z /var/www/html/test.html
matchpathcon /var/www/html/test.html
restorecon -v /var/www/html/test.html
semanage fcontext -l
semanage fcontext -l -C
getenforce
curl -I http://localhost/
systemctl status httpd
systemctl start httpd
man systemctl
systemctl reload httpd
systemctl status httpd
curl -I http://localhost/
ausearch -m avc -ts recent
curl -I http://localhost/
sealert -a /var/log/audit/audit.log
ll /var/www/html
cat /var/www/html/test.html 
cat /etc/httpd/conf/httpd.conf
bat /etc/httpd/conf/httpd.conf
vi /etc/httpd/conf/httpd.conf
ll /var/www/html/
