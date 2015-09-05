#!/usr/bin/env bash
if [ "$1" == "--ascii" ]
then
if [ -z "$2" ]
then
jp2a --colors http://thecatapi.com/api/images/get?format=src&type=jpg
else
jp2a --colors --width=$2 http://thecatapi.com/api/images/get?format=src&type=jpg
fi
else
contents=$(wget http://thecatapi.com/api/images/get?format=html -q -O -)
sed -n '/<img/s/.*src="\([^"]*\)".*/\1/p' <<< $contents
fi