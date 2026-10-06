lsblk
lsblk -f
df -h
lsblk /dev/vdb
lsblk 
lsblk -f
df -h
fdisk -l /dev/vdb
fdisk /dev/vdb
fdisk -l /dev/vdb
lsblk 
fdisk -l /dev/vdb
which parted
parted -s /dev/vdc mklabel gpt
parted -s /dev/vdc mkpart primary 1MiB 2049MiB
parted /dev/vdc print
parted -s /dev/vdc unit MiB print  # 用 MiB 显示
lsblk /dev/vdc
lsblk 
parted /dev/vdc print
parted /dev/vdc 
parted print
lsblk -f /dev/vdb
blkid 
blkid /dev/vdb1
mkfs.ext4 /dev/vdb1
lsblk -f /dev/vdb
# NAME   FSTYPE FSVER LABEL UUID                                 MOUNTPOINTS
# vdb1   ext4   1.0         a1b2c3d4-....
blkid /dev/vdb1
# /dev/vdb1: UUID="a1b2c3..." BLOCK_SIZE="4096" TYPE="ext4"
file -s /dev/vdb1
blkid /dev/vdb1
file -s /dev/vdb1
mkfs.ext4 -L MYDATA /dev/vdb1
mkfs.xfs /dev/vdc1
lsblk -f /dev/vdc
blkid /dev/vdc1
xfs_info /dev/vdc1
fdisk /dev/vdb
mkdir -p /mnt/data1
mount /dev/vdb1 /mnt/data1
df -h /mnt/data1
lsblk
lsblk -f
du -h
df -h
df -h /mnt/data1
echo "hello" > /mnt/data1/test.txt && cat /mnt/data1/test.txt
blkid /dev/vdb1
blkid -s UUID -o value /dev/vdb1
cp /etc/fstab /etc/fstab.bak
vim /etc/fstab
vi /etc/fstab
echo "UUID=$(blkid -s UUID -o value /dev/vdb1)  /mnt/data1  ext4  defaults  0 0" >> /etc/fstab
tail -1 /etc/fstab
umount /mnt/data1
umount -a
echo $?
history -a
umount /mnt/data1
umount -a
echo $?
df -h /mnt/data1
findmnt /mnt/data1
findmnt --verify --verbose
systemctl daemon-reload
blkid /dev/vdb1
blkid -s UUID -o value /dev/vdb1
cat /etc/fstab
ll /etc/
ls /etc/
cat /etc/fstab
umount /mnt/data1              # 先卸载，才能验证 fstab 真的有效
mount -a                       # 按 fstab 挂载所有条目
echo $?   
df -h /mnt/data1
findmnt /mnt/data1
findmnt --verify --verbose
findmnt /mnt/data1
lsblk
lsblk |grep vdb
lsblk
lsblk|grep vdb
findmnt
findmnt /dev/vdb2 
fdisk /dev/vdb
lsblk /dev/vdb
fdisk -l /dev/vdb
ls /dev/vdb2
ls /dev/vdb2 2>&1
partprobe /dev/vdb
partprobe 
partx -u /dev/vdb
