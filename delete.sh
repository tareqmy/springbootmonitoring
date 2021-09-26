source .env
echo "Delete existing containers..."
docker rm -f $CADDY $GRAFANA $PROMETHEUS
