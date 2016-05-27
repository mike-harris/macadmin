#!/bin/bash

NBSERV="XXX.XXX.XXX.XXX"
NBI="AutoNR.nbi"
DMG="NetInstall.dmg"

/usr/sbin/bless --netboot --booter "tftp://$NBSERV/$NBI/i386/booter" --kernelcache "tftp://$NBSERV/$NBI/i386/x86_64/kernelcache" --options "rp=http://$NBSERV/nb/$NBI/$DMG"
