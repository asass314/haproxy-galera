"haproxy" configuration for test  galera cluster from https://github.com/mjstealey/mariadb-galera 


Download the galera cluster and add these users to "init/initialize.sql"

CREATE USER 'haproxy'@'172.18.0.5';
CREATE USER 'root'@'haproxy.galeranet' IDENTIFIED BY 'temppassword';
CREATE USER 'myuser'@'haproxy.galeranet' IDENTIFIED BY 'temppassword';

Run the cluster container and afterwards start the haproxy:

1) docker build -t haproxy .

2) docker run -d --name haproxy-node1 --net galeranet --ip 172.18.0.5 --add-host=haproxy:172.18.0.5 --add-host=galera-node-1:172.18.0.2 --add-host=galera-node-2:172.18.0.3 --add-host=galera-node-3:172.18.0.4  -p 3306:3306  haproxy


