sudo yum update -y 
sudo cp grafana.repo /etc/yum.repos.d/grafana.repo
sudo yum install -y grafana
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server.service
sudo systemctl status grafana-server
