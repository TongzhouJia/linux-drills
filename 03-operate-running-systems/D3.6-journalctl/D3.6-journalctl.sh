journalctl -b -n 50
journalctl -b -n 50 >/root/journal_boot.txt
cat /root/journal_boot.txt
journalctl -b -k > /root/kmsg.txt
journalctl -u sshd --since today > /root/sshd_log.txt
cat /root/sshd_log.txt
journalctl -p err > /root/errs.txt
journalctl --since "1 hour ago" > /root/lasthour.txt
journalctl -u sshd -f
