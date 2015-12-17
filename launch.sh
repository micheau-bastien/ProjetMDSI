#!/bin/bash
xmllint --noout --schema xsd/Etudiants.xsd xml/Etudiants.xml;
xmllint --noout --schema xsd/Enseignants.xsd xml/Enseignants.xml;
xmllint --noout --schema xsd/Matieres.xsd xml/Matieres.xml;

function compile {
  case "$1" in
  etudiantsCursus)
      xsltproc -output  html/etudiantsCursus.html xsl/etudiantsCursus.xsl xml/Etudiants.xml;
      ;;
  etudiantsGroupe)
      xsltproc -output  html/etudiantsGroupe.html xsl/etudiantsGroupe.xsl xml/Etudiants.xml;
      ;;
  etudiantsAnnee)
      xsltproc -output  html/etudiantsAnnee.html xsl/etudiantsAnnee.xsl xml/Etudiants.xml;
      ;;
  matieresEnseignant)
      xsltproc -output  html/matieresEnseignant.html xsl/matieresEnseignant.xsl xml/Enseignants.xml;
     ;;
  matieresEnseignants)
      xsltproc -output  html/matieresEnseignants.html xsl/matieresEnseignants.xsl xml/Enseignants.xml;
      ;;
  *)
    xqilla query/$1 -o xml/$1.xml;
    xsltproc -output  html/$1.html xsl/$1.xsl xml/$1.xml
     ;;
  esac
  xqilla query/$1 -o xml/$1.xml;
  xsltproc -output  html/$1.html xsl/$1.xsl xml/$1.xml;
}
compile $1;
