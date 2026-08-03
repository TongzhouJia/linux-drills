nice -n 10 sleep 800 &
ps -eo pid,ni,cmd |grep 2364
renice -n 15 -p 2364
ps -eo pid,ni,cmd -p 2364
ps -o pid,ni,cmd -p 2364
nice -n -20 sleep 900 &
ps -o pid,ni,cmd -p 2387
ps -o ni= -p 2387
ps -o ni= -p 2387 > /root/nice.txt
renice -n 19 2387
ps -o pid,ni,cmd
