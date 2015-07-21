#!/bin/bash
cd /home/consul
wget https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip
unzip *.zip
rm *.zip
chown -R consul:consul dist