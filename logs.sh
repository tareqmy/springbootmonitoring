source .env

if [ $# -eq 1 ]
then

    if [ "$1" == "pr" ]; then
        echo "logs for $PROMETHEUS"
        docker logs -f $PROMETHEUS
        exit 0;
    elif [ "$1" == "gr" ]; then
        echo "logs for $GRAFANA"
        ddocker logs -f $GRAFANA
        exit 0;
    fi
fi
echo "logs for $GRAFANA"
docker logs -f $GRAFANA
