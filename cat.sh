#!/usr/bin/env bash
if [ "$1" == "--ascii" ]
then
jp2a http://thecatapi.com/api/images/get?format=src&type=jpg
else
contents=$(wget http://thecatapi.com/api/images/get?format=html -q -O -)
sed -n '/<img/s/.*src="\([^"]*\)".*/\1/p' <<< $contents
fi