# dns-socket-cacti-template

====
<br>
## Requirement<br>
OS:CentOS6<br>
Package:cacti-0.8.8b-7.el6.noarch<br>
<br>
## Install<br>
-- edit snmpd.conf<br>
$ cat snmpd.conf.add >> /etc/snmp/snmpd.conf<br>
<br>
-- check example<br>
$ cat /etc/snmp/snmpd.conf|grep dns-socket<br>
extend .1.3.6.1.4.1.18689.0.5 dns-socket /usr/local/bin/dns-socket<br>
<br>
-- copy dns-socket<br>
$ cp dns-socket /usr/local/bin/<br>
$ chmod 755 /usr/local/bin/dns-socket<br>
<br>
-- check example<br>
$ /usr/local/bin/dns-socket<br>
outputudpsocket:13 outputtcpsocket:79<br>
<br>
## Notes
DNSが外向きに張るセッションのUDP/TCPカウントを取ってみる。<br>
netstatを使用<br>
BINDだと「-S」オプションが関係する。<br>
