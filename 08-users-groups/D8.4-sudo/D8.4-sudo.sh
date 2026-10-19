visudo
%dba_managers ALL=(ALL) ALL
visudo
grep -n '^%wheel' /etc/sudoers
usermod -aG wheel manny
su - manny
sudo whoami
# lines added inside visudo (/etc/sudoers):
#   Cmnd_Alias MESSAGES = /bin/tail -f /var/log/messages
#   %dba_managers ALL=(ALL) ALL
#   %dba_intern ALL=(root) MESSAGES
#   manny ALL=(ALL) NOPASSWD: /usr/bin/systemctl
# as manny, after su - manny:
ll
pwd
whoami
exit
root
sudo whoami
visudo -f /etc/sudoers.d/dba
sudo visudo -f /etc/sudoers.d/dba
visudo -f /etc/sudoers.d/dba
visudo -cf /etc/sudoers.d/dba
