---
layout: default
title: Router Settings - Collexion
---

# Router Settings

Settings for the wireless router at Collexion...

Linksys WRT54GS v6 with DD-WRT v24-sp2 micro

* SSID: collexion

* WPA2 Pass: (it's taped on top of the router...)

* Login password: same as WPA2 password

* Static WAN IP: 72.250.169.90/29

* Static WAN gateway: 72.250.169.89

* DNS: 64.191.128.10, 64.191.128.101* Interal IP: 172.30.1.1/16  (yes, a /16 subnet mask, not /24)

* DHCP range: 172.30.1.50 - .99 /16* Static IPs assigned by DHCP:

* 172.30.1.11 (cloud001)

* 172.30.1.12 (cloud002)

* 172.30.1.13 (cloud003)

* 172.30.1.14 (cloud004)

* 172.30.1.253 (webcam)* Static IPs hardcoded on the devices:

* 172.30.1.250 (cisco ethernet switch)* Port forwards:

* 72.250.169.90 TCP port 221: 172.30.1.11 (cloud001) port 22

* 72.250.169.90 TCP port 222: 172.30.1.12 (cloud002) port 22

* 72.250.169.90 TCP port 223: 172.30.1.13 (cloud003) port 22

* 72.250.169.90 TCP port 224: 172.30.1.14 (cloud004) port 22

* 72.250.169.90 TCP port 8773: 172.30.1.11 (cloud001) port 8773