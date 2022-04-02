# daniilrostov_infra
daniilrostov Infra repository


## DZ№3
#### On bastion server run:
```iptables -I PREROUTING -t nat -p tcp -d 10.129.0.31 --dport 2222 -j DNAT --to 10.129.0.11:22```
```iptables -I POSTROUTING -t nat -p tcp -d 10.129.0.11 --dport 22 -j SNAT --to-source 10.129.0.31```
```sysctl net.ipv4.ip_forward=1```

#### On localhost in ~/.ssh/config:
Host bastion
  HostName 51.250.98.99
  IdentityFile ~/.ssh/id_rsa
  User user```

Host somehost
  Hostname 51.250.98.99
  IdentityFile ~/.ssh/id_rsa
  Port 2222
  User user

#### Result:
```$ ssh somehost```
```Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-112-generic x86_64)```
```Last login: Tue Mar 22 15:39:43 2022 from 10.129.0.31```
```user@somelocalhost:~$```

```bastion_IP 51.250.98.99```
```someinternalhost_IP = 10.129.0.11```


## DZ№4

Added bash scripts
deploy.sh
install_mongodb.sh
install_ruby.sh

testapp_IP = 51.250.73.27
testapp_port = 9292


## DZ№5

Added packer with ubuntu16.json
Added immutable.json