#!/bin/ash

TMPDIR=/tmp/diag-pkg
DIAGPKG=/tmp/diag-pkg.tgz
mkdir -p $TMPDIR

cp /proc/meminfo $TMPDIR/meminfo
lsmod > $TMPDIR/lsmod
iw phy > $TMPDIR/iw_phy
iw dev > $TMPDIR/iw_dev
ip link show > $TMPDIR/ip_link_show
ip route show > $TMPDIR/ip_route_show
ip rule show > $TMPDIR/ip_rule_show
wg show > $TMPDIR/wg_show
wg showconf wg0 > $TMPDIR/wg_showconf_wg0
iptables-save -f $TMPDIR/iptables
iptables -n -L > $TMPDIR/iptables_nl
logread > $TMPDIR/syslog

cp /etc/config/network $TMPDIR/network
cp /etc/config/firewall $TMPDIR/firewall

tar c -z -f $DIAGPKG -C $TMPDIR .
rm -rf $TMPDIR
