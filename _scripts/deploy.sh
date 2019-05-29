#!/bin/bash

if  [[ $TRAVIS_PULL_REQUEST = "false" ]]
then
    ncftp -u "$USERNAME" -p "$PASSWORD" "$HOST"<<EOF
    rm -rf html/stefangroth.de
    mkdir html/stefangroth.de
    quit
EOF

    cd _site || exit
    ncftpput -R -v -u "$USERNAME" -p "$PASSWORD" "$HOST" /html/stefangroth.de .
fi
