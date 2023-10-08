My scripts to access OpenWRT routers easily
===========================================
**We have moved to https://codeberg.org/KOLANICH-tools/openwrt_scripts, grab new versions there.**

Under the disguise of "better security" Micro$oft-owned GitHub has [discriminated users of 1FA passwords](https://github.blog/2023-03-09-raising-the-bar-for-software-security-github-2fa-begins-march-13/) while having commercial interest in success of [FIDO 1FA specifications](https://fidoalliance.org/specifications/download/) and [Windows Hello implementation](https://support.microsoft.com/en-us/windows/passkeys-in-windows-301c8944-5ea2-452b-9886-97e4d2ef4422) which [it promotes as a replacement for passwords](https://github.blog/2023-07-12-introducing-passwordless-authentication-on-github-com/). It will result in dire consequencies and is competely inacceptable, [read why](https://codeberg.org/KOLANICH/Fuck-GuanTEEnomo).

If you don't want to participate in harming yourself, it is recommended to follow the lead and migrate somewhere away of GitHub and Micro$oft. Here is [the list of alternatives and rationales to do it](https://github.com/orgs/community/discussions/49869). If they delete the discussion, there are certain well-known places where you can get a copy of it. [Read why you should also leave GitHub](https://codeberg.org/KOLANICH/Fuck-GuanTEEnomo).

---

* `your_config.sh` - variable about YOUR router.

* `backup_config.sh` - backups `/etc/config`
* `backup_overlay.sh` - backups whole `/overlay/upper`
* `connect_uart.sh` - connects to a router via UART
* `grab_diag.sh` - Grabs information needed for diagnostics of network issues
* `start_wireshark.sh` - Starts tcpdump on router and WireShark locally and pipes tcpdump output to WireShark via SSH

A script for MTD backup can be grabbed from https://openwrt.org/docs/guide-user/installation/generic.backup
