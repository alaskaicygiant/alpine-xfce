#! /bin/sh
#add random nickname
echo "Nickname docker$(head -c 16 /dev/urandom | sha1sum | cut -c1-10)">>/etc/torrc
# start tor
/usr/bin/tor -f /etc/torrc
