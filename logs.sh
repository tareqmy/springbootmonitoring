source .env

if [ $# -eq 1 ]
then

    if [ "$1" == "pr" ]; then
        echo "logs for $PROMETHEUS"
        docker logs -f $PROMETHEUS
        exit 0;
    elif [ "$1" == "gr" ]; then
        echo "logs for $GRAFANA"
        docker logs -f $GRAFANA
        exit 0;
    elif [ "$1" == "cd" ]; then
        echo "logs for $CADDY"
        docker logs -f $CADDY
        exit 0;
    elif [ "$1" == "ne" ]; then
        echo "logs for $NODEEXPORTER"
        docker logs -f $NODEEXPORTER
        exit 0;
    elif [ "$1" == "ca" ]; then
        echo "logs for $CADVISOR"
        docker logs -f $CADVISOR
        exit 0;
    fi
fi
echo "logs for $GRAFANA"
docker logs -f $GRAFANA
