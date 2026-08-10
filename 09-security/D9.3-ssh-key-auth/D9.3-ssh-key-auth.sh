man find
vi /etc/ssh/sshd_config
bat /etc/ssh/sshd_config.d/
cat /etc/ssh/sshd_config.d/
ll /etc/ssh/sshd_config.d/
cat /etc/ssh/sshd_config.d/01-permitrootlogin.conf 
# 192.168.122.42
ssh-keygen -t ed25519 -N ""
man ssh-keygen
ssh-copy-id root@192.168.122.42
ssh 'root@192.168.122.42'
ssh root@server1
ssh root@server2
ssh 'root@192.168.122.42'
ssh-copy-id 'root@192.168.122.42'
ssh 'root@192.168.122.42'
ssh root@192.168.122.42
ssh-copy-id 'root@192.168.122.42'
ssh root@192.168.122.42

# --- on server2 ---
la
ls -a .ssh
cat .ssh/authorized_keys 
vi /etc/ssh/sshd_config
systemctl reload sshd
vi .ssh/authorized_keys
systemctl reload sshd
vi .ssh/authorized_keys
vi /etc/ssh/sshd_config
systemctl reload sshd
vi /etc/ssh/sshd_config
systemctl reload sshd
