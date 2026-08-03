systemctl get-default
systemctl get-default > /root/current_target.txt
cat /root/current_target.txt
# systemctl set-default multi-user.target
# systemctl isolate multi-user.target
# systemctl set-default graphical.target
systemctl list-unit-files --type=target
systemctl list-unit-files --type=target >/root/targets.txt
echo "multi-user.target" > /root/rl3.txt
