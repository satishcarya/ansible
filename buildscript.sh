#!/bin/bash
yum install epel-release -y
yum install ansible -y
cd /root
yum install git -y
git clone https://github.com/satishcarya/ansible.git
cd /root/ansible
git config --global credential.helper store
cp -p /root/ansible/.gitconfig /root
cp -p /root/ansible/.git-credentials /root
ansible-playbook /root/ansible/yumupdate2.yml
