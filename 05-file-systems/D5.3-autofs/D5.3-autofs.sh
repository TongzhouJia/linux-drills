ping -c2 192.168.55.47
showmount -e 192.168.55.47
cat /etc/auto.master
ls -l /etc/auto.master.d/
cat > /etc/auto.master.d/home.autofs <<'EOF'
/mnt/autofs_home   /etc/auto.home
EOF

cat > /etc/auto.home <<'EOF'
*    -rw,sync    192.168.55.47:/export/home/&
EOF

cat /etc/auto.home 
ls -l /etc/auto.master.d/
systemctl restart autofs
systemctl status autofs --no-pager
mount | grep autofs_home
ls /mnt/autofs_home
ls /mnt/autofs_home/
cd /mnt/autofs_home/manny
ll
bat hello.txt 
mount | grep autofs_home
findmnt /mnt/autofs_home/manny
df -hT /mnt/autofs_home/manny
pwd
ll
/export/home/manny
cd /
ll
cd /mnt/autofs_home/manny/
cd /
mount | grep autofs_home
grep TIMEOUT /etc/autofs.conf
echo "/mnt/autofs_home  /etc/auto.home  --timeout=60" > /etc/auto.master.d/home.autofs
systemctl restart autofs
cat > /etc/auto.master.d/nfsdata.autofs <<'EOF'
/nfsdata   /etc/auto.nfsdata
EOF

cat > /etc/auto.nfsdata <<'EOF'
share    -rw,sync    192.168.55.47:/export/dba_files
EOF

systemctl restart autofs
mount | grep nfsdata
findmnt /nfsdata/share
cat > /etc/auto.nfsdata <<'EOF'
share    -rw,sync    192.168.55.47:/export/dba_files
it       -rw,sync    192.168.55.47:/export/it_files
docs     -ro         192.168.55.47:/export/docs
EOF

systemctl restart autofs
ls /nfsdata
systemctl restart autofs
cat > /etc/auto.master.d/direct.autofs <<'EOF'
/-    /etc/auto.direct
EOF

cat > /etc/auto.direct <<'EOF'
/mnt/it_files    -rw,sync    192.168.55.47:/export/it_files
EOF

systemctl restart autofs
ls -ld /mnt/it_files   
mount | grep it_files
cd /mnt/it_files
ls -l
cat hello.txt
mount | grep it_files
findmnt /mnt/it_files
systemctl enable autofs
systemctl is-enabled autofs
mount | grep autofs > /root/autofs_check.txt
ls /mnt/autofs_home/manny
mount | grep -E "autofs|nfs" >> /root/autofs_check.txt
cat /root/autofs_check.txt
