source .env
echo "Starting existing containers..."
docker start $NODEEXPORTER $CADDY $GRAFANA $PROMETHEUS
