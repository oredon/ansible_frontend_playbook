#!/usr/bin/env bash

if ! [ `which ansible` ]; then
	apt-get update -y
	apt-get install -y ansible
fi

ansible-playbook -i /provision/ansible/localhost /provision/ansible/master.yml
