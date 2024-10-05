<?php

// database parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "car rental";

try {
    // establish connection with the server using PDO
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo "Connected successfully"; 
} catch (PDOException $e) {
    // error message if connection fails
    die("Connection failed: " . $e->getMessage());
}

?>
