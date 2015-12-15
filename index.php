<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BRICARD MICHEAU MDSI</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/project.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/chart.js"></script>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="container">
      <div class="row fullHeight">
        <div id="menu" class="col-md-4">
          <div class="centered">
            <h1 style="color : #4CAF50;">SchoolIn</h1>
          </div>
          <?php
            function activeIfDisplayed($nom){
              if ($_GET[page] == $nom){
                echo "active";
              }
            }
          ?>
          <div class="list-group">
            <a href="index.php?page=html/etudiantsGroupe" class="list-group-item <?php activeIfDisplayed('html/etudiantsGroupe'); ?>">Etudiants par Groupe</a>
            <a class="list-group-item <?php activeIfDisplayed('html/etudiantsAnnee'); ?> " href="index.php?page=html/etudiantsAnnee">Etudiants par Annee</a>
            <a class="list-group-item <?php activeIfDisplayed('html/etudiantsCursus'); ?>" href="index.php?page=html/etudiantsCursus">Etudiants par Cursus</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/matiereParCursus'); ?>" href="index.php?page=resultQuery/matiereParCursus">Matiere par Cursus</a>
            <a class="list-group-item <?php activeIfDisplayed('html/matieresEnseignant'); ?>" href="index.php?page=html/matieresEnseignant">Matieres par Enseignants</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/enseignantsCursus'); ?>" href="index.php?page=resultQuery/enseignantsCursus">Enseignants par Cursus</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/enseignantsParAnnee'); ?>" href="index.php?page=resultQuery/enseignantsParAnnee">Enseignants par Annee</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/enseignantsParGroupes'); ?>" href="index.php?page=resultQuery/enseignantsParGroupes">Enseignants par Groupes</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEnseignantsParMatieres'); ?>" href="index.php?page=resultQuery/listeEnseignantsParMatieres">Enseignants par Matieres</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEtudiantsDette'); ?>" href="index.php?page=resultQuery/listeEtudiantsDette">Etudiants Endettés</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEtudiantsDetteOuRattrapage'); ?>" href="index.php?page=resultQuery/listeEtudiantsDetteOuRattrapage">Etudiants avec Dette ou Rattrapage</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEtudiantsDeuxDettesSansRattrapage'); ?>" href="index.php?page=resultQuery/listeEtudiantsDeuxDettesSansRattrapage">Etudiants avec Deux Dettes mais pas de Rattrapage</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEtudiantsPlusDeuxDettes'); ?>" href="index.php?page=resultQuery/listeEtudiantsPlusDeuxDettes">Etudiants avec Plus de Deux Dettes</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEtudiantsRattrapageSansDette'); ?>" href="index.php?page=resultQuery/listeEtudiantsRattrapageSansDette">Etudiants avec Rattrapage(s) mais pas de Dette</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/listeEtudiantsUneDetteSansRattrapage'); ?>" href="index.php?page=resultQuery/listeEtudiantsUneDetteSansRattrapage">Etudiants avec Une Dette Sans Rattrapage</a>
            <a class="list-group-item <?php activeIfDisplayed('resultQuery/nbDettesEtRattrapagesEtudiants'); ?>" href="index.php?page=resultQuery/nbDettesEtRattrapagesEtudiants">nbDettesEtRattrapagesEtudiants</a>
          </div>
        </div>
        <div id="show" class="col-md-8">
          <div class="container">
            <?php echo(shell_exec('./launch.sh')); ?>
            <?php $a=$_GET[page].'.html';
            if($_GET[page] != null){include $a;} ?>
          </div>
        </div>
      </div>
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.js"></script>
  </body>
</html>
