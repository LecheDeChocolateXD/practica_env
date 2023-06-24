systemctl restart dbus
systemctl enable firewalld
systemctl start firewalld
systemctl status firewalld

firewall-cmd --zone=public --add-service=mysql --permanent
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --zone=public --add-port=4444/tcp --permanent
firewall-cmd --zone=public --add-port=4567/tcp --permanent
firewall-cmd --zone=public --add-port=4568/tcp --permanent
firewall-cmd --zone=public --add-port=4567/udp --permanent
firewall-cmd --reload