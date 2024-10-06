CREATE TABLE Customer (
CustomerID INT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255) UNIQUE,
PhoneNumber VARCHAR(20),
Address VARCHAR(255)
);

CREATE TABLE Car (
CarID INT PRIMARY KEY,
Brand VARCHAR(255),
Model VARCHAR(255),
Year INT,
LicensePlate VARCHAR(20) UNIQUE,
Color VARCHAR(50),
Type VARCHAR(50),
RentalPricePerDay DECIMAL(10, 2),
AvailabilityStatus VARCHAR(20)
);

CREATE TABLE Rental (
RentalID INT PRIMARY KEY,
CustomerID INT,
CarID INT,
RentalDate DATETIME,
TotalCost DECIMAL(10, 2),
Status VARCHAR(20)
);

CREATE TABLE Payment (
PaymentID INT PRIMARY KEY,
RentalID INT,
Amount DECIMAL(10, 2),
PaymentDate DATETIME,
PaymentMethod VARCHAR(50),
Status VARCHAR(20)
);

CREATE TABLE Maintenance (
MaintenanceID INT PRIMARY KEY,
CarID INT,
Date DATETIME,
Description TEXT,
Cost DECIMAL(10, 2)
);

CREATE TABLE Feedback (
FeedbackID INT PRIMARY KEY,
CarID INT,
CustomerID INT,
Rating INT,
Comments TEXT
);

INSERT INTO Customer (CustomerID, Name, Email, PhoneNumber, Address) VALUES
(1, 'Andrea', 'acaddell0@friendfeed.com', '860-490-1151', '3 Karstens Crossing'),
(2, 'Jesse', 'jkaley1@istockphoto.com', '110-655-5702', '042 Heath Drive'),
(3, 'Jasmina', 'jvinau2@si.edu', '756-440-5224', '17 Esch Street'),
(4, 'Dierdre', 'dtschursch3@amazon.com', '336-970-3285', '563 2nd Point'),
(5, 'Consuela', 'cungerecht4@alexa.com', '179-795-3975', '2 John Wall Terrace'),
(6, 'Loria', 'lcarleman5@uiuc.edu', '917-984-3574', '1 Tomscot Hill'),
(7, 'Randi', 'rbolden6@fema.gov', '862-337-5667', '0919 Boyd Terrace'),
(8, 'Elton', 'ehelsby7@bluehost.com', '321-744-1552', '485 Manitowish Road'),
(9, 'Adelice', 'aclipsham8@bloomberg.com', '993-663-1485', '29 Springview Drive'),
(10, 'Alene', 'awigginton9@geocities.jp', '812-617-5723', '66577 Gina Terrace');

INSERT INTO Car (CarID, Brand, Model, Year, LicensePlate, Color, Type, RentalPricePerDay,
AvailabilityStatus) VALUES
(1, 'Chevrolet', 'Prizm', 1998, 'KKP-212', 'Khaki', 'Truck', 4018.17, 'Available'),
(2, 'Volkswagen', 'Corrado', 1992, 'YUK-772', 'Goldenrod', 'SUV', 3698.83, 'Under Maintenance'),
(3, 'Mitsubishi', 'Montero', 2000, 'OTE-192', 'Red', 'Sedan', 3171.80, 'Available'),
(4, 'Buick', 'LeSabre', 1996, 'GVU-994', 'Fuscia', 'Convertible', 2612.48, 'Unavailable'),
(5, 'Chrysler', 'LHS', 1997, 'EGE-448', 'Blue', 'SUV', 3812.55, 'Under Maintenance'),
(6, 'Pontiac', 'Firefly', 1990, 'BWL-548', 'Red', 'Truck', 4845.98, 'Under Maintenance'),
(7, 'GMC', 'Suburban 1500', 1996, 'SGW-510', 'Puce', 'Convertible', 4539.74, 'Available'),
(8, 'Mazda', 'Millenia', 1997, 'XIE-245', 'Yellow', 'Truck', 2279.74, 'Under Maintenance'),
(9, 'Acura', 'CL', 2001, 'NUT-683', 'Maroon', 'SUV', 4169.38, 'Under Maintenance'),
(10, 'Dodge', 'Neon', 1997, 'FFF-193', 'Indigo', 'Truck', 2472.92, 'Available'),
(11, 'Volkswagen', 'Golf III', 1994, 'MPI-592', 'Indigo', 'Truck', 4428.35, 'Unavailable'),
(12, 'Pontiac', 'Grand Am', 1997, 'CDZ-671', 'Red', 'Hatchback', 4048.27, 'Under Maintenance'),
(13, 'Lexus', 'IS F', 2009, 'VRM-928', 'Violet', 'Coupe', 2890.63, 'Under Maintenance'),
(14, 'Maybach', '57', 2011, 'SPX-264', 'Turquoise', 'Convertible', 4090.95, 'Unavailable'),
(15, 'Audi', 'RS 6', 2003, 'VUN-612', 'Fuscia', 'Sedan', 2782.97, 'Under Maintenance');

