touch testprog
chmod +x testprog 
ll
ll testprog 
chmod u+s testprog 
ll testprog 
mkdir sharedir
chmod g+s sharedir
ll sharedir
ld sharedir/
ls -d sharedir/
ll
mkdir publicdir
chmod 777 publicdir
chmod o+t publicdir
ls home
ls /home
find / -type f -perm -4000
find / -type f -perm -4000 > suid.txt
mkdir mydir
chmod 3770 mydir
chmod u-s testprog
