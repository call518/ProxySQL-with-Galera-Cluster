#!/bin/bash

ansible-playbook -i inventory.lst proxysql.yml --tags ansible-server --skip-tags galera-cluster,proxysql-cluster,save-proxysql
if [ $? -ne 0 ]; then exit 99; fi

ansible-playbook -i inventory.lst proxysql.yml --tags galera-cluster --skip-tags ansible-server,proxysql-cluster,save-proxysql
if [ $? -ne 0 ]; then exit 99; fi

ansible-playbook -i inventory.lst proxysql.yml --tags proxysql-cluster --skip-tags ansible-server,galera-cluster
if [ $? -ne 0 ]; then exit 99; fi

