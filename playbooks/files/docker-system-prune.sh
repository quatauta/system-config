#!/bin/sh

systemctl status docker 1>/dev/null 2>&1 || STOP_DOCKER=1
systemctl start docker
docker system prune -f
docker system prune --volume -f
docker system prune --all -f

[ "${STOP_DOCKER}" = "1" ] && systemctl stop docker
