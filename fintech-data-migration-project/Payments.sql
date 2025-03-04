CREATE SCHEMA fintech;

CREATE TABLE fintech.Payments (
    PaymentID INT PRIMARY KEY,
    LoanID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(18, 2),
    PaymentMethod NVARCHAR(50)
);

INSERT INTO fintech.Payments (PaymentID, LoanID, PaymentDate, PaymentAmount, PaymentMethod)
VALUES
(1, 76, '2024-02-02', 301.1, 'Credit Card'),
(2, 174, '2024-03-03', 302.2, 'Debit Card'),
(3, 146, '2024-04-04', 303.3, 'Cash'),
(4, 202, '2024-05-05', 304.4, 'Bank Transfer'),
(5, 81, '2024-06-06', 305.5, 'Credit Card'),
(6, 225, '2024-07-07', 306.6, 'Debit Card'),
(7, 279, '2024-08-08', 307.7, 'Cash'),
(8, 111, '2024-09-09', 308.8, 'Bank Transfer'),
(9, 136, '2024-10-10', 309.9, 'Credit Card'),
(10, 186, '2024-11-11', 311.0, 'Debit Card'),
(11, 217, '2024-12-12', 312.1, 'Cash'),
(12, 279, '2024-01-13', 313.2, 'Bank Transfer'),
(13, 66, '2024-02-14', 314.3, 'Credit Card'),
(14, 161, '2024-03-15', 315.4, 'Debit Card'),
(15, 127, '2024-04-16', 316.5, 'Cash'),
(16, 194, '2024-05-17', 317.6, 'Bank Transfer'),
(17, 153, '2024-06-18', 318.7, 'Credit Card'),
(18, 276, '2024-07-19', 319.8, 'Debit Card'),
(19, 80, '2024-08-20', 320.9, 'Cash'),
(20, 48, '2024-09-21', 322.0, 'Bank Transfer'),
(21, 41, '2024-10-22', 323.1, 'Credit Card'),
(22, 15, '2024-11-23', 324.2, 'Debit Card'),
(23, 225, '2024-12-24', 325.3, 'Cash'),
(24, 96, '2024-01-25', 326.4, 'Bank Transfer'),
(25, 298, '2024-02-26', 327.5, 'Credit Card'),
(26, 161, '2024-03-27', 328.6, 'Debit Card'),
(27, 230, '2024-04-28', 329.7, 'Cash'),
(28, 266, '2024-05-01', 330.8, 'Bank Transfer'),
(29, 295, '2024-06-02', 331.9, 'Credit Card'),
(30, 86, '2024-07-03', 333.0, 'Debit Card'),
(31, 172, '2024-08-04', 334.1, 'Cash'),
(32, 198, '2024-09-05', 335.2, 'Bank Transfer'),
(33, 161, '2024-10-06', 336.3, 'Credit Card'),
(34, 95, '2024-11-07', 337.4, 'Debit Card'),
(35, 216, '2024-12-08', 338.5, 'Cash'),
(36, 69, '2024-01-09', 339.6, 'Bank Transfer'),
(37, 268, '2024-02-10', 340.7, 'Credit Card'),
(38, 286, '2024-03-11', 341.8, 'Debit Card'),
(39, 134, '2024-04-12', 342.9, 'Cash'),
(40, 146, '2024-05-13', 344.0, 'Bank Transfer'),
(41, 288, '2024-06-14', 345.1, 'Credit Card'),
(42, 235, '2024-07-15', 346.2, 'Debit Card'),
(43, 236, '2024-08-16', 347.3, 'Cash'),
(44, 226, '2024-09-17', 348.4, 'Bank Transfer'),
(45, 289, '2024-10-18', 349.5, 'Credit Card'),
(46, 78, '2024-11-19', 350.6, 'Debit Card'),
(47, 113, '2024-12-20', 351.7, 'Cash'),
(48, 172, '2024-01-21', 352.8, 'Bank Transfer'),
(49, 120, '2024-02-22', 353.9, 'Credit Card'),
(50, 213, '2024-03-23', 355.0, 'Debit Card'),
(51, 71, '2024-04-24', 356.1, 'Cash'),
(52, 233, '2024-05-25', 357.2, 'Bank Transfer'),
(53, 224, '2024-06-26', 358.3, 'Credit Card'),
(54, 96, '2024-07-27', 359.4, 'Debit Card'),
(55, 243, '2024-08-28', 360.5, 'Cash'),
(56, 244, '2024-09-01', 361.6, 'Bank Transfer'),
(57, 295, '2024-10-02', 362.7, 'Credit Card'),
(58, 278, '2024-11-03', 363.8, 'Debit Card'),
(59, 295, '2024-12-04', 364.9, 'Cash'),
(60, 166, '2024-01-05', 366.0, 'Bank Transfer'),
(61, 252, '2024-02-06', 367.1, 'Credit Card'),
(62, 58, '2024-03-07', 368.2, 'Debit Card'),
(63, 223, '2024-04-08', 369.3, 'Cash'),
(64, 274, '2024-05-09', 370.4, 'Bank Transfer'),
(65, 113, '2024-06-10', 371.5, 'Credit Card'),
(66, 277, '2024-07-11', 372.6, 'Debit Card'),
(67, 12, '2024-08-12', 373.7, 'Cash'),
(68, 138, '2024-09-13', 374.8, 'Bank Transfer'),
(69, 277, '2024-10-14', 375.9, 'Credit Card'),
(70, 31, '2024-11-15', 377.0, 'Debit Card'),
(71, 134, '2024-12-16', 378.1, 'Cash'),
(72, 119, '2024-01-17', 379.2, 'Bank Transfer'),
(73, 17, '2024-02-18', 380.3, 'Credit Card'),
(74, 12, '2024-03-19', 381.4, 'Debit Card'),
(75, 6, '2024-04-20', 382.5, 'Cash');