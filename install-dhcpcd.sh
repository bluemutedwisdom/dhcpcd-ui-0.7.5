#!/bin/sh
#first, sudo apt-get install dhcpcd dhcpcd-gtk 

# install updated dhcpcd
sudo rm /media/root/sbin/dhcpcd
sudo cp -p /sbin/dhcpcd /media/root/sbin/
sudo mkdir /media/root/libexec
sudo cp -p /libexec/dhcpcd-run-hooks /media/root/libexec/
sudo cp -pr /libexec/dhcpcd-hooks/ /media/root/libexec/
sudo cp -p /usr/share/man/man5/dhcpcd.conf.5 /media/root/usr/share/man/man5/
sudo cp -p /usr/share/man/man8/dhcpcd.8 /media/root/usr/share/man/man8/
sudo cp -p /usr/share/man/man8/dhcpcd-run-hooks.8 /media/root/usr/share/man/man8/
sudo cp -p /etc/dhcpcd.conf /media/root/etc/

# configure for dhcpcd
sudo cp -p /etc/network/interfaces /media/root/etc/network/

# install updated dhcpcd-gtk
sudo cp -p /usr/local/bin/dhcpcd-gtk /media/root/usr/local/bin/
sudo cp -p /usr/share/man/man8/dhcpcd-gtk.8 /media/root/usr/share/man/man8/
sudo cp -pr /usr/local/share/dhcpcd/ /media/root/usr/local/share/
sudo cp -pr /usr/local/share/icons/ /media/root/usr/local/share/

