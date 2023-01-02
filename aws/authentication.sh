#!/bin/bash
echo "qeqwew" > ~/.bashrc
source .bashrc
apt install python3-pip -y
pip install boto3 -y
pip install boto -y

ansible-playbook aws.yaml

    - ec2:
        key_name: keypair
        instance_type: t2.micro
        image: ami-0b5eea76982371e91
        region: us-east-1
        wait: yes
        exact_count: 1
        instance_tags:
          Name: db01
          db: postgres
        count_tag:
          Name: db01
          db: postgres
