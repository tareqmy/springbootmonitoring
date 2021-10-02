source .env
echo "Delete existing containers..."
docker rm -f $CADVISOR $NODEEXPORTER $CADDY $GRAFANA $PROMETHEUS
