#!/usr/bin/env sh
. ./your_config.sh

ssh $ROUTER_ADDR '/sbin/sysupgrade -b -' > config_backup.tgz
