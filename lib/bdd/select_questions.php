<?php
include('connexion_bdd.php')

$sql = 'SELECT * FROM options'
$request=$conn->prepare($sql);
$request=$conn->execute()

?>