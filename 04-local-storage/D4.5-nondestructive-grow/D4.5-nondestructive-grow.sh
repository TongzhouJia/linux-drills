lvextend -r -L +500M /dev/data_vg/data_lv
mkdir -p /mnt/data_lv
echo "important data $(date)" > /mnt/data_lv/important.txt
dd if=/dev/urandom of=/mnt/data_lv/bigfile bs=1M count=50 2>/dev/null
md5sum /mnt/data_lv/* > /root/checksums_before.txt
cat /root/checksums_before.txt
df -h > /root/df_before.txt
df -h /mnt/data_lv
lvs
vgs
vgdisplay data_vg
lvs /dev/data_vg/data_lv
lvextend -L +500M /dev/data_vg/data_lv
lvs /dev/data_vg/data_lv
lvs
df -h /mnt/data_lv
xfs_growfs /mnt/data_lv
mount -a
df -h /mnt/data_lv
vi /etc/fstab
findmnt --verify --verbose
vi /etc/fstab
lsblk -f
fdisk /dev/vdb
lsblk -f
mkfs.xfs /dev/vdb3
lsblk -f
vi /etc/fstab
findmnt --verify --verbose
systemctl daemon-reload
df -h
df -h /mnt/data_lv
mount -a
df -h /mnt/data_lv
xfs_growfs /mnt/data_lv
df -h /mnt/data_lv
lvs /dev/data_vg/data_lv
df -h /mnt/data_lv
xfs_growfs /mnt/data_lv
df -T  /mnt/data_lv
df -hT  /mnt/data_lv
df -h  /mnt/data_lv
$_
$?
findmnt /mnt/data_lv
lsblk
lsblk -f
pvs
pvcreate /dev/vdd
pvs
lsblk /dev/vdb
fdisk -l /dev/vdb
free -m
swapon --show
fdisk /dev/vdb
partprobe /dev/vdb
lsblk
mkswap /dev/vdb4
swapon --show
swapon /dev/vdb4
swapon --show
free -m
swapon /dev/vdb4
swapon --show
free
free -mh
free -m -h
echo "UUID=$(blkid -s UUID -o value /dev/vdb3)  none  swap  defaults  0 0" >> /etc/fstab
tail -1 /etc/fstab
blkid /dev/vdb4
vi /etc/fstab
tail -1 /etc/fstab
swapoff /dev/vdb4
swapon --show
swapon a
swapon -a
swapon --show
swapoff -a
swapon --show
swapoff -a
swapon --show
swapon -a 
swapon --show
findmnt --verify
vi /etc/fstab
findmnt --verify
systemctl daemon-reload
mount -a
lsblk -f /dev/vdb
mount -a
df -h
lvcreate -n ext_lv -L 500M data_vg
mkfs.ext4 /dev/data_vg/ext_lv
mkdir -p /mnt/ext_lv
mount /dev/data_vg/ext_lv /mnt/ext_lv
df -h /mnt/ext_lv
lvextend -L +300M /dev/data_vg/ext_lv
lvs /dev/data_vg/ext_lv
df -h /mnt/ext_lv                 
df -Th /mnt/ext_lv                 
resize2fs /dev/data_vg/ext_lv
df -h /mnt/ext_lv
resize2fs /dev/vg/lv
tune2fs -l /dev/data_vg/ext_lv
tune2fs -l /dev/data_vg/ext_lv | grep -i "block count"
resize2fs /dev/vg/lv
# --- not typed below (task 5 persistent mount, 6, 7) ---
echo "UUID=$(blkid -s UUID -o value /dev/data_vg/ext_lv)  /mnt/ext_lv  ext4  defaults  0 0" >> /etc/fstab
findmnt --verify
mount -a
lvextend -r -l +100%FREE /dev/data_vg/data_lv
cat /mnt/data_lv/important.txt
df -h > /root/df_after.txt
