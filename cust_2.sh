#!/Bin/bash
cp ports.conf /etc/apache2; systemctl start apache2; 
\systemctl enable apache2; cp prometheus.yml /etc/prometheus; 
\systemctl restart prometheus; systemctl restart prometheus-node-exporter; 
\systemctl restart grafana-server; cp filebeat.yml /etc/filebeat ; 
\cp mysqld.cnf /etc/mysql/mysql.d; service mysql restart 
