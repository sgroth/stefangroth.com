#!/bin/bash

sshpass -p "$SSHPASSWORD" ssh "$USERNAME"@"$HOST" rm -rf html/stefangroth.de

sshpass -p "$SSHPASSWORD" ssh "$USERNAME"@"$HOST" mkdir html/stefangroth.de

sshpass -p "$SSHPASSWORD" scp -v -o User="$USERNAME" -o Port=22 -r _site/* "$HOST":/var/www/web23683373/html/stefangroth.de
