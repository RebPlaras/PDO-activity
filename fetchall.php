<?php
include 'dbconfig.php';
try {
   //PDO connection
   $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // prepare and execute the sql query
   $sql = "SELECT Car.Brand, Car.Model, Car.Type, Car.Color, Car.AvailabilityStatus FROM Car WHERE AvailabilityStatus = 'Available';";

   $stmt = $conn->prepare($sql);
   $stmt->execute();

   // fetch all rows selected as an associative array/hashmap
   $rows = $stmt->fetchall(PDO::FETCH_ASSOC);

   //print_r in between <pre> tags
   echo "<pre>";
   print_r($rows);
   echo "</pre>";

} catch (PDOException $e) {
   echo "Error: " . $e->getMessage();
}

?>
