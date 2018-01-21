#!/bin/bash

set -e
set -x

sudo apt-get -y install openjdk-8-jre python3-pip
sudo -H pip3 install --upgrade pip
sudo -H pip3 install /opt/wwa/*.whl
sudo mv /opt/wwa/app-example.service /etc/systemd/system
sudo mv /opt/wwa/wwa_devops.service /etc/systemd/system
sudo mv /opt/wwa/wwa_devops.timer /etc/systemd/system
sudo systemctl enable app-example.service
sudo systemctl enable wwa_devops.timer

