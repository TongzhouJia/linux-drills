cd root
cd /root
ls
mkdir linkdir
cd linkdir
echo "hello">/original
cat /original
ln /original /hardcopy
ln -s /original /softcopy
ls -li 
ll
ls -li /original /hardcopy /softcopy
ls -i /original /hardcopy /softcopy
ll /original /hardcopy /softcopy
rm /original 
echo $?
ls -li /hardcopy /softcopy
cat /hardcopy 
cat /softcopy 
ln -s /etc/hosts /root/etchosts
ln -s /var/log /root/logdir
touch /root/data.txt
ln /root/data.txt /root/data_backup
ll /root/linkdir
touch /root/linkdir sldkjf
ls 
ls root
ls /root
ll /root |grep lin
ll /root/linkdir
touch /root/linkdir/dkjfkdjf
ll /root/linkdir/
ln /root/linkdir/sldkjf /root/linkdir/hard
ln -s /root/linkdir/sldkjf /root/linkdir/soft
ls -li /root/linkdir |tee /root/linkinfo.txt
