ip a
ls /var/log/journal
ls /run/log/journal
vi /root/journal_storage.txt
vi /etc/systemd/journald.conf
ls /usr/lib/systemd/journald.conf
[200~mkdir -p /etc/systemd/journald.conf.d
mkdir -p /etc/systemd/journald.conf.d
vi /etc/systemd/journald.conf.d/persistent.conf
mkdir -p /var/log/journal
systemctl restart systemd-journald
reboot
journalctl --list-boots
journalctl -b -1
vi /etc/systemd/journald.conf.d/persistent.conf
reboot
journalctl --list-boots
vi /etc/systemd/journald.conf.d/persistent.conf
systemctl restart systemd-journald
journalctl --disk-usage
journalctl -b -1              # 上一次启动
journalctl -b -1 -p err       # 组合用:上次启动里的 err 及更严重
journalctl -b -1 -u sshd      # 上次启动里某个服务
