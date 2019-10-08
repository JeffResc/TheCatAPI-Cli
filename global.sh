#!/usr/bin/env bash

set -euo pipefail

IFS=':' read -r -a paths <<<"$PATH"
if [[ " ${paths[*]} " == *" /usr/bin "* ]]; then
	wget -O /usr/bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh
	chmod +x /usr/bin/catpic
	echo "Successfully installed catpic to /usr/bin"
elif [[ " ${paths[*]} " == *" /bin "* ]]; then
	wget -O /bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh
	chmod +x /bin/catpic
	echo "Successfully installed catpic to /bin"
elif [[ " ${paths[*]} " == *" /usr/sbin "* ]]; then
	wget -O /usr/sbin/catpic -q "https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh"
	chmod +x /usr/sbin/catpic
	echo "Successfully installed catpic to /usr/sbin"
else
	wget -O /usr/bin/catpic -q "https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/catpic.sh"
	chmod +x /usr/bin/catpic
	export PATH=$PATH:/usr/bin
	echo "Successfully installed catpic to /usr/bin and added /usr/bin to the PATH variable"
fi
