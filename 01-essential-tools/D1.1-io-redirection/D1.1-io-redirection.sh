uname -r
ls
pwd
touch /root/kernel.txt
sudo ≥
sudo $!
touch /root/kernel.txt
sudo $!
sudo $!
touch /root/kernel.txt
sudo $!
touch /root/kernel.txt
sudo /root/kernel.txt
touch /root/kernel.txt
sudo touch /root/kernel.txt
ll /root/kernel.txt
sudo ll /root/kernel.txt
sudo ls -l /root/kernel.txt
ll
uname -r > /root/kernel.txt
sudo uname -r > /root/kernel.txt
sudo uname -r tee  /root/kernel.txt
sudo uname -r |tee  /root/kernel.txt
sudo uname -r | sudo tee  /root/kernel.txt
sudo cat /root/kernel.txt
sudo su
find /etc -name "*.conf"
find /etc -name "*.conf" 2>$1 | sudo tee /root/find_all.txt > /dev/null
find /etc -name "*.conf" 2> /dev/null
cut -d: -f7 /etc/passwd
cat /etc/passwd
cut -d: -f7 /etc/passwd |sort |uniq  |less
cut -d: -f7 /etc/passwd |sort |uniq  |head
cut -d: -f7 /etc/passwd |sort |uniq  1>/root/shells.txt
cut -d: -f7 /etc/passwd |sort |uniq  | sudo tee /root/shells.txt
cut -d: -f7 /etc/passwd |sort |uniq  | sudo tee /root/shells.txt > /dev/null 
journalctl -k -n 20
journalctl -k -n 20 >>/var/log/kmsg_snap.log
sudo journalctl -k -n 20 >>/var/log/kmsg_snap.log
journalctl -k -n 20 | sudo tee -a /var/log/kmsg_snap.log
cat /var/log/kmsg_snap.log
journalctl -k -n 20 | sudo tee -a /var/log/kmsg_snap.log > /dev/null 
head -n -20 /var/log/kmsg_snap.log | sudo tee /tmp/temp.log > /dev/null
cat /tmp/temp.log 
sudo mv /tmp/temp.log /var/log/kmsg_snap.log
cat /var/log/kmsg_snap.log 
