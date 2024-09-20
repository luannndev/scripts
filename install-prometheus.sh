#!/bin/bash

sudo apt-get update

sudo apt-get install -y curl

sudo curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest \
| grep browser_download_url \
| grep linux-amd64 \
| cut -d '"' -f 4 \
| wget -qi -

tar xvf prometheus*.tar.gz

sudo mv prometheus*/prometheus /usr/local/bin/
sudo mv prometheus*/promtool /usr/local/bin/
sudo mv prometheus*/prometheus.yml /etc/prometheus/

sudo useradd --no-create-home --shell /bin/false prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus

sudo bash -c 'cat << EOF > /etc/systemd/system/prometheus.service
 [Unit]
 Description=Prometheus
 Wants=network-online.target
 After=network-online.target

 [Service]
 User=prometheus
 Group=prometheus
 Type=simple
 ExecStart=/usr/local/bin/prometheus \
 --config.file /etc/prometheus/prometheus.yml \
 --storage.tsdb.path /var/lib/prometheus/ \
 --web.console.templates=/etc/prometheus/consoles \
 --web.console.libraries=/etc/prometheus/console_libraries

 [Install]
 WantedBy=multi-user.target
EOF'

sudo systemctl daemon-reload

sudo systemctl start prometheus

sudo systemctl enable prometheus
