vgs data_vg
vgs data_vg > /root/vgfree.txt
lvs data_vg
df -h /mnt/labeled /mnt/xfs /mnt/ext4
lvextend -r -L +300M /dev/data_vg/data_lv
lvextend -r -l +50 /dev/data_vg/xfs_lv
lvextend -L +200M /dev/data_vg/ext_lv
resize2fs /dev/data_vg/ext_lv
lvextend -r -l +100%FREE /dev/data_vg/ext4_lv
lvs data_vg
df -h
cat /mnt/data_lv/important.txt
