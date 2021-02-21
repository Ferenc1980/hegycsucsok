<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <title>Hegycsucsok</title>
</head>
<body>
    <div class="container border">
        <div class="row">
            <div class="col border text-center bg-success text-white m-1 p-2"><a href="index.php">Főoldal</a> </div>
            <div class="col text-center bg-success text-white m-1 p-2"><a href="index.php?p=feladat1.php">Hegycsucsok</a> </div>
            <div class="col text-center bg-success text-white m-1 p-2"><a href="index.php?p=maszok.php">Újmászók</a> </div>
            <div class="col text-center bg-success text-white m-1 p-2"><a href="index.php?p=hodit.php">Mehódítandó csúcsok</a> </div>
        </div>
    
    
    </div>
    <div class="tarolo">
      <?php
        if(isset($_GET["p"])){
          include $_GET["p"];
        }
        else include("fooldal.php");
      ?>  

  </div>
    
</body>
</html>