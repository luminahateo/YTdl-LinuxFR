#!/bin/sh
clear
echo "
=======================================================================
Quelle est l'adresse de votre musique?
======================================================================="
read -r adresse

echo "=======================================================================
Dans quel format doivent être les fichiers?
[1] best
[2] aac
[3] flac
[4] mp3
[5] m4a
[6] opus
[7] vorbis
[8] wav
"
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
  ./YTdl-MacFR/ytdl.musique.sh
fi

echo "======================================================================="
echo $format "choisi
Merci de patienter ...
=======================================================================
"
if [ ! -d ~/Musique/EnVrac/ ]; then
  mkdir ~/Musique/EnVrac/
fi
cd ~/Musique/EnVrac/
youtube-dl -o "%(title)s.%(ext)s" --extract-audio --audio-format $format $adresse

echo "=======================================================================
Musique télechargée.
======================================================================="
