#!/bin/bash

set -e
set -x

sudo mkdir -p /opt/wwa
sudo chown vagrant:vagrant /opt/wwa
sudo apt-get -y install openjdk-8-jre python3-pip
sudo pip3 install /opt/wwa/wwa_app_example-py3-none-any.whl

