# consul-test
## Grab source
```
git clone https://github.com/DualSpark/consul-test.git
```
## load up the vms
```
cd consul-test
vagrant up
```

## bootstrap consul
```
vagrant ssh consulserver1
sudo su consul
consul agent -server -config-dir /etc/consul.d/bootstrap
```

### Servers 2 and 3
```
vagrant ssh consulserver2
sudo start consul
```
```
vagrant ssh consulserver3
sudo start consul
```
#### Finish bootstrapping
go back to the tab that has the consulserver1 ssh session running.
```
CTRL + C
exit
sudo start consul
```

## Start the agents
SSH into each agent jenkins, web1, ns1,ns2,cpanel
```
sudo start consul
```

## Web UI
If everything worked like it should then you can open a browser and head to:
[demo consul ui](http://cp.dualspark-dev.com:8500/ui/)
