nmcli device status
nmcli con show enp1s0
CON="enp1s0"
nmcli con show "$CON"
ip a show enp1s0
cat /etc/NetworkManager/system-connections/*.nmconnection
ll /etc/NetworkManager/system-connections
nmcli devices status
nmcli device status
nmcli con show enp1s0
nmcli con mod enp1s0 ipv4.addresses 192.168.122.71/24 ipv4.gateway 192.168.122.1 ipv4.dns 8.8.8.8 ipv4.method manual
ip a
nmcli con show enp1s0 
nmcli con show enp1s0  |less
nmcli con mod enp1s0 ipv6.addresses 2002:fe60:def0:55/64 ipv6.method manual
nmcli con mod enp1s0 ipv6.addresses 2002:fe60:def0::55/64 ipv6.method manual
nmcli con show enp1s0  |less
nmcli con mod enp1s0 connection.autoconnect yes
nmcli con show enp1s0  | grep -w connection.autoconnect
nmcli con show enp1s0  | grep connection.autoconnect
nmcli con show enp1s0  | grep -w nnection.autoconnect
nmcli con show enp1s0  | grep -w connection.autoconne
nmcli con mod enp1s0 +ipv4.addresses 192.168.122.199/24 ipv4.gateway 192.168.122.1 ipv4.dns 8.8.8.8 ipv4.method manual
nmcli con show enp1s0  
nmcli con show enp1s0  | less
nmcli con down enp1s0 && nmcli con up enp1s0
ip a
ip -4
ip -4 show
ip -4 show enp1s0
iproute show
ip route show
ping -c3 192.168.122.1
ping -c3 www.redhat.com
ssh server2
nmcli con show enp1s0
nmcli con mod enp1s0 +ipv4.addresses 192.168.122.72/24 ipv6.method manual +ipv6.addresses 2002:fe60:def0::56/64 connection.autoconnect yes
nmcli con up enp1s0
ip -br a show enp1s0
nmcli -g ipv4.addresses,ipv6.addresses con show enp1s0
exit
