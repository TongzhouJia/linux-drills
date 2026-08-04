useradd -u 1010 -c "DBA Admin"
useradd -u 1010 -c "DBA Admin" manny
ls /home/
useradd -s /sbin/nologin -M jack
ls /home/
grep jack /etc/passwd
cat /etc/passwd
bat /etc/passwd
useradd moe
ls /home/
usermod -s /bin/bash -c "DBA Staff" moe
useradd cindy
userdel -r cindy
ls /home
id cindy
useradd -d /data/jan -g dba_staff -m jan
groupadd dba_staff
useradd -d /data/jan -g dba_staff -m jan
id jan
ls -ld /data/jan
usermod -L manny
usermod -U manny
man usermod 
usermod -p 123 manny
usermod -U manny
passwd -S manny
passwd manny
