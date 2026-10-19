vi /etc/login.defs 
ll /etc
chage -M 90 -m 7 manny
chage -d 0 jack
useradd marcia
chage -E 2026-12-31 marcia
chage -l moe > /root/moe_aging.txt
chage -W 7 jan

# --- 2026-10-19 redo (tasks 1, 3-6 not redone; see the run above) ---
chage -M 90 -m 7 manny
chage -l manny
man chage
