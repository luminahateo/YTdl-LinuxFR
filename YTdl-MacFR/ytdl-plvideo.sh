#!/bin/sh
clear
echo "
=======================================================================
Quelle est l'adresse de votre playlist de video?
======================================================================="
read -r adresse

echo "=======================================================================
Dans quel format doivent être les fichiers?
[1] original
[2] recoder autres formats
"
read -r choix
if [ "$choix" == "1" ]; then
  echo "=======================================================================
Merci de patienter ...
======================================================================="
  cd ~/Vidéos/
  youtube-dl -o "%(playlist)s/ %(playlist_index)s-%(title)s.%(ext)s" $adresse
  echo "=======================================================================
PlayList téléchargée
======================================================================="
elif [ "$choix" == "2" ]; then
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
  cd ~/Vidéos/
  youtube-dl -o "%(playlist)s/ %(playlist_index)s-%(title)s.%(ext)s" --recode-video $format $adresse
  echo "=======================================================================
PlayList téléchargée
======================================================================="
else
  ./YTdl-Linux/ytdl-plvideo-sh
fi
