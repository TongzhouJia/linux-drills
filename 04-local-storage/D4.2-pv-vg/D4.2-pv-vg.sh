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
