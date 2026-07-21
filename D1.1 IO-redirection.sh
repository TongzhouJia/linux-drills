ip a
ping google.com
# 1. 设置 IP 和子网掩码 (如果你需要换成其他 IP，直接在这里替换)
sudo nmcli connection modify ens160 ipv4.addresses 192.168.89.2/24
# 2. 设置默认网关 (假设网关是 192.168.89.1，请根据你的虚拟网络实际情况修改)
sudo nmcli connection modify ens160 ipv4.gateway 192.168.89.1
# 3. 设置 DNS 服务器 (配置 8.8.8.8 和 114.114.114.114)
sudo nmcli connection modify ens160 ipv4.dns "8.8.8.8 114.114.114.114"
# 4. 将获取方式设为手动
sudo nmcli connection modify ens160 ipv4.method manual
# 5. 重启网卡让配置生效
sudo nmcli connection up ens160
ping google.com
# 1. 换一个不冲突的静态 IP（比如分配 10 这个地址）
sudo nmcli connection modify ens160 ipv4.addresses 192.168.89.10/24
# 2. 将网关设置为 VMware 的 NAT 网关 (通常是 .2)
sudo nmcli connection modify ens160 ipv4.gateway 192.168.89.2
# 3. 配置 DNS
sudo nmcli connection modify ens160 ipv4.dns "8.8.8.8 114.114.114.114"
# 4. 确保是手动模式并重启网卡
sudo nmcli connection modify ens160 ipv4.method manual
sudo nmcli connection up ens160
ping google.com
ls
cd ~ 
ls
cd ~/repos
ls
pwd
cd ~
ls
pwd
ls
git pull https://github.com/TongzhouJia/bash-practice.git
git remote add origin https://github.com/TongzhouJia/bash-practice.git
which git
man git
man
pwd
git pull
ls
cd bash
cd bash-practice/
ls
sudo systemctl isolate multi-user.target 
ls
cd bash-practice/
cd drills/
ls
cat cat drills/B1-basics/B1.1-quoting-expansion.md
cat drills/B1-basics/B1.1-quoting-expansion.md
cat B1-basics/B1.1-quoting-expansion.md
cd ../
ls
cd ..
ls
curl -fsSL https://charm.sh | sudo gpg --dearmor -o /etc/pki/rpm-gpg/RPM-GPG-KEY-charm
echo '[charm]
name=Charm
baseurl=https://charm.sh
enabled=1
gpgcheck=1
gpgkey=https://charm.shRPM-GPG-KEY-charm' | sudo tee /etc/yum.repos.d/charm.repo
sudo yum install glow -y
# 1. 覆盖写入正确的 Yum 源配置文件
echo '[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo
# 2. 清理 Yum 缓存（清除刚才因为报错残留的错误数据）
sudo yum clean all
# 3. 重新安装 glow
sudo yum install glow -y
glow drills/B1-basics/B1.1-quoting-expansion.md
glow -p  drills/B1-basics/B1.1-quoting-expansion.md
cd bash-practice/
glow drills/B1-basics/B1.1-quoting-expansion.md
glow -p drills/B1-basics/B1.1-quoting-expansion.md
cd drills/
cd B1-basics/
ls
glow B1.1-quoting-expansion.answers.md 
which pip
glow -s light B1.1-quoting-expansion.answers.md 
glow B1.1-quoting-expansion.answers.md
which python
cd ~
ls
pwd
python -m ensurepip --default-pip
pip install grip
grip bash-practice/drills/B1-basics/B1.1-quoting-expansion.answers.md 
curl -L https://github.com/swsnr/mdcat/releases/download/mdcat-2.2.1/mdcat-2.2.1-x86_64-unknown-linux-musl.tar.gz | tar xz
# 移动到系统环境变量中
sudo mv mdcat-*/mdcat /usr/local/bin/
which mdcat
curl -L https://github.com/swsnr/mdcat/releases/download/mdcat-2.2.1/mdcat-2.2.1-x86_64-unknown-linux-musl.tar.gz | tar xz
curl -L https://github.com/swsnr/mdcat/releases/download/mdcat-2.2.1/mdcat-2.2.1-x86_64-unknown-linux-musl.tar.gz | tar xz
pip install frogmouth
frogmouth bash-practice/drills/B1-basics/B1.1-quoting-expansion.answers.md 
sudo yum install epel-release -y
sudo yum install bat -y
bat bash-practice/drills/B1-basics/B1.1-quoting-expansion.answers.md
vi test.go
bat test.go 
cat test.go 
bat test.go 
vi test.go 
vim test.go 
vi test.go 
vim test.go 
# 1. 自动获取最新版 Linux 下载链接并下载解压
LATEST_URL=$(curl -s https://api.github.com/repos/swsnr/mdcat/releases/latest | grep "browser_download_url.*x86_64-unknown-linux-gnu.tar.gz" | cut -d '"' -f 4)
curl -L "$LATEST_URL" | tar xz
# 2. 把可执行文件移到系统目录
sudo mv mdcat-*/mdcat /usr/local/bin/
# 3. 清理刚才解压出的多余文件夹
rm -rf mdcat-*/
# 1. 自动获取最新版 Linux 下载链接并下载解压
LATEST_URL=$(curl -s https://api.github.com/repos/swsnr/mdcat/releases/latest | grep "browser_download_url.*x86_64-unknown-linux-gnu.tar.gz" | cut -d '"' -f 4)
curl -L "$LATEST_URL" | tar xz
# 2. 把可执行文件移到系统目录
sudo mv mdcat-*/mdcat /usr/local/bin/
# 3. 清理刚才解压出的多余文件夹
rm -rf mdcat-*/
which mdcat
mdcat bash-practice/drills/B1-basics/B1.1-quoting-expansion.answers.md
frogmouth bash-practice/drills/B1-basics/B1.1-quoting-expansion.answers.md
bat test.go 
clear 
echo 'Price is $5 (100% off!)'
echo 'Price is $5 (100% off\!)'
echo 'Price is $5 (100% off!)'
echo "price is %5 (100% off\!)"
echo "price is \%5 (100% off\!)"
cat << 'EOF'
Price is $5 (100% off!)
EOF

cat << 'EOF'
Price is $5 (100% off!)
EOF

cat << 'abc'
Price is $5 (100% off!)
abc

printf "%s\n" "Price is \$5 (100% off\!)"
printf "%s\n" "Price is \$5 (100% off\!)"
echo $'Price is $5 (100% off!)'
echo "Price is \$5 (100% off"\!")"
echo "Price is \$5 (100% off "\!")"
echo "Price is \$5 (100% off"\!")"
clear
name=RHCSA
echo name
echo $name
echo 'single: $name'
echo "single: \$name"
echo "double: $name"
hostname -s
hostname
host is $hostname
host is $(hostname)
host is $(hostname -s)
host is $"hostname -s"
hostname
echo "hostname"
echo "$hostname"
h=$(hostname -s)
echo e
echo h
echo "h"
echo $h
echo "Host is $h"
unset h
echo $h
echo $((2*2))
echo $((24*60*60))
touch report-{jan,feb,mar,apr}.log
ls
rm report-{jan,feb,mar,apr}.log
ll
touch report-{jan,feb,mar,apr}.log
rm -i report-{jan,feb,mar,apr}.log
ls
ls
rm -i report-{jan,feb,mar,apr}.log
ll
mdkir node{01,02,03,04}
mkdir node{01,02,03,04}
ll
rm -rf node{01,02,03,04}
mkdir  node{01..10}
ll
rm -r  node{01..10}
ll
touch "my report.txt"
ls
echo "my report.txt"
echo "my report.txt" >my\ report.txt 
cat "my report.txt" 
cat my report.txt
echo ~root
echo ~
cd ~
cd ~root
sudo cd ~root
pwd
sudo cd ~
cd /root
sudo cd /root
pwd
echo "Today is $(date)"
echo "Today is $(date +%A)"
touch {a,b,c}.txt
ll
echo "*.txt"
echo '*.txt'
echo *.txt
touch config.ini
cp config.ini config.ini.bak
ll
rm config.ini.bak 
ls
ll
cp config.ini{,.bak}
ll
diff config.ini config.ini.bak && echo identical
echo config.ini{,.bak}
echo config.ini{,,,,,.bak}
echo file{1,2,3}.txt
echo "{1..3} = $(echo {1..3})"
history -a
history 5
cat ~/.bashrc |less
cat ~/.bash_history |less
ls
cd bash-practice/
ls
ls drills/
cd drills/
ls
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
history -a
