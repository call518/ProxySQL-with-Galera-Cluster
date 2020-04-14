# ProxySQL-with-Galera-Cluster
ProxySQL and Galera-Cluster for HA(Split Read/Write)

# Pre-Requirements
* Needed 3 Galera hodes(on more odd hosts) at least, for Quorum Cluster.
* Needed 1 ProxySQL host(or more) at least.

# HowTo Run

## Clone Git
```bash
# git clone git@github.com:call518/ProxySQL-with-Galera-Cluster.git
# cd ProxySQL-with-Galera-Cluster
```

## Set and Check - Env. and Configurations.
```bash
# vi inventory.lst
# vi vars-global.yml
```

## Run ALL at once
```bash
# ./run-all-playbooks.sh
All playbooks will be run, Are you sure (y/n)? y
```

## Run some part, one by one
```bash
# cd pb-{some part moduel that you want}
# ./run.sh
```

# Appendix
## Open ProxySQL Admin-Web Monitoring
```bash
try this on your browser.

http://{proxysql-host-address}}:6080

(Port and ID/PW is in configuration 'vars-*')
```
