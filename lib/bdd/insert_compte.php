<?php 

include('connexion_bdd.php');


if(isset($_POST['pseudo'])&&isset($_POST['email'])&&isset($_POST['mdp'])){  
    $mdpHash = password_hash($_POST['mdp'], PASSWORD_DEFAULT);
    $today = date("Y-m-d H:i:s");
    $role = "joueur";
    $avatar = "dolphin.jpg";

$sql = 'INSERT INTO user (`pseudo`, `email`, `mdp`, `role`, `date_creation`, `avatar`) VALUES (:pseudo,:email,:mdp,"'.$role.'","'.$today.'",:avatar);';
 
$stm=$conn->prepare($sql);
    
$valeur=array(':pseudo'=>$_POST['pseudo'],':email'=>$_POST['email'],':mdp'=>$mdpHash,':avatar'=>$avatar) ;
    
    $nbligne = $stm->execute($valeur);
    
    
if($nbligne == 1) {
       
    echo '<script>document.location.href = "../../compte/connexion_compte.php";</script>' ;
  
}else { echo '<script> alert("Erreur");  document.location.href= "../../index.php";</script>' ;}
   
}


?>
