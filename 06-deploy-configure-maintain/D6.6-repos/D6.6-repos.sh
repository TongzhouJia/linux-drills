dnf --version
ping -c2 192.168.55.47
curl -sI http://192.168.55.47/repo/BaseOS/ | head -1
curl -s http://192.168.55.47/repo/BaseOS/ | head  
curl -sI http://192.168.55.47/repo/BaseOS/repodata/repomd.xml | head -1
vi /etc/yum.repos.d/rhel.repo
dnf clean all
dnf repolist
dnf makecache
dnf list available
dnf --repo=BaseOS list available
lsof
dnf install -y zsh
rpm -q zsh
which zsh
dnf info zsh
cat >> /etc/yum.repos.d/rhel.repo <<'EOF'

[AppStream]
name=AppStream
baseurl=http://192.168.55.47/repo/AppStream/
gpgcheck=0
enabled=1
EOF

cat /etc/yum.repos.d/rhel.repo
dnf clean all
dnf repolist
dnf --repo=AppStream list available | head
scp /etc/yum.repos.d/rhel.repo root@server2:/etc/yum.repos.d/
ssh root@server2
cat /etc/yum.repos.d/rhel.repo
dnf clean all
dnf repolist
dnf list available | head
exit
dnf --version
dnf config-manager --add-repo http://192.168.55.47/repo/AppStream/
dnf repolist --all
dnf config-manager --set-disabled 192.168.55.47_repo_AppStream_
ls -l /etc/yum.repos.d/                
dnf install -y createrepo_c
mkdir -p /myrepo
dnf install -y dnf-plugins-core
dnf download --destdir=/myrepo zsh star tree
