CREATE SCHEMA fintech;

CREATE TABLE fintech.Customers (
    CustomerID INT PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    Email NVARCHAR(255),
    PhoneNumber NVARCHAR(50),
    Address NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(100),
    Country NVARCHAR(100),
    ZipCode NVARCHAR(20),
    SignupDate DATE
);

INSERT INTO fintech.Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, City, State, Country, ZipCode, SignupDate)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', '123 Main St', 'New York', 'NY', 'USA', '10001', '2023-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Maple Ave', 'Los Angeles', 'CA', 'USA', '90001', '2023-02-10'),
(3, 'Mike', 'Johnson', 'mike.johnson@example.com', '555-8765', '789 Oak Blvd', 'Chicago', 'IL', 'USA', '60601', '2023-03-05'),
(4, 'Alice', 'Williams', 'alice.williams@example.com', '555-4321', '321 Pine St', 'Houston', 'TX', 'USA', '77001', '2023-04-12'),
(5, 'Robert', 'Brown', 'robert.brown@example.com', '555-6789', '654 Cedar Rd', 'Phoenix', 'AZ', 'USA', '85001', '2023-05-20'),
(6, 'Emily', 'Davis', 'emily.davis@example.com', '555-4322', '987 Birch Ln', 'Philadelphia', 'PA', 'USA', '19101', '2023-06-15'),
(7, 'David', 'Miller', 'david.miller@example.com', '555-7654', '654 Spruce St', 'San Antonio', 'TX', 'USA', '78201', '2023-07-01'),
(8, 'Jessica', 'Garcia', 'jessica.garcia@example.com', '555-7890', '111 Elm St', 'San Diego', 'CA', 'USA', '92101', '2023-08-18'),
(9, 'Chris', 'Martinez', 'chris.martinez@example.com', '555-4323', '222 Oak St', 'Dallas', 'TX', 'USA', '75201', '2023-09-20'),
(10, 'Patricia', 'Lopez', 'patricia.lopez@example.com', '555-8766', '333 Pine St', 'San Jose', 'CA', 'USA', '95101', '2023-10-25'),
(11, 'Michael', 'Wilson', 'michael.wilson@example.com', '555-1235', '444 Maple Ave', 'Austin', 'TX', 'USA', '73301', '2023-11-30'),
(12, 'Linda', 'Anderson', 'linda.anderson@example.com', '555-5679', '555 Birch Ln', 'Jacksonville', 'FL', 'USA', '32099', '2023-12-01'),
(13, 'Kevin', 'Clark', 'kevin.clark@example.com', '555-4324', '666 Cedar Rd', 'Columbus', 'OH', 'USA', '43004', '2024-01-12'),
(14, 'Laura', 'Robinson', 'laura.robinson@example.com', '555-7891', '777 Spruce St', 'Fort Worth', 'TX', 'USA', '76101', '2024-02-15'),
(15, 'Joshua', 'Lewis', 'joshua.lewis@example.com', '555-8767', '888 Oak St', 'Indianapolis', 'IN', 'USA', '46201', '2024-03-18'),
(16, 'Sarah', 'Walker', 'sarah.walker@example.com', '555-1236', '999 Pine St', 'Charlotte', 'NC', 'USA', '28201', '2024-04-20'),
(17, 'Matthew', 'Hall', 'matthew.hall@example.com', '555-4325', '1010 Maple Ave', 'San Francisco', 'CA', 'USA', '94101', '2024-05-22'),
(18, 'Sophia', 'Young', 'sophia.young@example.com', '555-7892', '1111 Birch Ln', 'Seattle', 'WA', 'USA', '98101', '2024-06-25'),
(19, 'Daniel', 'King', 'daniel.king@example.com', '555-8768', '1212 Cedar Rd', 'Denver', 'CO', 'USA', '80201', '2024-07-28'),
(20, 'Olivia', 'Scott', 'olivia.scott@example.com', '555-1237', '1313 Spruce St', 'El Paso', 'TX', 'USA', '79901', '2024-08-30'),
(21, 'Jacob', 'Green', 'jacob.green@example.com', '555-4326', '1414 Oak St', 'Boston', 'MA', 'USA', '02101', '2024-09-01'),
(22, 'Mia', 'Baker', 'mia.baker@example.com', '555-7893', '1515 Pine St', 'Nashville', 'TN', 'USA', '37201', '2024-10-02'),
(23, 'Ethan', 'Perez', 'ethan.perez@example.com', '555-8769', '1616 Maple Ave', 'Detroit', 'MI', 'USA', '48201', '2024-11-05'),
(24, 'Ava', 'Harris', 'ava.harris@example.com', '555-1238', '1717 Birch Ln', 'Memphis', 'TN', 'USA', '37501', '2024-12-08'),
(25, 'Noah', 'Reed', 'noah.reed@example.com', '555-4327', '1818 Cedar Rd', 'Baltimore', 'MD', 'USA', '21201', '2025-01-10'),
(26, 'Isabella', 'Bell', 'isabella.bell@example.com', '555-7894', '1919 Spruce St', 'Las Vegas', 'NV', 'USA', '89101', '2025-02-12'),
(27, 'James', 'Sanchez', 'james.sanchez@example.com', '555-8770', '2020 Oak St', 'Louisville', 'KY', 'USA', '40201', '2025-03-15'),
(28, 'Ella', 'Rivera', 'ella.rivera@example.com', '555-1239', '2121 Pine St', 'Milwaukee', 'WI', 'USA', '53201', '2025-04-18'),
(29, 'Lucas', 'Cox', 'lucas.cox@example.com', '555-4328', '2222 Maple Ave', 'Albuquerque', 'NM', 'USA', '87101', '2025-05-20'),
(30, 'Emma', 'Morris', 'emma.morris@example.com', '555-7895', '2323 Birch Ln', 'Tucson', 'AZ', 'USA', '85701', '2025-06-22');

SELECT * FROM [fintech].[Customers];