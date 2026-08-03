ip a
sleep 600 &
PID=$!
echo PID
echo "$PID"
ps aux |grep "sleep 600"
kill 2237
ps aux |grep "sleep 600"
ps
ps -e
ps -eo
ps -e comm,pid
ps -eo comm,pid
ps -e
ps aux
ps -eo comm,pid --sort=-%cpu |less
ps -eo comm,pid --sort=-%cpu |head -n 1 >/root/topcpu.txt
ps -eo comm,pid --sort=-%cpu |head -n 2 >/root/topcpu.txt
cat /root/topcpu.txt
ps -eo comm,pid --sort=-%mem | head -n 2 > /root/topmem.txt
cat /root/topmem.txt
dd if=/dev/zero of=/dev/null &
killall dd
pgrep sshd
pgrep sshd > /root/sshd_pids.txt
cat /root/sshd_pids.txt
sleep 900 &
jobs -l
kill -15 2289
echo $?
kill -9 2290
jobs -l
pgrep sleep
