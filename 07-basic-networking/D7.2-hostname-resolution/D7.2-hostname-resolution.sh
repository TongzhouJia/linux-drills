hostnamectl
hostname
bat /etc/hostname
cat /etc/hostname
hostnamectl set-hostname lab-server1
hostname
hostnamectl
hostnamectl set-hostname lab-server111
exec bash
hostnamectl set-hostname lab-server1
exec bash
cat /etc/hosts
vi /etc/hosts
getent hosts lab-server2
getent hosts lab-server1
vi /etc/hosts
getent ahostsv4 lab-server2
ping -c3 lab-server2
host lab-server2
dnf install -y bind-utils
host lab-server2
hostnamectl
hostnamectl hostname --static
hostnamectl hostname --transient
hostnamectl hostname --pretty
nmcli -g NAME con show --active
CON=$(nmcli -g NAME con show --active | head -1); echo "$CON"
nmcli con show "$CON" | grep -i '^ipv4\.dns'
cat /etc/resolv.conf
