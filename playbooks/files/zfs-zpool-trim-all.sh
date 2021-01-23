#!/bin/sh

zpool list -H -o name |
xargs -n1 -r zpool trim --wait
