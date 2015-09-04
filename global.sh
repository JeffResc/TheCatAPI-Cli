#!/bin/bash
IFS=':' read -a paths <<< "$PATH"
if [[ " ${paths[*]} " == *" /usr/bin "* ]]
then
wget -O /usr/bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/cat.sh
chmod +x /usr/bin/catpic
echo "Successfully installed catpic to /usr/bin"
echo "To uninstall, run \"rm /usr/bin/catpic\""
elif [[ " ${paths[*]} " == *" /bin "* ]]
then
wget -O /bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/cat.sh
chmod +x /bin/catpic
echo "Successfully installed catpic to /bin"
echo "To uninstall, run \"rm /bin/catpic\""
elif [[ " ${paths[*]} " == *" /usr/sbin "* ]]
then
wget -O /usr/sbin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/cat.sh
chmod +x /usr/sbin/catpic
echo "Successfully installed catpic to /usr/sbin"
echo "To uninstall, run \"rm /usr/sbin/catpic\""
else
wget -O /usr/bin/catpic -q https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/cat.sh
chmod +x /usr/bin/catpic
export PATH=$PATH:/usr/bin
echo "Successfully installed catpic to /usr/bin and added /usr/bin to the PATH variable"
fi
