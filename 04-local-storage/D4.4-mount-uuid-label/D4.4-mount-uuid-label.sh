blkid /dev/data_vg/data_lv
lsblk -f
blkid /dev/data_vg/data_lv > /root/uuid.txt
cat /root/uuid.txt
mkdir -p /mnt/data_lv
cp /etc/fstab /etc/fstab.bak
vi /etc/fstab
umount /mnt/data_lv
mount -a
echo $?                               
findmnt /mnt/data_lv
findmnt -a
df -h /mnt/data_lv
df -h 
df -hT
findmnt --verify --verbose
systemctl daemon-reload
umount /mnt/data_lv
findmnt /mnt/data_lv
xfs_admin -L DATA /dev/data_vg/data_lv
xfs_admin -l /dev/data_vg/data_lv
blkid /dev/data_vg/data_lv
lsblk -f | grep DATA
mkdir -p /mnt/labeled
vi /etc/fstab
mount -a
echo $?
e2label /dev/vdb1 EXTDATA
e2label /dev/vdb1
blkid /dev/vdb1
lsblk -f
mkdir -p /mnt/extlabel
echo "LABEL=EXTDATA  /mnt/extlabel  ext4  defaults  0 0" >> /etc/fstab
mount -a
echo $?
findmnt /mnt/extlabel
