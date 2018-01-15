sed -i 's/   port: 27000/   port: 27000\n   bindIpAll: true/' /shared/authmongod.conf
db.updateUser('userAdmin', {authenticationRestrictions:[{clientSource:["127.0.0.1"]}]})
db.updateUser('barbara', {authenticationRestrictions:[{clientSource:["192.168.36.0/24"]}]})