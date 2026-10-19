lsblk
which lvm2
rpm -q lvm2 || dnf install -y lvm2
pvs; vgs; lvs
lsblk /dev/vdb
findmnt /dev/vdb2
blkid /dev/vdb2
#pvcreate /dev/vdb2
pvcreate /dev/vdb2
lsblk
fdisk /dev/vdb -l
fdisk /dev/vdb 
pvcreate /dev/vdb2
pvs
pvdisplay /dev/vdb2
lsblk -f /dev/vdb
lsblk
pvcreate /dev/vdb2 /dev/vdc1 /dev/vdd
pvs
pvs > /root/pvs.txt
cat /root/pvs.txt
pvdisplay > /root/pvs.txt
pvdisplay 
pvs
pvs -o +pv_used,pe_start
man pvs
vgcreate data_vg /dev/vdb2
vgs
vgdisplay data_vg
vgdisplay data_vg > /root/vg.txt
cat /root/vg.txt
vgs
vgcreate -s 8M custom_vg /dev/vdc1
vgdisplay custom_vg
pvcreate /dev/vdd
vgextend data_vg /dev/vdd
vgdisplay 
vgs
pvs -o +pv_used
pv_used
pvs
pvmove /dev/vdd
pvs -o +pv_used
vgreduce data_vg /dev/vdd
pvremove /dev/vdd
pvs
vgs
lsblk -f /dev/vdd
lsblk
lsblk -f

# --- 2026-10-18/19 redo ---
fdisk /dev/vdb
umount /dev/vdb2 2>/dev/null
fdisk /dev/vdb
fdisk -l /dev/vdb
parted -l /dev/vdb
partprobe /dev/vdb
partprobe
lsblk /dev/vdb
findmnt /dev/vdb2 || echo "没挂载 ✓"
blkid /dev/vdb2                  # 有没有别的文件系统
pvcreate /dev/vdb2
fdisk
fdisk /dev/vdb2
fdisk /dev/vdb
pvcreate /dev/vdb2
pvs
pvdisplay /dev/vdb2
findmnt /dev/vdb2 || echo "没挂载 ✓"
blkid /dev/vdb2                  # 有没有别的文件系统
lsblk -f /dev/vdb
pvcreate /dev/vdb2 /dev/vdc1 /dev/vdd
pvcreate /dev/vdd
pvs > /root/pvs.txt
cat /root/pvs.txt
vgcreate data_vg /dev/vdb2
vgs
pvs
vgdisplay
lll
ll
cat aaa.txt 
lsblk
pvs;vgs;lvs
lsblk /dev/vdb
pvcreate /dev/vdb2
pvs
cd
cd;
cd; cd /;
cd
pvs
pvs -o +pv_used,pe_start
pvs -o all
vgdisplay custom_vg
vgcreate -s 8M custom_vg /dev/vdc1
vgdisplay custom_vg
pvs
vgs
vgdisplay data*
vgdisplay data_vg
vgs
vgs -o all
vgs -o all |tee aaa.txt
cat aaa.txt
pwd
vgs -o all data_vg
vgs -o +pv_name
vgextend data_vg /dev/vdd
pvs
vgs -o +pv_name
df -h
du -h
du -hs
man pvs
pvremove /dev/vdd
lsblk -f /dev/vdd
lvs
