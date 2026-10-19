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

# --- 2026-10-19 redo ---
cat /etc/passwd
pslogins
getent passwd
compgen -u
sudo dnf install util-linux-user
pslogins
lslogins
column -t -s: /etc/passwd
lslogins -a
getent
getent -a
getentry passwd
getent passwd
column -t -s: getent passwd
getent passwd |column -t -s:
column -t -s: /etc/passwd
grep '^manny:' /etc/passwd
column -t -s: /etc/passwd
column -t -s: /etc/passwd |nl
column -t -s: /etc/passwd |nl -ba
column -t -s: /etc/passwd |nl -ab
column -t -s: /etc/passwd |nl -w 3
nl -n rz
column -t -s: /etc/passwd |nl -n rz
column -t -s: /etc/passwd |nl -n rn
column -t -s: /etc/passwd |nl -n ln
column -t -s: /etc/passwd |nl -n lz
column -t -s: /etc/passwd |nl -n rz
column -t -s: /etc/passwd |nl -n z
column -t -s: /etc/passwd |nl 
cat /etc/passwd
id manny
id root
column -t -s: /etc/passwd |nl 
useradd -u 1010 -c "DBA Admin" manny
id manny
grep manny /etc/passwd
useradd -s /sbin/nologin -M jack
ls -d /home
ls -d /home/
ls /home/
ls /home/ |grep moe
useradd -s /sbin/nologin -M moe
usermod -s /bin/bash -c "DBA Staff" moe
cat /etc/passwd
cat /etc/passwd |grep moe
ll /home
ll /home |grep moe
usermod -d /home/moe -m moe
ll /home |grep moe
cp -r /etc/skel /home/moe
ll /home |grep moe
chown -R moe:moe /home/moe
chmod 700 /home/moe
ls -la /etc/skel
groupadd -f dba_staff
useradd -d /data/jan -m -g dba_staff jan
id jan
ll -d /data/jan
ll home
ll /home
ll /data
usermod -L manny
passwd -S manny
usermod -U manny
usermod -p manny
usermod -p 1 manny
usermod -U manny
passwd -S manny
grep '^manny:' /etc/shadow
usermod -l manny
usermod -L manny
passwd -S manny
grep '^manny:' /etc/shadow
usermod -U manny
grep '^manny:' /etc/shadow
passwd -S manny
passwd manny
