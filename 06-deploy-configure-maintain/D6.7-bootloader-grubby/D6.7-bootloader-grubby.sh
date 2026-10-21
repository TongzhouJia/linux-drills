[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS(Legacy)"
ls /sys/firmware/efi 2>/dev/null && echo UEFI
cp /etc/default/grub /etc/default/grub.bak
cat /etc/default/grub
vim /etc/default/grub
diff /etc/default/grub.bak /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
grep -E '^\s*set timeout' /boot/grub2/grub.cfg
grep -i timeout_style /boot/grub2/grub.cfg
grubby --info=DEFAULT | grep args
grubby --update-kernel=ALL --args="quiet"
grubby --info=DEFAULT | grep args
grubby --update-kernel=ALL --remove-args="audit"
grubby --info=DEFAULT
grubby --info=DEFAULT | grep args
reboot
cat /proc/cmdline
cat /proc/cmdline | tr ' ' '\n' | grep audit
sysctl -a 2>/dev/null | grep -i audit
auditctl -s | head -3    
grub2-mkconfig -o /boot/grub2/grub.cfg
