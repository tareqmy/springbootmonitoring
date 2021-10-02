source .env
echo "Stopping existing containers..."
docker stop $CADVISOR $NODEEXPORTER $CADDY $GRAFANA $PROMETHEUS
