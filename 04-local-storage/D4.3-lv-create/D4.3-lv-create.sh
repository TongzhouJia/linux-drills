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

# --- 2026-10-19 redo ---
lvcreate -n data_lv -L 500M data_vg
vgs -o all --rows
vgs -o all |less -S
vgs -o all |less 
lvdisplay /dev/data_vg/data_lv
ll /dev/
ls /dev/
ll /dev/data_vg/
ll /dev/
ll /dev/data_vg/
pvs
lvremove -y /dev/data_vg/full_lv
vgcreate test_vg /dev/vdc1
lvcreate -n full_lv -l 100%FREE test_vg
lvdisplay
lvdisplay /dev/vdc1
lsblk
pedisplay /dev/vdc1
pvdisplay /dev/vdc1
pvs /dev/vdc1
vgs 
pvmove /dev/vdc1
pvs
vgreduce custom_vg /dev/vdc1
vgremove custom_vg
lvs
lvcreate -n app_lv -l 50 data_vg
lvs
lvdisplay
lvcreate -n full_lv -l 100%FREE data_vg
lvs
vgs
vgdisplay data_vg
lvremove -y /dev/data_vg/full_lv
lvs
vgs
vgcreate test_vg /dev/vdc1
lvcreate -n full_lv -l 100%FREE test_vg
vgs
vgdisplay
mkfs.xfs /dev/data_vg/data_lv 
mkdir -p /mnt/data_lv
mount /dev/data_vg/data_lv /mnt/data_lv
df -h /mnt/data_lv
findmnt /mnt/data_lv
mount
mount |less S
mount |less -S
findmnt /mnt/data_lv
mount | grep data_lv
echo "hello lvm" > /mnt/data_lv/test.txt
cat /mnt/data_lv/test.txt
