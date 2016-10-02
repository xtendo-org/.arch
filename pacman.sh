#!/usr/bin/env bash
BASEDIR=$(dirname "$0")
sed -e "s|#.*||" -e "/^\$/d" $BASEDIR/pkgs | sudo pacman --needed -S -
