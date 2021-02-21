<?php
require_once 'config.php';

$nev=$ferfi=$msg="";
//print_r($_POST);
if(isset($_POST['mentes']) && $_POST['nev']!=null && $_POST['ferfi']!=null){
    $nev=$_POST['nev'];
    $ferfi=$_POST['ferfi'];
    $sql="insert into maszo values (null,'{$nev}',{$ferfi})";
    $stmt=$db->exec($sql);
    if($stmt){
           $msg="sikeres adatbeiras";  
           //header("Location: maszok.php?msg={$msg}");
    }
    else
        $msg="hiba!! nem sikerult az adat beirasa az adatbazisba";
    
}
$strtable="";
$sql="select *from maszo order by nev asc";
$stmt=$db->query($sql);
$strtable="<thead><th>az</th><th>Név</th><th>Férfi</th></thead><tbody>";
    while($row=$stmt->fetch()){
        extract($row);
        $strtable.="<tr><td>{$az}</td><td>{$nev}</td><td>{$ferfi}</td></tr>";
    }
    $strtable.=" </tbody>";


?>

    <div class="container border">
        <h3 class="text-center">Új mászó adatainak bevezetése</h3>
        <div class="row justify-content-center p-3">
        <div class="col-md-4" id="hibak" ><?=$msg?></div>		
			
		</div>
        <div class="row m-1 p-2">   
            <div class="col-5">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="">A mászó neve:</label>
                        <input type="text" name="nev" class="form-control" value="<?=$nev?>">
                    </div>
                    <div class="form-group">
                        <label for="">Férfi(1)/nő(0):</label>
                        <input type="number" name="ferfi" class="form-control" value="<?=$ferfi?>">
                    </div>
                    <input type="submit" name="mentes" value="mentés" >
                </form>
              </div>
         </div>
         <h3>Mászók nevei:</h3>
         <table class="table table-striped">
   
    
         <?=$strtable?>
        
    
</table>    
    </div>
                