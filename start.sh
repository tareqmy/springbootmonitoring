source .env
echo "Starting existing containers..."
docker start $CADVISOR $NODEEXPORTER $CADDY $GRAFANA $PROMETHEUS
