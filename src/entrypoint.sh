#!/bin/sh
# TOS wrapper: LinuxServer s6 starts as root and su-execs to abc. Run the
# unmodified Mylar3 app directly as uid 1000 with a writable data dir.
set -u
set -e
mkdir -p /config/mylar
export HOME=/config
exec python3 /app/mylar3/Mylar.py --nolaunch --datadir /config/mylar
