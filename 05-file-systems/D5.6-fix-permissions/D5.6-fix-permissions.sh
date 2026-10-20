ls -ld /shared/reports
chmod g+w /shared/reports
ls -ld /shared/reports
ls -l /root/bin/run.sh
chmod +x /root/bin/run.sh
/root/bin/run.sh
ls -ld /home/manny/notes
chmod u+x /home/manny/notes
su - manny -c "cd ~/notes && pwd"
ls -l /data/report.txt
chown manny:dba_staff /data/report.txt
ls -l /data/report.txt
ls -ld /shared/team
ls -l /shared/team
chmod g+s /shared/team
chgrp -R dba_staff /shared/team
ls -l /shared/team
ls -ld /data
chgrp it_staff /data
chmod 750 /data
ls -ld /data
