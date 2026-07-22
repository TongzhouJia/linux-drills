man 5 passwd
echo "man 5 passwd" >/root/mananswer.txt
cat /root/mananswer.txt
man -k timezone 
man -k timezone > /root/tz_cmds.txt
dnf install -y httpd
ll /usr/share/doc/
ls /usr/share/doc/ >/root/httpd_doc.txt
man ls
man ls |grep -i  "modification"
man ls |grep -iC  "modification"
man ls |grep -i -C  "modification"
man ls |grep -i -C 3  "modification"
man ls |grep -i -C 10  "modification"
man ls |grep -i -C 10  "sort"
man ls
echo "-t" > /root/ls_time.txt
man chronyd
echo "/etc/chrony.conf" > /root/chrony_conf.txt
