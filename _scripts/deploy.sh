#!/bin/bash
set -e # Exit with nonzero exit code if anything fails
# set -x # Enable debug mode. It will print every executed line into log. Do not forget to clear any public logs after debug build that prints your sensitive data like passwords!
if [ ! "$TRAVIS" ]; then
	echo "This script should work only on Travis CI server"
	# Remove this code if you want to debug this script
	# exit 0
fi
# Pull requests shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
    echo "Should not deploy pull request; just doing a build."
    build
    exit 0
fi

sshpass -p "$PASSWORD" ssh "$USERNAME"@"$HOST" rm -rf html/stefangroth.de
sshpass -p "$PASSWORD" ssh "$USERNAME"@"$HOST" mkdir html/stefangroth.de
# sshpass -p "$PASSWORD" scp -v -o User="$USERNAME" -o Port=22 -r _site/* "$HOST":/var/www/web23683373/html/stefangroth.de


