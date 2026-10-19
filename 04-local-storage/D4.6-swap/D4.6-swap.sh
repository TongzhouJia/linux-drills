free -m
swapon --show
free -m > /root/swap_before.txt
swapon --show >> /root/swap_before.txt
cat /root/swap_before.txt
dd if=/dev/zero of=/swapfile bs=1M count=512
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
swapon --show
echo "/swapfile  none  swap  defaults  0 0" >> /etc/fstab
swapoff /swapfile
swapon -a
swapon --show
lsblk /dev/vdc
fdisk /dev/vdc
partprobe /dev/vdc
lsblk /dev/vdc
mkswap /dev/vdc1
swapon /dev/vdc1
swapon --show
echo "UUID=$(blkid -s UUID -o value /dev/vdc1)  none  swap  defaults  0 0" >> /etc/fstab
findmnt --verify
swapoff /dev/vdc1
swapon -a
swapon --show
ls -l /swapfile
chmod 600 /swapfile
swapoff /swapfile
swapon /swapfile
swapoff /swapfile
vi /etc/fstab
rm -f /swapfile
swapon --show
free -m
