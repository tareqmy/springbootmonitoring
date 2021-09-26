source .env
echo "Starting existing containers..."
docker start $CADDY $GRAFANA $PROMETHEUS
