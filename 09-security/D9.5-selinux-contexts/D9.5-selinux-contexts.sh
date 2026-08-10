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
