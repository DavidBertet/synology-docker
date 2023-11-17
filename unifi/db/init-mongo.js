db.getSiblingDB("unifi").createUser({user: "<USER>", pwd: "<PASS>", roles: [{role: "dbOwner", db: "unifi"}]});
db.getSiblingDB("unifi_stat").createUser({user: "<USER>", pwd: "<PASS>", roles: [{role: "dbOwner", db: "unifi_stat"}]});

