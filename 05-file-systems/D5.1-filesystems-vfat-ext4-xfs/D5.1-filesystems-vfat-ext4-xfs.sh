vgs
lvcreate -n vfat_lv -L 300M data_vg
lvcreate -n ext4_lv -L 300M data_vg
lvcreate -n xfs_lv -L 300M data_vg
lvs data_vg
mkfs.vfat /dev/data_vg/vfat_lv
mkfs.ext4 /dev/data_vg/ext4_lv
mkfs.xfs /dev/data_vg/xfs_lv
mkdir -p /mnt/vfat /mnt/ext4 /mnt/xfs
cp /etc/fstab /root/fstab.bak.5.1
echo "UUID=$(blkid -s UUID -o value /dev/data_vg/vfat_lv)  /mnt/vfat  vfat  defaults  0 0" >> /etc/fstab
echo "UUID=$(blkid -s UUID -o value /dev/data_vg/ext4_lv)  /mnt/ext4  ext4  defaults  0 0" >> /etc/fstab
echo "UUID=$(blkid -s UUID -o value /dev/data_vg/xfs_lv)  /mnt/xfs   xfs   defaults  0 0" >> /etc/fstab
systemctl daemon-reload
findmnt --verify
mount -a
for m in /mnt/vfat /mnt/ext4 /mnt/xfs; do findmnt -n -o TARGET,FSTYPE,SOURCE $m; done > /root/fstypes.txt
cat /root/fstypes.txt
umount /mnt/vfat
mount -a
findmnt /mnt/vfat
