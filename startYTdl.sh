#!/bin/sh

clear

echo "
=======================================================================
Avant propos ...

« UN GRAND POUVOIR IMPLIQUE DE GRANDES RESPONSABILITÉS. »
– BENJAMIN PARKER, SPIDER-MAN
=======================================================================
Respectez les droits d'auteurs
Respectez les outils open-source mis à votre disposition
Vous êtes et serez seul responsable de vos actes
=======================================================================

=======================================================================
Acceptez-vous? (Oui/Non)"
read -r choix
if [ "$choix" = "Oui" ]; then
  ./distrib.sh
elif [ "$choix" = "oui" ]; then
  ./distrib.sh
elif [ "$choix" = "o" ]; then
  ./distrib.sh
elif [ "$choix" = "O" ]; then
  ./distrib.sh
else
    echo "=======================================================================
Fin de programme
======================================================================="
fi
