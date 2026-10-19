for g in dba_admin dba_managers dba_staff dba_intern it_staff it_managers; do     groupadd -f "$g"; done
getent group | grep -E '^(dba|it)_'
man usermod
id manny
usermod -aG dba_admin,dba_managers,dba_staff manny
id manny
groups manny
ls -ld /home/manny
ll /home/manny
usermod -g manny666 manny
groupadd manny666 
usermod -g manny666 manny
ll /home/manny
ls -ld /home/manny
id /home/manny
id manny
  groupadd -g 5000 platforms
getent group platforms    
getent 
getent  user
getent  group
getent passwd
gpasswd -d manny dba_managers
id manny
usermod -G dba_admin,dba_staff manny
