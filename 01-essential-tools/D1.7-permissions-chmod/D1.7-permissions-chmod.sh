touch /root/perms/a.txt && chmod 640 $_ && ll $_
mkdir /root/perms
touch /root/perms/a.txt && chmod 640 $_ && ll $_
touch /root/perms/script.sh && chmod u=rwx ,g=rx ,o= $_ &&ll $_
touch /root/perms/script.sh && chmod u=rwx , g=rx , o= $_ &&ll $_
touch /root/perms/script.sh && chmod u=rwx,g=rx,o= $_ &&ll $_
ll /root/perms/
man chmod | grep "recur"
man chmod | grep -i "recur"
chmod -R 750 /root/perms && ll $_
touch /root/perms/b.txt
chmod 644 /root/perms/b.txt
chmod u+x o-r /root/perms/b.txt
chmod u+x,o-r /root/perms/b.txt
ll /root/perms/b.txt
mkdir /root/team
chmod 750 /root/team/
ll /root/team/
ll /root/perms/a.txt
chmod 600 /root/perms/a.txt&&ll /root/perms/ > /root/perms_check.txt
cat /root/perms_check.txt
