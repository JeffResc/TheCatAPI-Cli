#!/usr/bin/env bash

set -euo pipefail

IFS=':' read -r -a PATHS <<<"$PATH"
if [[ " ${PATHS[*]} " == *" /usr/bin "* ]]; then
	wget -O /usr/bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh
	chmod +x /usr/bin/catpic
	echo "Successfully installed catpic to /usr/bin"
elif [[ " ${PATHS[*]} " == *" /bin "* ]]; then
	wget -O /bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh
	chmod +x /bin/catpic
	echo "Successfully installed catpic to /bin"
elif [[ " ${PATHS[*]} " == *" /usr/sbin "* ]]; then
	wget -O /usr/sbin/catpic -q "https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh"
	chmod +x /usr/sbin/catpic
	echo "Successfully installed catpic to /usr/sbin"
else
	wget -O /usr/bin/catpic -q "https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh"
	chmod +x /usr/bin/catpic
	export PATH=$PATH:/usr/bin
	echo "Successfully installed catpic to /usr/bin and added /usr/bin to the PATH variable"
fi
