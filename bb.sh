#!/usr/bin/env bash
BASEDIR=$(dirname "$0")
sed -e "s|#.*||" -e "/^\$/d" $BASEDIR/pkgs | tr '\n' ' ' | xargs sudo bb-wrapper --needed -S
