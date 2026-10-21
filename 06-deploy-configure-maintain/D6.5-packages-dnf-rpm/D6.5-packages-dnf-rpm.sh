rpm -q
rpm -qa
rpm -qf dosfstools-4.2-12.el10.x86_64
rpm -qf vim-filesystem-9.1.083-9.el10_2.20.noarch
rpm -qf at-3.2.5-14.el10.x86_64
rpm -q at-3.2.5-14.el10.x86_64
rpm -qi at-3.2.5-14.el10.x86_64
rpm -qc at-3.2.5-14.el10.x86_64
rpm -qd at-3.2.5-14.el10.x86_64
rpm -qf /usr/share/man/man5/at.allow.5.gz
which at
rpm -qf /usr/bin/at
rpm -q httpd
dnf list installed httpd
rpm -q bind
rpm -qa |grep bind
mkdir -p /root/rpms && cd /root/rpms
dnf download star    
dnf install -y dnf-plugins-core
dnf download star    
dnf repolist --all | grep epel
dnf config-manager --set-disabled epel
dnf repolist --all | grep epel
dnf install -y sl --repo epel
rpm -q sl
dnf repolist --all | grep epel
