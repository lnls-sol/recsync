#!/bin/bash
SERVER_PATH=/etc/recsync/server

cd ${SERVER_PATH}

rm main.db
sqlite3 main.db -init recceiver.sqlite3 .exit
PYTHONPATH=$PWD twistd -r poll -n recceiver -f main.conf