./delete.sh
rm -rf grafana/data
rm -rf prometheus/data
rm -rf caddy/data
./deploy.sh