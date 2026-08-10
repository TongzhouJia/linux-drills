umask 006
touch abc
ll
mkdir cba
ll
umask
umask > umask.txt
ls -a
vi /.bashrc
source /root/.bashrc
touch 666
ll
cat .bashrc 
cat /.bashrc
rm /.bashrc
vi .bashrc 
touch 888
ll
source .bashrc 
touch 000
ll
umask 027
touch testfile
mkdir testdir
ll
ll /etc/profile.d/
vi /etc/profile.d/custom-umask.sh
source /etc/profile.d/custom-umask.sh
echo $?
rm -f /etc/profile.d/custom-umask.sh
vi .bashrc 
