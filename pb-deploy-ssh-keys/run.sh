#!/bin/bash

ansible-playbook -i inventory.lst deploy-ssh-keys.yml --become-user=root --ask-pass
if [ $? -ne 0 ]; then exit 99; fi
