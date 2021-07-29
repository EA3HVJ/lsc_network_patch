#!/usr/bin/env sh

# LSC NETWORK PATCH
# 
# Designed for LogoSoft Comfort V. 8.3
# Official Siemens Linux version is designed for SUSE.
# This patch fix network interface error in debian and derivates
# If add or remove interfaces, run this script again
#
# Tested in Debian 10
# 
# Author: Joan Planella Costa
# E-Mail: jplanellacosta@gmail.com
# Version: 27/07/2021

interfaces=$(ls /sys/class/net)

mkdir -p /etc/sysconfig/network
rm -f /etc/sysconfig/network/ifcfg-*

for arg in $interfaces ; do
  touch /etc/sysconfig/network/ifcfg-$arg
done
