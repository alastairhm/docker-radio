#!/bin/sh

icecast -d -c /icecast.xml
mpd
mpc ls | mpc add
mpc repeat on
mpc play
ympd
