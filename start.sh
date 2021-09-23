source .env
echo "Starting existing containers..."
docker start $GRAFANA $PROMETHEUS
