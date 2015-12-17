<!DOCTYPE html>

<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />

    <title>BRICARD MICHEAU MDSI</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <style>
      h1{
        padding-bottom: 50px;
      }
      #menu,#show{
        margin-bottom: 50px;
      }
    </style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="container">
      <div class="row">
        <div id="menu" class="col-md-4">
          <div class="centered">
            <h1 style="font-size : 4.5em; color : #4CAF50;padding-bottom:0px;">Sch<sub><span class="glyphicon glyphicon-search" aria-hidden="true"></span></sub>olIn</h1>
          </div>
          <?php
            function activeIfDisplayed($nom){
              if ($_GET[page] == $nom){
                echo "active";
              }
            }
          ?>
          <div class="list-group">
            <a href="index.php?page=etudiantsGroupe" class="list-group-item <?php activeIfDisplayed('etudiantsGroupe'); ?>">Etudiants par Groupe</a>
            <a class="list-group-item <?php activeIfDisplayed('etudiantsAnnee'); ?> " href="index.php?page=etudiantsAnnee">Etudiants par Annee</a>
            <a class="list-group-item <?php activeIfDisplayed('etudiantsCursus'); ?>" href="index.php?page=etudiantsCursus">Etudiants par Cursus</a>
            <a class="list-group-item <?php activeIfDisplayed('matiereParCursus'); ?>" href="index.php?page=matiereParCursus">Matiere par Cursus</a>
            <a class="list-group-item <?php activeIfDisplayed('matieresEnseignant'); ?>" href="index.php?page=matieresEnseignant">Matieres par Enseignants</a>
            <a class="list-group-item <?php activeIfDisplayed('enseignantsCursus'); ?>" href="index.php?page=enseignantsCursus">Enseignants par Cursus</a>
            <a class="list-group-item <?php activeIfDisplayed('enseignantsParAnnee'); ?>" href="index.php?page=enseignantsParAnnee">Enseignants par Annee</a>
            <a class="list-group-item <?php activeIfDisplayed('enseignantsParGroupes'); ?>" href="index.php?page=enseignantsParGroupes">Enseignants par Groupes</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEnseignantsParMatieres'); ?>" href="index.php?page=listeEnseignantsParMatieres">Enseignants par Matieres</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEtudiantsDette'); ?>" href="index.php?page=listeEtudiantsDette">Etudiants Endettés</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEtudiantsDetteOuRattrapage'); ?>" href="index.php?page=listeEtudiantsDetteOuRattrapage">Etudiants avec Dette ou Rattrapage</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEtudiantsDeuxDettesSansRattrapage'); ?>" href="index.php?page=listeEtudiantsDeuxDettesSansRattrapage">Etudiants avec Deux Dettes mais pas de Rattrapage</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEtudiantsPlusDeuxDettes'); ?>" href="index.php?page=listeEtudiantsPlusDeuxDettes">Etudiants avec Plus de Deux Dettes</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEtudiantsRattrapageSansDette'); ?>" href="index.php?page=listeEtudiantsRattrapageSansDette">Etudiants avec Rattrapage(s) mais pas de Dette</a>
            <a class="list-group-item <?php activeIfDisplayed('listeEtudiantsUneDetteSansRattrapage'); ?>" href="index.php?page=listeEtudiantsUneDetteSansRattrapage">Etudiants avec Une Dette Sans Rattrapage</a>
            <a class="list-group-item <?php activeIfDisplayed('nbDettesEtRattrapagesEtudiants'); ?>" href="index.php?page=nbDettesEtRattrapagesEtudiants">Nombre de Dettes et de Rattrapages par etudiants</a>
          </div>
        </div>
        <div id="show" class="col-md-8">
          <div class="container-fluid">
            <?php $a = './launch.sh '.$_GET[page];
              system($a);
             ?>
            <?php $a='html/'.$_GET[page].'.html';
            if($_GET[page] != null){include $a;} ?>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="container-fluid" style="margin-bottom : 20px;">
          <div class="centered">
            Made with  <span class="glyphicon glyphicon-heart-empty" aria-hidden="true" style="color:#d9534f"></span>  by Bastien & Laure.
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
