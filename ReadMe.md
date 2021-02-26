My scripts to access OpenWRT routers easily
===========================================

* `your_config.sh` - variable about YOUR router.

* `backup_config.sh` - backups `/etc/config`
* `backup_overlay.sh` - backups whole `/overlay/upper`
* `connect_uart.sh` - connects to a router via UART
* `grab_diag.sh` - Grabs information needed for diagnostics of network issues
* `start_wireshark.sh` - Starts tcpdump on router and WireShark locally and pipes tcpdump output to WireShark via SSH

A script for MTD backup can be grabbed from https://openwrt.org/docs/guide-user/installation/generic.backup
