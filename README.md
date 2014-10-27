                                          _
                          _o)   __ _  ___/ /__  __ _  (o_
    ###################   /\\  /  ' \/ _  / _ `/  ' \ //\   #####################
                          \_v /_/_/_/\_,_/\_, /_/_/_/ v_/
                                         /___/

send_sms
========

Si vous &ecirc;tes un abonn&eacute; Free mobile et si vous souhaitez vous envoyer des notifications par SMS ce script est fait pour vous.

Obtenir l’identifiant et le mot de passe
----------------------------------------

1. Rendez-vous dans votre espace abonn&eacute; : [https://mobile.free.fr/moncompte/](https://mobile.free.fr/moncompte/).
2. Allez dans *G&eacute;rer mon compte > Mes options*
3. Activez l’option *Notifications par SMS*

Configuration du script
-----------------------

Dans le script, indiquez votre identifiant (identifiant de connexion &agrave; l’espace Free mobile) et votre cl&eacute; d’authentification (indiqu&eacute;e apr&egrave;s l’activation de l’option).

Utilisation
-----------

Depuis un terminal pour envoyer le contenu d’un fichier _toto_, par exemple les param&egrave;tres de sortie d’un code faites 
    sh send_sms.sh -f foo

Pour indiquer le message directement dans la ligne de commande 
    sh send_sms.sh message_sans_espace
    sh send_sms.sh "message avec espace"

Remarque
--------

1. Il n’est (&agrave; ma connaissance) pas possible d’envoyer les SMS avec des sauts de ligne, c’est pourquoi ils sont remplac&eacute;s par des espaces.
2. Attention la longueur d’un message est limit&eacute;e. Pensez &agrave; n’&eacute;crire que le n&eacute;cessaire dans les fichiers &agrave; envoyer.
