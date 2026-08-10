ip a
setenforce 0
man setenforce
ll /etc
ll /etc/selinux/
vi /etc/selinux/config 
getenforce 
reboot
getenforce 
sestatus 
sestatus  > selinux_status.txt
setenforce 1
getenforce 
setenforce 0
getenforce 
echo "permissive" > /root/next_boot_mode.txt
