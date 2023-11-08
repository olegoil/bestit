<?php

require_once 'config.php';

if($conn) {
    $sqlShop = "SELECT * FROM items";
    $smt = $conn->prepare($sqlShop);
    $smt->execute();
    $rows = $smt->fetchAll(PDO::FETCH_OBJ);
    if($rows) {
        echo json_encode($rows);
    }
    else {
        echo 'Keine Daten vorhanden.';
    }
}

?>