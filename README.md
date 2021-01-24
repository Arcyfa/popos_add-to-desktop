# Pop!_OS add-to-desktop
Will create a Add to Desktop optiion in all Starter files (.desktop). from there its easy to add Starters to the desktop by right clicking.

## Installation 
Copy both files to the correct location and run /usr/bin/add-to-desktop.sh

```lang-sh
  wget https://github.com/Arcyfa/popos_add-to-desktop/archive/main.zip -O add-to-desktop.zip
  unzip add-to-desktop.zip -d .
  sudo cp popos_add-to-desktop-main/etc/apt/apt.conf.d/80add-to-desktop /etc/apt/apt.conf.d/80add-to-desktop
  sudo cp popos_add-to-desktop-main/usr/bin/add-to-desktop.sh /usr/bin/add-to-desktop.sh
  rm -R popos_add-to-desktop-main
  rm add-to-desktop.zip
```
