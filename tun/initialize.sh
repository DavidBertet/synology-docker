#!/bin/sh

# Required by OpenVPN
# Triggered at startup with Synology Task Scheduler

# Create the necessary file structure for /dev/net/tun
if ( [ ! -c /dev/net/tun ] ); then
  if ( [ ! -d /dev/net ] ); then
    mkdir -m 755 /dev/net
  fi
  mknod /dev/net/tun c 10 200
fi

# Load the tun module if not already loaded
if ( !(lsmod | grep -q "^tun\s") ); then
  insmod /lib/modules/tun.ko
fi

# Load iptables mangle is not already loaded
if ( !(lsmod |grep -q "^iptable_mangle\s") ); then
  insmod /lib/modules/iptable_mangle.ko
fi
