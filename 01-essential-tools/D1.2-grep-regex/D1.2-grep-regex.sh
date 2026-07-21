cat /etc/passwd
cat /etc/passwd |grep "/sbin/nolo"
cut -d: -f1  /etc/passwd |grep "/sbin/nolo"
cat /etc/passwd |grep "/sbin/nolo" |cut -d: -f1
cat /etc/passwd |grep "/sbin/nologin" |cut -d: -f1
cat /etc/passwd |grep "/sbin/nologin" |cut -d: -f1 > root/nologin_users.txt
cat /etc/passwd |grep "/sbin/nologin" |cut -d: -f1 > /root/nologin_users.txt
cat /root/nologin_users.txt 
grep "/sbin/nologin" /etc/passwd
grep -i -r "PermitRootLogin" 
grep -i -r "PermitRootLogin" /etc
grep -i -r -l "PermitRootLogin" /etc
grep -i -r -l "PermitRootLogin" /etc > /root/rootlogin_files.txt 2> /dev/null 
cat /root/rootlogin_files.txt 
grep -i "error"|count
grep -i "error"|mt
grep -i "error"|wc 
grep -i "error"
grep -i "error" /var/log |wc
grep -ir "error" /var/log |wc
grep -ir "error" /var/log |wc -l
grep -ir "error" /var/log |wc -l > /rtto/errcount.txt
grep -ir "error" /var/log |wc -l > /root/errcount.txt
cat /root/errcount.txt 
grep -ir "error" /var/log |wc -l > /root/errcount.txt 2> /dev/null
cat /etc/passwd
cat /etc/ssh/sshd_config
cat /etc/ssh/sshd_config|grep -v "#"
cat /etc/ssh/sshd_config|grep -v "^#"|grep -v "^$"
cat /etc/ssh/sshd_config|grep -v "^#"|grep -v "^$">/root/sshd_active.txt
cat /root/sshd_active.txt 
cut -d: -f7 /etc/passwd
cut -d: -f7 /etc/passwd |grep "/bin/bash"
grep "/bin/bash$" /etc/passwd
grep "/bin/bash$" /etc/passwd>/root/bash_users.txt
cat /root/bash_users.txt
ip a|grep "inet"
ip a|grep "inet "
ip a|grep -w  "inet"
ip a|grep -w  "inet" >/root/ipv4.txt
