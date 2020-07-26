#!/bin/sh

clear

echo "Quelle est l'adresse de votre playliste?"
read -r adresse

echo "Dans quel format doivent être les fichiers?\n [1] best\n [2] aac\n [3] flac\n [4] mp3\n [5] m4a\n [6] opus\n [7] vorbis\n [8] wav\n"
read -r choixFormat

if [ "$choixFormat" = "1" ]; then
  format="best"
elif [ "$choixFormat" = "2" ]; then
  format="aac"
elif [ "$choixFormat" = "3" ]; then
  format="flac"
elif [ "$choixFormat" = "4" ]; then
  format="mp3"
elif [ "$choixFormat" = "5" ]; then
  format="m4a"
elif [ "$choixFormat" = "6" ]; then
  format="opus"
elif [ "$choixFormat" = "7" ]; then
  format="vorbis"
elif [ "$choixFormat" = "8" ]; then
  format="wav"
else
  ytdl.plmusique.sh
fi

echo $format

echo "Merci de patienter ... "
cd ~/Musique/
youtube-dl -o "%(playlist)s/ %(playlist_index)s-%(title)s.%(ext)s" --extract-audio --audio-format $format $adresse
echo "Fin de programme ..."
