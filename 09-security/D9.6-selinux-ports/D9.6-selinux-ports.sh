ip a
vi /etc/ssh/sshd_config
ssh root@192.168.122.42
reboot
systemctl restart sshd
journalctl -xe 
journalctl -xe  |grep sshd
vi /etc/ssh/sshd_config
systemctl restart ssh
systemctl restart sshd
reboot
semanage port -l 
semanage port -l |grep -w ssh_port_t
ss
ss -ltnp
sudo semanage port -l | grep ssh
sudo semanage port -l 
ll
ll -Z abc
sudo semanage port -l | grep ssh
sudo semanage boolean -l | grep ftp
sudo semanage node -l
man semanage
semanage boolean -l 
ss -tuln
ll -tulnp
ss -tulnp
ss -tuln
ss
ss -tulnp
ss -tuln
systemctl is-enabled sshd.socket
vim /etc/ssh/sshd_config.d/01-port.conf
vi /etc/ssh/sshd_config.d/01-port.conf
sshd -t
systemctl restart sshd
systemctl status sshd --no-pager -l
systemctl status sshd 
ss -ltnp
ss -ltnp | grep 9998
ip a
ausearch -m AVC -ts recent
semanage port -a -t ssh_port_t -p tcp 9998
semanage port -l
semanage port -l|grep ss
semanage port -l|grep ssh
systemctl restart sshd
ss -tulnp
firewall-cmd --permanent --add-port=9998/tcp
firewall-cmd --reload
semanage port -l | grep -w http_port_t > /root/http_ports.txt
semanage -a -t http_port_t -p 8090
semanage port -l | grep -w http_port_t
semanage port -d -t ssh_port_t -p tcp 9998
semanage port -l
semanage port -l -C
semanage port -l |grep 9998
semanage port -d -t ssh_port_t -p tcp 9998
semanage port -l -C
semanage port -l | grep -w 9998
semanage port -a -t http_port_t -p tcp 8090
semanage port -l | grep -w http_port_t
echo 'Listen 8090' > /etc/httpd/conf.d/port8090.conf
httpd -t
systemctl enable --now httpd
systemctl restart httpd
ss -tulnp
ss -tulp
firewall-cmd --permanent --add-port=8089/tcp
firewall-cmd --reload
firewall-cmd --list-ports
echo "hello 8090" > /var/www/html/index.html
curl http://localhost:8090 
firewall-cmd --permanent --add-port=8090/tcp
firewall-cmd --reload
firewall-cmd --list-ports
