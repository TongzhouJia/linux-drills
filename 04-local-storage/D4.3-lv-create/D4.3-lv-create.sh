vgs
vgdisplay data_vg
lvcreate -n data_lv -L 500M data_vg
lvs
lvdisplay /dev/data_vg/data_lv
ls -l /dev/data_vg/data_lv
lsblk
lvcreate -n app_lv -l 50 data_vg
lvs
lvs -o lv_name,vg_name,lv_size,seg_count
lvdisplay /dev/data_vg/app_lv
lvcreate -n full_lv -l 100%FREE data_vg
lvs
vgs
vgdisplay data_vg
lvremove -y /dev/data_vg/full_lv
vgcreate test_vg /dev/vdc1
lvcreate -n full_lv -l 100%FREE test_vg
mkfs.xfs /dev/data_vg/data_lv
mkdir -p /mnt/data_lv
mount /dev/data_vg/data_lv /mnt/data_lv
df -h /mnt/data_lv
findmnt /mnt/data_lv
lsblk -f | grep data_lv
mount | grep data_lv
mkfs.xfs -L DATA /dev/data_vg/data_lv
lvdisplay > /root/lvs.txt
findmnt /dev/data_vg/app_lv
mount | grep app_lv
grep app_lv /etc/fstab
sed -i '/app_lv/d' /etc/fstab
lvremove /dev/data_vg/app_lv
lvremove -y /dev/data_vg/app_lv
ls /dev/data_vg/
findmnt --verify
lsof /mnt/app_lv
fuser -vm /mnt/app_lv
cd /
umount /mnt/app_lv
umount -l /mnt/app_lv 
cd
umount /mnt/app_lv
umount -l /mnt/app_lv 
cp /etc/fstab /etc/fstab.bak 
vi /etc/fstab
