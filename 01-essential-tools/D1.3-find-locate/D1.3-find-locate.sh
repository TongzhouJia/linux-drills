sudo su
find -type f -size +1M -r /etc
find -type f -size +1M -R /etc
find -type f -size +1M  /etc
cd /etc
find -type f -size +1M  
cd /home/bash-practice
find /etc -type f -size +1M  
find /etc -type f -size +1M  -exec cp {} /root/bigconf/
find /etc -type f -size +1M  -exec cp {} /root/bigconf/ \;
mkdir /root/bigconf
ls /root/bigconf
echo $?
find /etc -type f -size +1M  -exec cp {} /root/bigconf/ \;
ll /root/bigconf/
ls
w
find /var -user bash-pra
ls
ls /home
find /var -user bash-practice
find /var -user bash-practice > /root/bash-practice_files.txt 2>/dev/null 
find /var -user bash-practice > /root/bash-practice_files.txt 
cat /root/bash-practice_files.txt
whoami
w
logname
id -um
id -un
ll home
ll /home
find /home -mtime 1
find /home -mtime +1
find /home -mtime -1
find /home -mtime -1 >/root/recent_home.txt
ls /root/
find /usr |grep "^scripts$"
find /usr -type d |grep -w "scripts"
find /usr -type d |grep -w "scripts "
find /usr -type d |grep -w "scripts$"
find /usr -type d -name "scripts"
find /tmp -size -0M
find /tmp -size -1M
find /tmp -type d -empty 
find /tmp -size -1M -type d
find /tmp -size -0M -type d
find /tmp -type d -empty 
find /tmp -type d -empty -exec rm -f {} \;
find /tmp -type d -empty -exec rm -r {} \;
find /tmp -type d -empty 
find /tmp -type d -empty -exec rm -rf {} \;
find /tmp -type d -empty 
mkdir /tmp/sdlfjk
mkdir /tmp/sdlfjsdjf
mkdir /tmp/sdlslkdjflksd
find /tmp -type d -empty 
find /tmp -type d | xargs rm -rf
find /tmp -type d 
# 🤡
# 🤡
# 🤡
ll /tmp
mkdir /tmp/sdlfjsdjf
find /tmp -type d -empty | xargs rm -rf
ll /tmp/
mkdir /tmp/sdlfjsdjf
find /tmp -type d -empty -de
find /tmp -type d -empty -delete 
man find
which plocate
updatedb
locate ".conf" |grep "^/etc"
