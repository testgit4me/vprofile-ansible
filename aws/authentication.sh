#!/bin/bash
echo "qeqwew" > ~/.bashrc
source .bashrc
apt install python3-pip -y
pip install boto3 -y
ansible-playbook aws.yaml
