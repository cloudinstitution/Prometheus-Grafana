# Prometheus-Grafana

## git clone 

git clone https://github.com/cloudinstitution/Prometheus-Grafana.git
cd Prometheus-Grafana
chmod +x *.sh

## Install Prometheus

sh prometheus-ec2-install.sh

Access prometheus at  http://100.26.180.156:9090/   # replace your ip EC2 instance public address

## Install Prometheus node exporter

sh prometheus-node-exporter.sh 

Access prometheus at  http://100.26.180.156:9100/metrics # replace your ip EC2 instance public address
 ## Install Grafana 

 sh grafana-install-ec2.sh 
 Access grafana at http://3.234.252.111:3000/  # replace your ip EC2 instance public address
Grafana default username : admin
Grafana default password : admin
 

 


