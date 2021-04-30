#!/usr/bin/expect

# Rise cisco vpn process
eval spawn /opt/cisco/anyconnect/bin/vpn

# Disconnect vpn client
set timeout 120
expect "VPN> " {send "disconnect\r"}

# Wait and close
set timeout 120
expect "VPN> " {send "exit\r"}

