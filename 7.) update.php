<?php
include 'dbconfig.php';
try {
   //PDO connection
   $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // Set the availability of car id 1 to Under Maintenance
   $sql = "UPDATE Car SET AvailabilityStatus = 'Under Maintenance' WHERE CarID = 1;";

   $stmt = $conn->prepare($sql);
   $stmt->execute();

} catch (PDOException $e) {
   echo "Error: " . $e->getMessage();
}

?>
