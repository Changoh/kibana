#!/bin/bash

CONTAINER_NAME="kibana-example"

function usage {
    "Usage: ${0##*/} {start|stop|restart}"
}

function start {
    docker run --name $CONTAINER_NAME \
        -it \
        -e "TZ=Asia/Seoul" \
        -p 5601:5601 \
	--link=elasticsearch-example \
        -v $KIBANA_HOME/config/kibana.yml:/usr/share/kibana/config/kibana.yml:ro \
	docker.elastic.co/kibana/kibana:5.2.2
}

function stop {
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
}

if [ "$#" -ne 1 ]; then
    usage
    exit 1
fi

while [ "$#" -gt "0" ]
do
    case $1 in
        start)
            start
            ;;
        stop)
            stop
            ;;
        restart)
            stop
            start
            ;;
        *)
            usage
            exit 1
            ;;
    esac
    shift
done

