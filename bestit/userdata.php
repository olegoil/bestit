<?php

require_once 'config.php';

if(isset($_GET['username']) && isset($_GET['password']) && isset($_GET['login']) && $conn) {
    $password = md5(sha1($_GET['password']));
    $sqlLogin = "SELECT * FROM users WHERE name=:username AND password=:password ORDER BY id DESC LIMIT 1";
    $smt = $conn->prepare($sqlLogin);
    $smt->bindParam(':username', $_GET['username']);
    $smt->bindParam(':password', $password);
    $smt->execute();
    $row = $smt->fetch(PDO::FETCH_OBJ);
    if($row) {
        echo json_encode($row);
    }
    else {
        echo 'Kein zutrefender Benutzer gefunden. Zugangsdaten beim Administrator anfordern.';
    }
}

?>