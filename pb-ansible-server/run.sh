#!/bin/bash

ansible-playbook -i inventory.lst ansible-server.yml
if [ $? -ne 0 ]; then exit 99; fi
