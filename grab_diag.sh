#!/usr/bin/env bash
. ./your_config.sh

scp ./diag.sh $ROUTER_ADDR:/tmp/diag.sh
ssh $ROUTER_ADDR '/tmp/diag.sh'
scp $ROUTER_ADDR:/tmp/diag-pkg.tgz ./
ssh $ROUTER_ADDR 'rm /tmp/diag-pkg.tgz'
mkdir -p ./diag-pkg
tar -x -z -f ./diag-pkg.tgz -C ./diag-pkg
