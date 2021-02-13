#!/bin/sh
clear
echo "
=======================================================================
Quel est votre système d'exploitation? (Deb/Fed/Mac)
=======================================================================
Deb = Debian, Ubuntu, Pop!_OS, Mint ...
Fed = Fedora
Mac = MacOSX, macOS
"
read -r choixOS
if [ "$choixOS" = "Deb" ]; then
    ./popOs.sh
elif [ "$choixOS" = "Fed" ]; then
    ./fedora.sh
elif [ "$choix" = "Mac" ]; then
    ./mac.sh
else
  echo "=======================================================================
Fin de programme
======================================================================="
fi