INSERT INTO Rental (RentalID, CustomerID, CarID, RentalDate, TotalCost, Status) VALUES
(1, 7, 9, '2024-03-13', 4040.80, 'Ongoing'),
(2, 4, 13, '2024-05-18', 3759.84, 'Ongoing'),
(3, 3, 11, '2023-01-05', 4044.65, 'Cancelled'),
(4, 1, 2, '2024-07-29', 3666.84, 'Cancelled'),
(5, 8, 3, '2024-06-12', 2017.78, 'Cancelled'),
(6, 1, 11, '2024-10-12', 4969.16, 'Completed'),
(7, 9, 6, '2024-03-28', 4790.30, 'Completed'),
(8, 5, 13, '2023-08-28', 2518.14, 'Cancelled'),
(9, 10, 13, '2024-09-29', 2067.72, 'Cancelled'),
(10, 8, 2, '2024-01-18', 3086.41, 'Ongoing');

INSERT INTO Payment (PaymentID, RentalID, Amount, PaymentDate, PaymentMethod,
Status) VALUES
(1, 8, 4783.13, '2023-04-17', 'Cash', 'Pending'),
(2, 4, 4342.83, '2023-03-15', 'Card', 'Pending'),
(3, 7, 3310.16, '2024-04-26', 'Card', 'Refunded'),
(4, 5, 2481.76, '2024-02-29', 'Cash', 'Pending'),
(5, 8, 2889.34, '2024-04-14', 'Cash', 'Refunded'),
(6, 6, 3019.15, '2023-02-01', 'Card', 'Pending'),
(7, 4, 3808.98, '2023-06-06', 'Cash', 'Refunded'),
(8, 6, 3353.68, '2024-07-05', 'Cash', 'Completed'),
(9, 10, 3748.89, '2023-06-01', 'Card', 'Pending'),
(10, 1, 2021.74, '2024-08-30', 'Cash', 'Pending');

INSERT INTO Maintenance (MaintenanceID, CarID, Date, Description, Cost) VALUES
(1, 9, '2023-01-31', 'vitae nisl aenean lectus pellentesque', 3663.18),
(2, 11, '2023-09-18', 'volutpat in congue etiam justo', 2999.62),
(3, 6, '2024-08-18', 'non mauris morbi non lectus', 8620.71),
(4, 1, '2023-09-09', 'varius nulla facilisi cras', 2478.34),
(5, 4, '2023-04-09', 'quam fringilla rhoncus mauris', 9871.61),
(6, 12, '2023-06-30', 'viverra diam vitae quam', 8717.66),
(7, 9, '2024-12-30', 'nam dui proin', 3839.65),
(8, 11, '2023-04-30', 'consequat metus sapien ut', 3226.01),
(9, 13, '2024-05-22', 'malesuada in imperdiet et', 4025.72),
(10, 7, '2023-09-10', 'nam ultrices libero non mattis', 4548.13);

INSERT INTO Feedback (FeedbackID, CarID, CustomerID, Rating, Comments) VALUES
(1, 13, 5, 5, 'ornare consequat lectus in est risus'),
(2, 10, 9, 3, 'in magna bibendum imperdiet nullam'),
(3, 12, 10, 5, 'pretium nisl ut'),
(4, 4, 8, 3, 'turpis nec euismod scelerisque'),
(5, 1, 4, 4, 'aliquam quis turpis eget elit sodales'),
(6, 9, 10, 5, 'dui nec nisi volutpat'),
(7, 1, 5, 5, 'morbi sem mauris laoreet ut rhoncus'),
(8, 4, 1, 3, 'hendrerit at vulputate vitae'),
(9, 6, 10, 4, 'morbi sem mauris'),
(10, 13, 2, 5, 'natoque penatibus et magnis dis parturient montes'),
(11, 14, 9, 5, 'eleifend luctus ultricies eu nibh quisque'),
(12, 5, 7, 5, 'vel augue vestibulum rutrum'),
(13, 1, 3, 4, 'vitae nisi nam ultrices'),
(14, 7, 2, 4, 'orci mauris lacinia sapien quis'),
(15, 11, 4, 4, 'elit proin interdum mauris');
