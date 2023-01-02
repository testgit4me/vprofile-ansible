#!/bin/bash
echo "qeqwew" > ~/.bashrc
source .bashrc
apt install python3-pip -y
pip install boto3 -y
pip install boto -y

ansible-playbook aws.yaml





              - name: start multiple instances
      ec2_instance:
        key_name: "keypair"
        instance_type: t2.micro
        image_id: ami-0574da719dca65348
        count: 1
        region: us-east-1
        tags:
          foo: bar
