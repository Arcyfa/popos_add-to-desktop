#!/bin/sh
if [ -z ${1+x} ]
then
	for f in /usr/share/applications/*
	do 
		if grep -q "Actions=" $f
		then
			if ! grep -q "Add-To-Desktop" $f
			then
				sudo sed -i "s/Actions=/Actions=Add-To-Desktop;/g" $f
				sudo echo "" | sudo tee -a $f > /dev/null
				sudo echo "[Desktop Action Add-To-Desktop]" | sudo tee -a $f > /dev/null
				sudo echo "Name=Add to Desktop" | sudo tee -a $f > /dev/null
				sudo echo "Exec=/usr/bin/add-to-desktop.sh \"$f\"" | sudo tee -a $f > /dev/null
			fi
		else
			sudo echo "Actions=Add-To-Desktop;" | sudo tee -a $f > /dev/null
			sudo echo "" | sudo tee -a $f > /dev/null
			sudo echo "[Desktop Action Add-To-Desktop]" | sudo tee -a $f > /dev/null
			sudo echo "Name=Add to Desktop" | sudo tee -a $f > /dev/null
			sudo echo "Exec=/usr/bin/add-to-desktop.sh \"$f\"" | sudo tee -a $f > /dev/null
		fi
	done

else
	file=$(basename ${1})
	cp "${1}" "/home/$USER/Desktop/"
	chmod 755 "/home/$USER/Desktop/$file"
fi
