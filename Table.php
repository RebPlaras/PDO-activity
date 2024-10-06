<?php
include 'dbconfig.php';
try {
   // PDO connection
   $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // Select all cars that are under maintenance
   $sql = "SELECT * FROM car WHERE AvailabilityStatus = 'Under Maintenance'; "; 
   $stmt = $conn->prepare($sql);
   $stmt->execute();

   // Fetch all rows selected as an associative array
   $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);


   echo "<table border='1'>";

   // Table column headers 
   echo "<tr>";
      echo "<th>CarID</th>";
      echo "<th>Brand</th>";
      echo "<th>Model</th>";
      echo "<th>Year</th>";
      echo "<th>License Plate</th>";
      echo "<th>Color</th>";
      echo "<th>Type</th>";
      echo "<th>Rental Price Per Day</th>";
      echo "<th>Availability Status</th>";
   echo "</tr>";

   // for loop through each row and create table rows
   foreach ($rows as $row) {
      echo "<tr>";
         echo "<td>" . $row['CarID'] . "</td>";
         echo "<td>" . $row['Brand'] . "</td>";
         echo "<td>" . $row['Model'] . "</td>";
         echo "<td>" . $row['Year'] . "</td>";
         echo "<td>" . $row['LicensePlate'] . "</td>";
         echo "<td>" . $row['Color'] . "</td>";
         echo "<td>" . $row['Type'] . "</td>";
         echo "<td>" . $row['RentalPricePerDay'] . "</td>";
         echo "<td>" . $row['AvailabilityStatus'] . "</td>";
      echo "</tr>";
   }

   echo "</table>";

} catch (PDOException $e) {
   echo "Error: " . $e->getMessage();
}
?>
