getenforce 
getsebool -a
getsebool -a |grep httpd
semanage boolean -l | grep httpd
semanage boolean -l | grep httpd >httpd_bools.txt
wc -l /root/httpd_bools.txt
cat /root/httpd_bools.txt
getsebool httpd_can_network_connect
systemctl enable --now httpd
ausearch -m AVC -ts recent -i
setsebool -P httpd_can_network_connect on
getsebool httpd_can_network_connect
semanage bool -l
semanage boolean -l
semanage boolean -l |grep httpd_can
semanage boolean -l  C
semanage boolean -l  -C
getsebool httpd_enable_homedirs
semanage boolean -l  |grep httpd_ena
semanage boolean -l | grep -i ftp
setsebool -P ftp_home_dir on
setsebool -P tftp_home_dir on
getsebool tftp_home_dir
getsebool httpd_enable_homedirs
setsebool -P httpd_enable_homedirs on
semanage boolean -l -C
setsebool -P httpd_enable_homedirs off
setsebool httpd_enable_homedirs on
semanage boolean -l grep httpd_ena
semanage boolean -l |grep httpd_ena
setsebool -P httpd_enable_homedirs on
semanage boolean -l |grep httpd_ena
cat /etc/selinux/targeted/active/booleans.local
