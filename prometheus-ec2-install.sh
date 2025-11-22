wget https://github.com/prometheus/prometheus/releases/download/v2.1.0/prometheus-2.1.0.linux-amd64.tar.gz
 tar -xf prometheus-2.1.0.linux-amd64.tar.gz
sudo mv prometheus-2.1.0.linux-amd64/prometheus prometheus-2.1.0.linux-amd64/promtool /usr/local/bin 
sudo mkdir /etc/prometheus /var/lib/prometheus
sudo mv prometheus-2.1.0.linux-amd64/consoles prometheus-2.1.0.linux-amd64/console_libraries /etc/prometheus
rm -rf prometheus-2.1.0.linux-amd64*
echo "172.31.75.218 web_01" >> /etc/hosts   # change the node exporter ip here.
cp prometheus.yml /etc/prometheus/prometheus.yml 
sudo useradd -rs /bin/false prometheus
sudo chown -R prometheus: /etc/prometheus /var/lib/prometheus
vi /etc/systemd/system/prometheus.service 
sudo systemctl daemon-reload
sudo systemctl enable prometheus 
sudo systemctl start prometheus
sudo systemctl status prometheus
