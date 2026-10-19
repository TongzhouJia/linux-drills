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

# --- 2026-10-19 redo ---
mkfs.xfs -L DATA /dev/data_vg/data_lv 
umount /mnt/data_lv
mkfs.xfs -L DATA /dev/data_vg/data_lv 
xfs_admin -L DATA /dev/data_vg/data_lv
mount /dev/data_vg/data_lv /mnt/data_lv
findmnt
findmnt /mnt/data_lv
findmnt app_lv
findmnt data_lv
findmnt /dev/data_vg/app_lv
findmnt /dev/data_vg/data_lv 
findmnt |data_lv
findmnt | grep data_lv
findmnt | grep app_lv
mount
findmnt /dev/data_vg/app_lv
lvs
lvremove /dev/data_vg/app_lv
lvs
vgs
cp /etc/fstab /etc/fstab.bak
blkid /dev/data_vg/data_lv
lsblk -f
lsblk
ls -l /dev/disk/by-uuid
mkdir -p /mnt/data_lv
echo "UUID=$(blkid -s UUID -o value /dev/data_vg/data_lv)  /mnt/data_lv  xfs  defaults  0 0" >> /etc/fstab
tail -3 /etc/fstab
vi /etc/fstab
umount /mnt/data_lv 2>/dev/null
mount -a
systemctl daemon-reload
findmnt /mnt/data_lv
df -h /mnt/data_lv
findmnt --verify --verbose
systemctl daemon-reload
umount /mnt/data_lv
findmnt /mnt/data_lv
xfs_admin -L DATA /dev/data_vg/data_lv
xfs_admin -l /dev/data_vg/data_lv
mkdir -p /mnt/labeled
vi /etc/fstab
mount -a
echo $?
findmnt /mnt/labeled
df -h /mnt/labeled
systemctl daemon-reload
e2label /dev/vdb1 EXTDATA
e2label /dev/vdb1
mkdir -p /mnt/extlabel
echo "LABEL=EXTDATA  /mnt/extlabel  ext4  defaults  0 0" >> /etc/fstab
mount -a
echo $?
findmnt /mnt/extlabel
findmnt --verify --verbose
systemctl daemon-reload
mount -a
echo $?
cd /                                  # 别站在挂载点里!
umount /mnt/data_lv
findmnt /mnt/data_lv
df -h | grep data_lv
lvs /mnt/data_lv
lvs 
findmnt /mnt/labeled
umount /mnt/labeled
lvs
findmnt /mnt/data_lv
df -h /mnt/data_lv
mount -a
findmnt /mnt/data_lv
df -h /mnt/data_lv
lvs
mount -a
lvs
findmnt /mnt/labeled
vi /etc/fstab
