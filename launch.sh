#!/bin/bash
xmllint --noout --schema xsd/Etudiants.xsd xml/Etudiants.xml;
xmllint --noout --schema xsd/Enseignants.xsd xml/Enseignants.xml;
xmllint --noout --schema xsd/Matieres.xsd xml/Matieres.xml;

xsltproc -output  html/etudiantsCursus.html xsl/etudiantsCursus.xsl xml/Etudiants.xml;
xsltproc -output  html/etudiantsAnnee.html xsl/etudiantsAnnee.xsl xml/Etudiants.xml;
xsltproc -output  html/etudiantsGroupe.html xsl/etudiantsGroupe.xsl xml/Etudiants.xml;
xsltproc -output  html/matieresEnseignant.html xsl/matieresEnseignant.xsl xml/Enseignants.xml;
xsltproc -output  html/matieresEnseignants.html xsl/matieresEnseignants.xsl xml/Enseignants.xml;

xqilla query/listeEnseignantsParMatiere -o xml/resultQuery/listeEnseignantsParMatiere.xml;
xsltproc -output  resultQuery/listeEnseignantsParMatiere.html xsl/listeEnseignantsParMatiere.xsl xml/resultQuery/listeEnseignantsParMatiere.xml;


xqilla query/listeEtudiantsDeuxDettesSansRattrapage -o xml/resultQuery/listeEtudiantsDeuxDettesSansRattrapages.xml;
xsltproc -output  resultQuery/listeEtudiantsDeuxDettesSansRattrapage.html xsl/XSL-Query/listeEtudiantsDeuxDettesSansRattrapage.xsl xml/resultQuery/listeEtudiantsDeuxDettesSansRattrapages.xml;

xqilla query/enseignantsCursus -o xml/resultQuery/enseignantsCursus.xml;
xsltproc -output  resultQuery/enseignantsCursus.html xsl/XSL-Query/enseignantsCursus.xsl xml/resultQuery/enseignantsCursus.xml;

xqilla query/enseignantsParAnnee -o xml/resultQuery/enseignantsParAnnee.xml;
xsltproc -output  resultQuery/enseignantsParAnnee.html xsl/XSL-Query/enseignantsParAnnee.xsl xml/resultQuery/enseignantsParAnnee.xml;

xqilla query/enseignantsParGroupes -o xml/resultQuery/enseignantsParGroupes.xml;
xsltproc -output  resultQuery/enseignantsParGroupes.html xsl/XSL-Query/enseignantsParGroupes.xsl xml/resultQuery/enseignantsParGroupes.xml;

xqilla query/listeEnseignantsParMatieres -o xml/resultQuery/listeEnseignantsParMatieres.xml;
xsltproc -output  resultQuery/listeEnseignantsParMatieres.html xsl/XSL-Query/listeEnseignantsParMatieres.xsl xml/resultQuery/listeEnseignantsParMatieres.xml;

xqilla query/listeEtudiantsDette -o xml/resultQuery/listeEtudiantsDette.xml;
xsltproc -output  resultQuery/listeEtudiantsDette.html xsl/XSL-Query/listeEtudiantsDette.xsl xml/resultQuery/listeEtudiantsDette.xml;

xqilla query/listeEtudiantsDetteOuRattrapage -o xml/resultQuery/listeEtudiantsDetteOuRattrapage.xml;
xsltproc -output  resultQuery/listeEtudiantsDetteOuRattrapage.html xsl/XSL-Query/listeEtudiantsDetteOuRattrapage.xsl xml/resultQuery/listeEtudiantsDetteOuRattrapage.xml;

xqilla query/listeEtudiantsPlusDeuxDettes -o xml/resultQuery/listeEtudiantsPlusDeuxDettes.xml;
xsltproc -output  resultQuery/listeEtudiantsPlusDeuxDettes.html xsl/XSL-Query/listeEtudiantsPlusDeuxDettes.xsl xml/resultQuery/listeEtudiantsPlusDeuxDettes.xml;

xqilla query/listeEtudiantsRattrapageSansDette -o xml/resultQuery/listeEtudiantsRattrapageSansDette.xml;
xsltproc -output  resultQuery/listeEtudiantsRattrapageSansDette.html xsl/XSL-Query/listeEtudiantsRattrapageSansDette.xsl xml/resultQuery/listeEtudiantsRattrapageSansDette.xml;

xqilla query/listeEtudiantsUneDetteSansRattrapage -o xml/resultQuery/listeEtudiantsUneDetteSansRattrapage.xml;
xsltproc -output  resultQuery/listeEtudiantsUneDetteSansRattrapage.html xsl/XSL-Query/listeEtudiantsUneDetteSansRattrapage.xsl xml/resultQuery/listeEtudiantsUneDetteSansRattrapage.xml;

xqilla query/matiereParCursus -o xml/resultQuery/matiereParCursus.xml;
xsltproc -output  resultQuery/matiereParCursus.html xsl/XSL-Query/matiereParCursus.xsl xml/resultQuery/matiereParCursus.xml;
