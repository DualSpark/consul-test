sudo apt-get -y update
sudo apt-get -y install bind9 bind9utils bind9-doc unzip

cd /usr/local/bin/

sudo wget https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip

sudo unzip *.zip

sudo rm *.zip

sudo adduser --gecos -q --disabled-password consul


sudo mkdir -p /etc/consul.d/{bootstrap,server,client}
sudo mkdir -p /var/consul
sudo chown consul:consul /var/consul  # SHELL
sudo cp /opt/app/templates/consul-agent-config.json /etc/consul.d/client/config.json
sudo cp /opt/app/templates/consul-agent-config.txt /etc/init/consul.conf
