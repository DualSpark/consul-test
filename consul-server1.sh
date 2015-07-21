#sudo apt-get -y update
sudo apt-get -y install unzip
cd /usr/local/bin/
sudo wget https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip
sudo unzip *.zip
sudo rm *.zip

sudo adduser --gecos -q --disabled-password consul
sudo mkdir -p /etc/consul.d/{bootstrap,server,client}
sudo mkdir -p /var/consul
sudo mkdir -p /vagrant/consul

sudo chown consul:consul /var/consul  # SHELL
sudo cp /opt/app/templates/consul-server1-config.json /etc/consul.d/server/config.json
sudo cp /opt/app/templates/consul-server-config.txt /etc/init/consul.conf

