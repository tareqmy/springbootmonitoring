source .env
echo "Delete existing containers..."
docker rm -f $NODEEXPORTER $CADDY $GRAFANA $PROMETHEUS
