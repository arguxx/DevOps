# Please init SheBang

echo "Gitlab-CE installation begin :) -- Argu"
yum update -y

sudo systemctl enable sshd
sudo systemctl start sshd

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld

sudo yum install postfix -y
sudo systemctl enable postfix
sudo systemctl start postfix

# Gitlab Package
LC_ALL="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

IP_ADDRESS=$(echo $(ip addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'))
sudo EXTERNAL_URL="http://$IP_ADDRESS" yum install -y gitlab-ce

echo "Username: root"
cat /etc/gitlab/initial_root_password

echo "installation success :) -- Argu"