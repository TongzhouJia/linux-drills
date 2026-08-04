ip a
ls
lss
ls
which tuned-adm
tuned-adm active
dnf install -y tuned
systemctl enable --now tuned
systemctl status tuned
tuned-adm active
tuned-adm active > /root/tuned_active.txt
tuned-adm list > /root/tuned_list.txt
cat /root/tuned_list.txt
tuned-adm profile powersave
tuned-adm recommend >/root/tuned_reco.txt
cat /root/tuned_reco.txt
mkdir /etc/tuned/my-merged
vi /etc/tuned/my-merged/tuned.conf
tuned-adm profile my-merged
vi /etc/tuned/my-merged/tuned.conf
rm -rf /etc/tuned/my-merged
echo $?
tuned-adm profile virtual-guest powersave
tuned-adm active
