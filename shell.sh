source .env

if [ $# -eq 1 ]
then

    if [ "$1" == "pr" ]; then
        echo "shell for $PROMETHEUS"
        docker exec -it $PROMETHEUS /bin/sh
        exit 0;
    elif [ "$1" == "gr" ]; then
        echo "shell for $GRAFANA"
        docker exec -it $GRAFANA /bin/bash
        exit 0;
    fi
fi
echo "shell for $GRAFANA"
docker exec -it $GRAFANA /bin/bash
