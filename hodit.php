<?php
require_once 'config.php';



$strtable="";
$sql="select nev,magassag,edatum,orszag from csucs where mazon=27";
$stmt=$db->query($sql);
$strtable="<thead><th>Név</th><th>Magasság</th><th>első mászás</th><th>orszag</th></thead><tbody>";
    while($row=$stmt->fetch()){
        extract($row);
        $strtable.="<tr><td>{$nev}</td><td>{$magassag}</td><td>{$edatum}</td><td>{$orszag}</td></tr>";
    }
    $strtable.=" </tbody>";

    ?>
    <h3>Meghódítandó csúcsok,ahol magyar hegymászó nem járt:</h3>
         <table class="table table-striped">
   
    
         <?=$strtable?>
        
    
</table>    