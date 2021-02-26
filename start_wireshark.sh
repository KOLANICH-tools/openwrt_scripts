#!/usr/bin/env sh
. ./your_config.sh

mkfifo ./remote
ssh $ROUTER_ADDR "tcpdump -s 0 -U -n -w - -i $IF_TO_CAPTURE not port 22" > ./remote &
SSH_PROC_ID=$(echo $!)
wireshark -k -i ./remote
kill $SSH_PROC_ID
ssh $ROUTER_ADDR "killall tcpdump"
rm ./remote
