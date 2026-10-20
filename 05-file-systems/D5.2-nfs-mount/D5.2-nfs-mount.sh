ping -c2 192.168.55.47
\
ping -c2 192.168.55.47
rpm -q nfs-utils || dnf install -y nfs-utils
showmount -e 192.168.55.47
mkdir -p /mnt/tmp
mount -t nfs4 192.168.55.47:/ /mnt/tmp
ls -R /mnt/tmp
systemctl enable --now nfs-client.target
systemctl status nfs-client.target --no-pager
systemctl enable --now rpcbind
systemctl is-active rpcbind
showmount -e 192.168.55.47
df -hT /mnt/dba_files
mkdir -p /mnt/dba_files
mount -t nfs 192.168.55.47:/export/dba_files /mnt/dba_files
df -hT /mnt/dba_files
findmnt /mnt/dba_files
mount | grep nfs
cp /etc/fstab /etc/fstab.bak
echo "192.168.55.47:/export/dba_files  /mnt/dba_files  nfs  defaults,_netdev  0 0" >> /etc/fstab
tail -1 /etc/fstab
tail -2 /etc/fstab
tail -5 /etc/fstab
ll /mnt/dba_files/
cat /mnt/dba_files/hello.txt 
cat /mnt/dba_files/README.txt 
umount /mnt/dba_files
mount -a
systemctl daemon-reload
mount -a
findmnt /mnt/dba_files
findmnt --verify --verbose
systemctl daemon-reload
cd /
umount /mnt/dba_files
findmnt /mnt/dba_files
df -hT | grep dba_files
mount -a
echo $?                        
findmnt /mnt/dba_files
df -hT /mnt/dba_files
cat /mnt/dba_files/hello.txt
findmnt /mnt/dba_files
