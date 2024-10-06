<?php
include 'dbconfig.php';
try {
   //PDO connection
   $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // delete previously inserted records 
   $sql = "DELETE FROM Car WHERE Car.CarID > 15;";

   $stmt = $conn->prepare($sql);
   $stmt->execute();

} catch (PDOException $e) {
   echo "Error: " . $e->getMessage();
}

?>
