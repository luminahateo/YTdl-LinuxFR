#!/bin/sh

clear

if [ ! -d "/usr/local/Cellar/youtube-dl" ]; then
  brew install youtube-dl
fi

echo "lancement de Youtube-dl"
choix=9
echo "que voulez-vous télécharger?\n [1] Vidéo\n [2] Musique\n [3] Playliste Vidéo\n [4] PlayListe Musique\n [q] pour quitter ... "
read -r choix

if [ "$choix" = "1" ]; then
    ./ytdl-video.sh
elif [ "$choix" = "2" ]; then
    ./ytdl-musique.sh
elif [ "$choix" = "3" ]; then
    ./ytdl-plvideo.sh
elif [ "$choix" = "4" ]; then
    ./ytdl-plmusique.sh
elif [ "$choix" = "q" ]; then
    echo "Fin de programme ..."
else
    ./ytdl.sh
fi
