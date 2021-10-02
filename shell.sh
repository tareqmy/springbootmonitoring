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
    elif [ "$1" == "cd" ]; then
        echo "shell for $CADDY"
        docker exec -it $CADDY /bin/sh
        exit 0;
    elif [ "$1" == "ne" ]; then
        echo "shell for $NODEEXPORTER"
        docker exec -it $NODEEXPORTER /bin/sh
        exit 0;
    elif [ "$1" == "ca" ]; then
        echo "shell for $CADVISOR"
        docker exec -it $CADVISOR /bin/sh
        exit 0;
    fi
fi
echo "shell for $GRAFANA"
docker exec -it $GRAFANA /bin/bash
