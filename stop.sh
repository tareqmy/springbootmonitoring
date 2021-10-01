source .env
echo "Stopping existing containers..."
docker stop $NODEEXPORTER $CADDY $GRAFANA $PROMETHEUS
