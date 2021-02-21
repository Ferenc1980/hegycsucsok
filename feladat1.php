<?php


require_once "config.php";

$strtable="";
$sql="select nev,magassag,edatum from csucs order by magassag desc";
$stmt=$db->query($sql);
$strtable="<thead><th>Név</th><th>Magasság</th><th>Első megmászás dátuma</th></thead><tbody>";
    while($row=$stmt->fetch()){
        extract($row);
        $strtable.="<tr><td>{$nev}</td><td>{$magassag}</td><td>{$edatum}</td></tr>";
    }
    $strtable.=" </tbody>";


   


?>
<h2>Első Megmászás</h2>

<table class="table table-striped">
   
    
         <?=$strtable?>
        
    
</table>    



