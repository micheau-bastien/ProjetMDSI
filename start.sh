#!/bin/bash
xmllint --noout --schema xsd/Etudiants.xsd xml/Etudiants.xml
xmllint --noout --schema xsd/Enseignants.xsd xml/Enseignants.xml
xmllint --noout --schema xsd/Matieres.xsd xml/Matieres.xml

xqilla query/listeEtudiantsDeuxDettesSansRattrapage -o xml/resultQuery/listeEtudiantsDeuxDettesSansRattrapages.xml;
xsltproc -output  site/resultQuery/listeEtudiantsDeuxDettesSansRattrapage.html xsl/XSL-Query/listeEtudiantsDeuxDettesSansRattrapage.xsl xml/resultQuery/listeEtudiantsDeuxDettesSansRattrapages.xml;

xqilla query/enseignantsCursus -o xml/resultQuery/enseignantsCursus.xml;
xsltproc -output  site/resultQuery/enseignantsCursus.html xsl/XSL-Query/enseignantsCursus.xsl xml/resultQuery/enseignantsCursus.xml;

xqilla query/enseignantsParAnnee -o xml/resultQuery/enseignantsParAnnee.xml;
xsltproc -output  site/resultQuery/enseignantsParAnnee.html xsl/XSL-Query/enseignantsParAnnee.xsl xml/resultQuery/enseignantsParAnnee.xml;

xqilla query/enseignantsParGroupes -o xml/resultQuery/enseignantsParGroupes.xml;
xsltproc -output  site/resultQuery/enseignantsParGroupes.html xsl/XSL-Query/enseignantsParGroupes.xsl xml/resultQuery/enseignantsParGroupes.xml;

xqilla query/listeEnseignantsParMatieres -o xml/resultQuery/listeEnseignantsParMatieres.xml;
xsltproc -output  site/resultQuery/listeEnseignantsParMatieres.html xsl/XSL-Query/listeEnseignantsParMatieres.xsl xml/resultQuery/listeEnseignantsParMatieres.xml;

xqilla query/listeEtudiantsDette -o xml/resultQuery/listeEtudiantsDette.xml;
xsltproc -output  site/resultQuery/listeEtudiantsDette.html xsl/XSL-Query/listeEtudiantsDette.xsl xml/resultQuery/listeEtudiantsDette.xml;

xqilla query/listeEtudiantsDetteOuRattrapage -o xml/resultQuery/listeEtudiantsDetteOuRattrapage.xml;
xsltproc -output  site/resultQuery/listeEtudiantsDetteOuRattrapage.html xsl/XSL-Query/listeEtudiantsDetteOuRattrapage.xsl xml/resultQuery/listeEtudiantsDetteOuRattrapage.xml;

xqilla query/listeEtudiantsPlusDeuxDettes -o xml/resultQuery/listeEtudiantsPlusDeuxDettes.xml;
xsltproc -output  site/resultQuery/listeEtudiantsPlusDeuxDettes.html xsl/XSL-Query/listeEtudiantsPlusDeuxDettes.xsl xml/resultQuery/listeEtudiantsPlusDeuxDettes.xml;

xqilla query/listeEtudiantsRattrapageSansDette -o xml/resultQuery/listeEtudiantsRattrapageSansDette.xml;
xsltproc -output  site/resultQuery/listeEtudiantsRattrapageSansDette.html xsl/XSL-Query/listeEtudiantsRattrapageSansDette.xsl xml/resultQuery/listeEtudiantsRattrapageSansDette.xml;

xqilla query/listeEtudiantsUneDetteSansRattrapage -o xml/resultQuery/listeEtudiantsUneDetteSansRattrapage.xml;
xsltproc -output  site/resultQuery/listeEtudiantsUneDetteSansRattrapage.html xsl/XSL-Query/listeEtudiantsUneDetteSansRattrapage.xsl xml/resultQuery/listeEtudiantsUneDetteSansRattrapage.xml;

xqilla query/matiereParCursus -o xml/resultQuery/matiereParCursus.xml;
xsltproc -output  site/resultQuery/matiereParCursus.html xsl/XSL-Query/matiereParCursus.xsl xml/resultQuery/matiereParCursus.xml;

open http://localhost:8888/indexbis.php
