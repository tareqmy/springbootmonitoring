source .env
echo "Stopping existing containers..."
docker stop $CADDY $GRAFANA $PROMETHEUS
