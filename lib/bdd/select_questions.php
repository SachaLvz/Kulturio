<?php
include('connexion_bdd.php')

$sql = 'SELECT * from questions';
$resul = $conn->query($sql);
$tabQuestRepons = $resul->fetchALL(PDO::FETCH_ASSOC);

?>