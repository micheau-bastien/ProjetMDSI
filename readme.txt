// MADE BY Laure BRICARD & Bastien MICHEAU

/!\ !!!!!! Depuis la présentation nous avons ajouté le fait que la requete xquery n'est lancée QUE lorsque l'on lance la page ! De cette façon nous évitons d'avoir à recharger toutes les query du SDBG à chaque chargement de la page, amenant à des gains de performance. !!!!!! /!\
les requêtes sont lancées une par une au chargement de la page souhaitée seulement. Le script tel qu'il a été modifié prend en argument le nom de la requête à exécuter et n'exécute que celle ci. Il faut donc passer un argument au script à l'exécution.

Configuration minimale : Server PHP, xqilla, xsltproc, xmllint sur le serveur.

Le projet doit être hebergé sur un simple server php ayant xqilla, xsltproc, xmllint installé. De cette façon chaque acces au site rafraichira les requestes et les affichages.
Afin d'arriver à ce point nous lançons grâce à la commande php "system" qui lance un script qui valide tous les xsd/xml, compile les xQuery et transfrome les fichiers xml résultants en fichiers html prets à être affichés.

Lancer sur OSX El Capitan (avec xqilla, xsltproc et xmllint installés sur la machine):
  - Aller dans le dossier racine du projet
  - Lancer la commande $> php -S localhost:8990
  - Lancer un navigateur internet et aller à l'adresse : http://localhost:8990
