// MADE BY Laure BRICARD & Bastien MICHEAU

Configuration minimale : Server PHP, xqilla, xsltproc, xmllint sur le serveur.

Le projet doit être hebergé sur un simple server php ayant xqilla, xsltproc, xmllint installé. De cette façon chaque acces au site rafraichira les requestes et les affichages.
Afin d'arriver à ce point nous lançons grâce à la commande php "system" qui lance un script qui valide tous les xsd/xml, compile les xQuery et transfrome les fichiers xml résultants en fichiers html prets à être affichés.

Lancer sur OSX El Capitan :
  - Aller dans le dossier racine du projet
  - Lancer la commande $> php -S localhost:8990
  - Lancer un navigateur internet et aller à l'adresse : http://localhost:8990
