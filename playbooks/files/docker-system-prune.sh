#!/bin/sh

systemctl status docker 1>/dev/null 2>&1 || STOP_DOCKER=1
systemctl start docker
docker system prune -f

[ "${STOP_DOCKER}" = "1" ] && systemctl stop docker
