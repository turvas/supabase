#/bin/bash
if [ $# -lt 1 ]; then
        echo "Usage $0 password [other pw options]"
        exit 1
fi
ID=`docker ps -qf "name=k8s_mosq"`
docker exec $ID /mosquitto/pw  -l 88 -p $@
