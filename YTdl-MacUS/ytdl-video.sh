#!/bin/sh
clear
echo "
=======================================================================
Quelle est l'adresse de votre video?
======================================================================="
read -r adresse

echo "
=======================================================================
Dans quel format doivent être le fichier?
[1] original
[2] recoder autre format
"
read -r choix

if [ "$choix" = "1" ]; then
  echo "=======================================================================
Merci de patienter ...
======================================================================="
  if [ ! -d ~/Movies/EnVrac/ ]; then
    mkdir ~/Movies/EnVrac/
  fi
  cd ~/Movies/EnVrac/
  youtube-dl -o "%(title)s.%(ext)s" $adresse
  echo "=======================================================================
Original téléchargé
======================================================================="
elif [ "$choix" = "2" ]; then
  echo "=======================================================================
Dans quel format doivent être les fichiers?
[1] mp4
[2] flv
[3] ogg
[4] webm
[5] mkv
[6] avi
"
  read -r choixFormat

  if [ "$choixFormat" = "1" ]; then
    format="mp4"
  elif [ "$choixFormat" = "2" ]; then
    format="flv"
  elif [ "$choixFormat" = "3" ]; then
    format="ogg"
  elif [ "$choixFormat" = "4" ]; then
    format="webm"
  elif [ "$choixFormat" = "5" ]; then
    format="mkv"
  elif [ "$choixFormat" = "6" ]; then
    format="avi"
  else
    ./YTdl-MacFR/ytdl-video.sh
  fi

  echo "======================================================================="
  echo $format "choisi
Merci de patienter ...
=======================================================================
"
  if [ ! -d ~/Movies/EnVrac/ ]; then
    mkdir ~/Movies/EnVrac/
  fi
  cd ~/Movies/EnVrac/
  youtube-dl -o "%(title)s.%(ext)s" --recode-video $format $adresse
  echo "=======================================================================
Vidéo téléchargée
======================================================================="
else
  ytdl-video-sh
fi
