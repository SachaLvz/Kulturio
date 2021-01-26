<?php

 $host = 'localhost';
 $dbname = 'kulturio';
 $username = 'root';
 $password = '';
    
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);

    if(!$conn)
{
	echo json_encode("Connection Failed");
}

?>
