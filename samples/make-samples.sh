#!/bin/bash
# Regenerate B2 sample data. Usage: bash make-samples.sh  (creates files in this dir)
set -e; cd "$(dirname "$0")"
cat > access.log <<'DATA_EOF'
10.0.0.1 - - [17/Jul/2026:10:00:01 +0000] "GET /index.html HTTP/1.1" 200 1024
10.0.0.2 - - [17/Jul/2026:10:00:05 +0000] "GET /about.html HTTP/1.1" 200 2048
10.0.0.1 - - [17/Jul/2026:10:01:10 +0000] "GET /api/users HTTP/1.1" 200 512
10.0.0.3 - - [17/Jul/2026:10:01:15 +0000] "POST /api/login HTTP/1.1" 401 128
10.0.0.1 - - [17/Jul/2026:10:02:00 +0000] "GET /api/data HTTP/1.1" 500 256
192.168.1.50 - - [17/Jul/2026:10:02:30 +0000] "GET /index.html HTTP/1.1" 200 1024
203.0.113.7 - - [17/Jul/2026:10:03:00 +0000] "GET /admin HTTP/1.1" 404 64
10.0.0.2 - - [17/Jul/2026:10:03:45 +0000] "GET /products HTTP/1.1" 200 4096
10.0.0.1 - - [17/Jul/2026:10:04:00 +0000] "GET /api/data HTTP/1.1" 500 256
10.0.0.3 - - [17/Jul/2026:10:05:12 +0000] "GET /contact HTTP/1.1" 200 800
10.0.0.1 - - [17/Jul/2026:10:06:00 +0000] "GET /api/data HTTP/1.1" 503 0
198.51.100.9 - - [17/Jul/2026:10:07:20 +0000] "GET /index.html HTTP/1.1" 200 1024
10.0.0.2 - - [17/Jul/2026:10:08:00 +0000] "GET /missing HTTP/1.1" 404 64
10.0.0.1 - - [17/Jul/2026:10:09:00 +0000] "GET /index.html HTTP/1.1" 200 1024
192.168.1.50 - - [17/Jul/2026:11:00:00 +0000] "POST /api/login HTTP/1.1" 200 128
10.0.0.3 - - [17/Jul/2026:11:01:00 +0000] "GET /admin HTTP/1.1" 404 64
203.0.113.7 - - [17/Jul/2026:11:02:00 +0000] "GET /admin HTTP/1.1" 404 64
10.0.0.1 - - [17/Jul/2026:11:03:00 +0000] "GET /api/users HTTP/1.1" 200 512
10.0.0.2 - - [17/Jul/2026:11:04:00 +0000] "GET /products HTTP/1.1" 301 0
198.51.100.9 - - [17/Jul/2026:11:05:00 +0000] "GET /index.html HTTP/1.1" 200 1024
10.0.0.1 - - [17/Jul/2026:11:06:00 +0000] "GET /api/data HTTP/1.1" 500 256
192.168.1.50 - - [17/Jul/2026:11:07:00 +0000] "GET /contact HTTP/1.1" 200 800
203.0.113.7 - - [17/Jul/2026:11:08:00 +0000] "GET /admin HTTP/1.1" 404 64
10.0.0.3 - - [17/Jul/2026:11:09:00 +0000] "GET /products HTTP/1.1" 200 4096
10.0.0.1 - - [17/Jul/2026:11:10:00 +0000] "GET /index.html HTTP/1.1" 200 1024
10.0.0.2 - - [17/Jul/2026:11:11:00 +0000] "GET /about.html HTTP/1.1" 200 2048
192.168.1.50 - - [17/Jul/2026:11:12:00 +0000] "GET /products HTTP/1.1" 301 0
203.0.113.7 - - [17/Jul/2026:11:13:00 +0000] "POST /api/login HTTP/1.1" 503 0
198.51.100.9 - - [17/Jul/2026:11:14:00 +0000] "GET /index.html HTTP/1.1" 200 1024
10.0.0.1 - - [17/Jul/2026:11:15:00 +0000] "GET /api/data HTTP/1.1" 200 512
DATA_EOF
cat > sales.csv <<'DATA_EOF'
date,region,product,units,price
2026-07-01,East,Widget,10,2.50
2026-07-01,West,Gadget,5,9.99
2026-07-02,East,Gizmo,3,14.00
2026-07-02,North,Widget,7,2.50
2026-07-03,West,Widget,12,2.50
2026-07-03,East,Gadget,4,9.99
2026-07-04,North,Gizmo,6,14.00
2026-07-04,West,Gizmo,2,14.00
2026-07-05,East,Widget,8,2.50
2026-07-05,North,Gadget,9,9.99
2026-07-06,West,Gadget,1,9.99
2026-07-06,East,Gizmo,5,14.00
DATA_EOF
cat > syslog.log <<'DATA_EOF'
Jul 17 10:00:01 server1 sshd[1234]: Accepted password for tongzhou from 10.0.0.5 port 51000 ssh2
Jul 17 10:00:05 server1 sshd[1235]: Failed password for invalid user admin from 203.0.113.7 port 40000 ssh2
Jul 17 10:01:00 server1 cron[2001]: (root) CMD (/usr/bin/backup.sh)
Jul 17 10:02:15 server1 kernel: Out of memory: Killed process 3000 (java)
Jul 17 10:03:00 server1 nginx[4000]: 10.0.0.1 GET /index.html 200
Jul 17 10:04:30 server1 sshd[1236]: Failed password for invalid user oracle from 203.0.113.7 port 40012 ssh2
Jul 17 10:05:00 server1 systemd[1]: Started Session 5 of user tongzhou.
Jul 17 10:06:00 server1 nginx[4000]: 10.0.0.2 GET /api 500
Jul 17 10:07:45 server1 sshd[1237]: Failed password for invalid user admin from 198.51.100.9 port 33001 ssh2
Jul 17 10:08:00 server1 cron[2002]: (tongzhou) CMD (/home/tongzhou/report.sh)
Jul 17 10:09:10 server1 kernel: EXT4-fs error (device sda1) in ext4_reserve
Jul 17 10:10:00 server1 sshd[1238]: Accepted publickey for tongzhou from 10.0.0.5 port 51002 ssh2
Jul 17 10:11:30 server1 sshd[1239]: Failed password for root from 203.0.113.7 port 40020 ssh2
Jul 17 10:12:00 server1 nginx[4000]: 10.0.0.3 POST /api/login 503
DATA_EOF
cat > passwd.sample <<'DATA_EOF'
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
tongzhou:x:1000:1000:Tongzhou:/home/tongzhou:/bin/bash
alice:x:1001:1001:Alice Ng:/home/alice:/bin/bash
bob:x:1002:1002:Bob Lee:/home/bob:/bin/sh
carol:x:1003:1003::/home/carol:/usr/sbin/nologin
svc_web:x:1500:1500::/var/www:/sbin/nologin
svc_db:x:1501:1501::/var/lib/db:/sbin/nologin
dave:x:1004:1004:Dave:/home/dave:/bin/bash
DATA_EOF
echo "sample data ready: access.log sales.csv syslog.log passwd.sample"
