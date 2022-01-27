echo "====== Configure SSH"
sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
service sshd restart
echo vagrant:vagrant|chpasswd


