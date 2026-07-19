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
