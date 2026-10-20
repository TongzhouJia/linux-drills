firewall-cmd --state
firewall-cmd --get-default-zone
firewall-cmd --list-all
firewall-cmd --list-services
systemctl enable --now firewalld
systemctl is-active firewalld
systemctl is-enabled firewalld
firewall-cmd --state
firewall-cmd --list-services
systemctl enable --now httpd
echo "hello" > /var/www/html/index.html
curl http://localhost/
hostnamectl
curl lab-server1
systemctl status httpd
ss -tulnp | grep httpd
curl http://localhost:8090/
curl http://localhost:82/
firewall-cmd --permanent --add-service=http
firewall-cmd --reload
firewall-cmd --permanent --list-services
firewall-cmd --list-services
firewall-cmd --list-all
firewall-cmd --get-services
firewall-cmd --get-all
firewall-cmd --info-service=http
firewall-cmd --zone=public --list-all
firewall-cmd --list-ports
firewall-cmd --list-all
firewall-cmd --permanent --remove-service=http
firewall-cmd --reload
firewall-cmd --set-default-zone=work
firewall-cmd --get-default-zone
firewall-cmd --permanent --zone=work --change-interface=enp1s0
firewall-cmd --reload
firewall-cmd --get-active-zones
firewall-cmd --get-zone-of-interface=enp0s1
firewall-cmd --get-zone-of-interface=enp1s0
