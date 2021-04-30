#!/usr/bin/expect

# Rise cisco vpn process with connection to HAW VPN domain
eval spawn /opt/cisco/anyconnect/bin/vpn connect vpn.haw-hamburg.de

# Send username and password request from console via expect to vpn client
expect "Username: " {send "abb344\r"}
expect "Password: " {send "hW#0409-2112!\r"}

# wait for establishing connection and keep up for further VPN tool commands
set timeout 60
expect "VPN> " {send "exit\r"}

