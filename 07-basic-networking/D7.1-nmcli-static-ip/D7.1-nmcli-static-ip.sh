nmcli device status
nmcli con show enp1s0
CON="enp1s0"
nmcli con show "$CON"
ip a show enp1s0
cat /etc/NetworkManager/system-connections/*.nmconnection
ll /etc/NetworkManager/system-connections
ssh server2
nmcli con show enp1s0
nmcli con mod enp1s0 +ipv4.addresses 192.168.122.72/24 ipv6.method manual +ipv6.addresses 2002:fe60:def0::56/64 connection.autoconnect yes
nmcli con up enp1s0
ip -br a show enp1s0
nmcli -g ipv4.addresses,ipv6.addresses con show enp1s0
exit
