tar -czvf /root/etc_backup.tar.gz
tar -czvf /root/etc_backup.tar.gz /etc
ll /root/etc_backup.tar.gz 
tar -cjvf /root/logs.tar.bz2 /var/log
tar -tf /root/etc_backup.tar.gz 
tar -tf /root/etc_backup.tar.gz >/root/etc_contents.txt
cat /root/etc_contents.txt
mkdir /root/restore
ll /etc/hostname
tar -xvf /root/etc_backup.tar.gz -C /root/restore/ /etc/hostname
tar -xvf /root/etc_backup.tar.gz -C /root/restore/ etc/hostname
tar -cJvf /root/doc.tar.xz /usr/share/doc
which star
dnf install -y star
dnf search star
