docker run -d --name haproxy --net galeranet --ip 172.18.0.5 --add-host=haproxy:172.18.0.5 --add-host=galera-node-1:172.18.0.2 --add-host=galera-node-2:172.18.0.3 --add-host=galera-node-3:172.18.0.4  -p 3306:3306  haproxy