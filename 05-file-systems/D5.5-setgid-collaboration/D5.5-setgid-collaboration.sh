getent group dba_staff
mkdir -p /shared/dba
chgrp dba_staff /shared/dba
chmod 2770 /shared/dba
chmod +t /shared/dba
ls -ld /shared/dba
ls -ld /shared/dba > /root/collab_check.txt
usermod -aG dba_staff manny
su - manny -c "touch /shared/dba/manny.txt"
ls -l /shared/dba
mkdir -p /shared/project
chgrp dba_staff /shared/project
chmod 3770 /shared/project
ls -ld /shared/project
