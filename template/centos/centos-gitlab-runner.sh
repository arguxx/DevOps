# please init shebang

echo "Gitlab-Runner installation begin :) -- Argu"
yum update -y

sudo yum install -y vim git tmux curl wget net-tools
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh" | sudo bash && \
sudo yum -y install gitlab-runner

sudo yum install -y yum-utils && \
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# install docker engine
sudo yum install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-compose-plugin

sudo systemctl enable --now docker

firewall-cmd --zone=public --add-masquerade --permanent 
firewall-cmd --zone=public --add-port=2375/tcp --permanent
firewall-cmd --reload

echo "installation success :) -- Argu"