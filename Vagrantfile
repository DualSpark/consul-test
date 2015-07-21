# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "consulserver1", primary: true do |consulserver1|
    consulserver1.vm.box = "ubuntu/trusty64"
    consulserver1.landrush.enabled = true
    consulserver1.landrush.tld = 'dualspark-dev.com'
    consulserver1.vm.hostname = "consul1.dualspark-dev.com"
    consulserver1.vm.network :private_network, ip: "172.17.8.101"
    consulserver1.vm.provision :shell, path: "consul-bootstrap.sh"
    consulserver1.vm.synced_folder ".", "/opt/app"

  end

  config.vm.define "consulserver2" do |consulserver2|
    consulserver2.vm.box = "ubuntu/trusty64"
    consulserver2.landrush.enabled = true
    consulserver2.landrush.tld = 'dualspark-dev.com'
    consulserver2.vm.hostname = "consul2.dualspark-dev.com"
    consulserver2.vm.network "private_network", ip: "172.17.8.102"
    consulserver2.vm.provision :shell, path: "consul-server2.sh"
    consulserver2.vm.synced_folder ".", "/opt/app"

  end

  config.vm.define "consulserver3" do |consulserver3|
    consulserver3.vm.box = "ubuntu/trusty64"
    consulserver3.landrush.enabled = true
    consulserver3.landrush.tld = 'dualspark-dev.com'
    consulserver3.vm.hostname = "consul3.dualspark-dev.com"
    consulserver3.vm.network "private_network", ip: "172.17.8.103"
    consulserver3.vm.provision :shell, path: "consul-server3.sh"
    consulserver3.vm.synced_folder ".", "/opt/app"

  end

  config.vm.define "web1" do |web1|
    web1.vm.box = "avenuefactory/lamp"
    web1.landrush.enabled = true
    web1.landrush.tld = 'dualspark-dev.com'
    web1.vm.hostname = "web1.dualspark-dev.com"
    web1.vm.network "private_network", ip: "172.17.8.104"
    web1.vm.provision :shell, path: "consul-agent-web.sh"
    web1.vm.synced_folder ".", "/opt/app"

  end

config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "DJenkinsDev/VagrantPHP"
    jenkins.landrush.enabled = true
    jenkins.landrush.tld = 'dualspark-dev.com'
    jenkins.vm.hostname = "jenkins.dualspark-dev.com"
    jenkins.vm.network "private_network", ip: "172.17.8.105"
    jenkins.vm.provision :shell, path: "consul-agent-jenkins.sh"
    jenkins.vm.synced_folder ".", "/opt/app"

  end

config.vm.define "ns1" do |ns1|
    ns1.vm.box = "ubuntu/trusty64"
    ns1.landrush.enabled = true
    ns1.landrush.tld = 'dualspark-dev.com'
    ns1.vm.hostname = "ns1.dualspark-dev.com"
    ns1.vm.network "private_network", ip: "172.17.8.106"
    ns1.vm.provision :shell, path: "consul-agent-ns1.sh"
    ns1.vm.synced_folder ".", "/opt/app"

  end
config.vm.define "ns2" do |ns2|
    ns2.vm.box = "ubuntu/trusty64"
    ns2.landrush.enabled = true
    ns2.landrush.tld = 'dualspark-dev.com'
    ns2.vm.hostname = "ns2.dualspark-dev.com"
    ns2.vm.network "private_network", ip: "172.17.8.107"
    ns2.vm.provision :shell, path: "consul-agent-ns2.sh"
    ns2.vm.synced_folder ".", "/opt/app"

  end

config.vm.define "cpanel" do |cpanel|
    cpanel.vm.box = "ubuntu/trusty64"
    cpanel.landrush.enabled = true
    cpanel.landrush.tld = 'dualspark-dev.com'
    cpanel.vm.hostname = "cp.dualspark-dev.com"
    cpanel.vm.network "private_network", ip: "172.17.8.108"
    cpanel.vm.provision :shell, path: "consul-agent-cp.sh"
    cpanel.vm.synced_folder ".", "/opt/app"

  end


  #config.vm.provision :shell, path: "bootstrap.sh"


  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.vm.provider "virtualbox" do |vb|
     

end
