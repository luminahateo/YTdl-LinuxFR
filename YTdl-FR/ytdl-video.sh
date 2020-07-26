#!/bin/sh

clear

echo "Quelle est l'adresse de votre video?"
read -r adresse

echo "Dans quel format doivent être le fichier?\n [1] original\n [2] recoder autre format\n"
read -r choix

if [ "$choix" = "1" ]; then
  echo "Merci de patienter ... "
  cd ~/Vidéos/
  youtube-dl -o "%(title)s.%(ext)s" $adresse
  echo "Fin de programme ..."
elif [ "$choix" = "2" ]; then
  echo "Dans quel format doivent être les fichiers?\n [1] mp4\n [2] flv\n [3] ogg\n [4] webm\n [5] mkv\n [6] avi\n"
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
    ytdl-video.sh
  fi

  echo "Merci de patienter ... "
  cd ~/Vidéos/
  youtube-dl -o "%(title)s.%(ext)s" --recode-video $format $adresse
  echo "Fin de programme ..."
else
  ytdl-video-sh
fi
