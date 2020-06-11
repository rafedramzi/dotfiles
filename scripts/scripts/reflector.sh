#!/bin/sh
reflector --country Indonesia --country China --country Singapore --country Japan --country Australia --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
