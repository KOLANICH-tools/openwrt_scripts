#!/usr/bin/env sh
. ./your_config.sh

ssh $ROUTER_ADDR 'tar c -z -f - -C /overlay/upper .' > overlay_backup.tgz
