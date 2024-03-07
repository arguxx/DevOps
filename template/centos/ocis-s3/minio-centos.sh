# please init shebang

echo "OCIS Development installation begin :) -- Argu"
yum update -y
yum install -y wget curl git

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

git clone https://github.com/owncloud/ocis.git
cd deployments/examples/ocis_s3



echo "installation success :) -- Argu"