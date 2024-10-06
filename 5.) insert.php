<?php
include 'dbconfig.php';
try {
   //PDO connection
   $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // insert new records into the database
   $sql = "INSERT INTO Car (CarID, Brand, Model, Year, LicensePlate, Color, Type, RentalPricePerDay, AvailabilityStatus) VALUES
            (16, 'Porsche', 'Cayman', 2008, 'VIB-952', 'Orange', 'Coupe', 2248.08, 'Available'),
            (17, 'Jaguar', 'XJ Series', 1992, 'DNR-391', 'Green', 'Coupe', 4019.77, 'Under Maintenance'),
            (18, 'Mercedes-Benz', 'GL-Class', 2009, 'OKI-292', 'Indigo', 'Sedan', 3072.48, 'Under Maintenance'),
            (19, 'Maybach', 'Landaulet', 2012, 'CKI-469', 'Puce', 'Truck', 4746.29, 'Under Maintenance'),
            (20, 'Volkswagen', 'GTI', 2005, 'UPY-918', 'Teal', 'Sedan', 4160.53, 'Available');";

   $stmt = $conn->prepare($sql);
   $stmt->execute();

} catch (PDOException $e) {
   echo "Error: " . $e->getMessage();
}

?>
