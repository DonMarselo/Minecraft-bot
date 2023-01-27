<?php
    $host = "127.0.0.1";
    $user = "root";
    $password = "";
    $database = "minecraft_recipes";
    
    $connessione = new mysqli($host, $user, $password, $database);

    if ($connessione === false) {
        echo ("Errore di connessione");
    }
?>