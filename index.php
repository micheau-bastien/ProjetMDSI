<!DOCTYPE html>
<?php ini_set('safe_mode', '1'); ?>

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

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Accueil</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="index.php?page=html/etudiantsGroupe">EtudiantsGroupe</a></li>
            <li class="active"><a href="index.php?page=html/etudiantsAnnee">EtudiantsAnnee</a></li>
            <li class="active"><a href="index.php?page=html/etudiantsCursus">EtudiantsCursus</a></li>
            <li class="active"><a href="index.php?page=html/matiereEnseignants">EnseignantsMDSI</a></li>
            <li class="active"><a href="index.php?page=html/matieresEnseignant">MatieresEnseignants</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

<?php echo(shell_exec('./launch.sh')); ?>
	<div id="hello">
	    <div class="container">
	    	<div class="row">
	    		<div class="col-lg-8 col-lg-offset-2 centered">
	    			<h1>Projet MDSI</h1>
	    			<h2>BRICARD Laure MICHEAU Bastien</h2>
	    		</div><!-- /col-lg-8 -->
	    	</div><!-- /row -->
        <div class="row">
          Résultats des query :
          <ul>
            <li><a href="index.php?page=resultQuery/enseignantsCursus">enseignantsCursus</a></li>
            <li><a href="index.php?page=resultQuery/enseignantsParAnnee">enseignantsParAnnee</a></li>
            <li><a href="index.php?page=resultQuery/enseignantsParGroupes">enseignantsParGroupes</a></li>
            <li><a href="index.php?page=resultQuery/listeEnseignantsParMatieres">listeEnseignantsParMatieres</a></li>
            <li><a href="index.php?page=resultQuery/listeEtudiantsDette">listeEtudiantsDette</a></li>
            <li><a href="index.php?page=resultQuery/listeEtudiantsDetteOuRattrapage">listeEtudiantsDetteOuRattrapage</a></li>
            <li><a href="index.php?page=resultQuery/listeEtudiantsDeuxDettesSansRattrapage">listeEtudiantsDeuxDettesSansRattrapage</a></li>
            <li><a href="index.php?page=resultQuery/listeEtudiantsPlusDeuxDettes">listeEtudiantsPlusDeuxDettes</a></li>
            <li><a href="index.php?page=resultQuery/listeEtudiantsRattrapageSansDette">listeEtudiantsRattrapageSansDette</a></li>
            <li><a href="index.php?page=resultQuery/listeEtudiantsUneDetteSansRattrapage">listeEtudiantsUneDetteSansRattrapage</a></li>
            <li><a href="index.php?page=resultQuery/matiereParCursus">matiereParCursus</a></li>
          </ul>
        </div>
	    </div> <!-- /container -->
	</div><!-- /hello -->

  <div id="etudGroupe"><br><br><br>
    <div class="container">
      <?php $a=$_GET[page].'.html'; include $a; ?><br><br><br>
    </div>
  </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.js"></script>
  </body>
</html>
