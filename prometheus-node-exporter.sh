#!/bin/bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.1.2/node_exporter-1.1.2.linux-amd64.tar.gz
tar -xvf node_exporter-1.1.2.linux-amd64.tar.gz
mv node_exporter-1.1.2.linux-amd64/node_exporter /usr/local/bin/
rm -rf node_exporter-1.1.2.linux-amd64/*
sudo useradd -rs /bin/false node_exporter
cp node_exporter.service /etc/systemd/system/node_exporter.service
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
sudo systemctl status node_exporter
