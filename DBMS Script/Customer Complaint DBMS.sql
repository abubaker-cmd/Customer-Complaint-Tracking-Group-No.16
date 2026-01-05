-- Creating "Complaints" Table
CREATE TABLE Complaints (
    ComplaintID VARCHAR(10) PRIMARY KEY,
    ComplaintDate DATE,
    CustomerType VARCHAR(20),
    ComplaintCategory VARCHAR(50),
    ResolutionTime INT,
    NumberOfComplaints INT
);

-- Inserting the data from datasets created in Google Sheets
INSERT INTO Complaints (ComplaintID, ComplaintDate, CustomerType, ComplaintCategory, ResolutionTime, NumberOfComplaints)
VALUES 
('C-001', '2025-01-01', 'Individual', 'Late Delivery', 1, 59),
('C-002', '2025-01-08', 'Individual', 'Damaged Product', 2, 55),
('C-003', '2025-01-15', 'Corporate', 'Billing Issue', 2, 36),
('C-004', '2025-01-22', 'Individual', 'Poor Support', 3, 48),
('C-005', '2025-01-29', 'Corporate', 'Service Downtime', 4, 31),
('C-006', '2025-02-05', 'Individual', 'Late Delivery', 2, 26),
('C-007', '2025-02-12', 'Corporate', 'Billing Issue', 3, 22),
('C-008', '2025-02-19', 'Individual', 'Product Quality', 3, 19),
('C-009', '2025-02-26', 'Corporate', 'Service Downtime', 5, 10),
('C-010', '2025-03-05', 'Individual', 'Poor Support', 4, 10);

-- To see only the IDs and their "ComplaintCategory"
SELECT ComplaintID, ComplaintCategory 
FROM Complaints;

-- To see all complaints from "Corporate" customers
SELECT * FROM Complaints
WHERE CustomerType = 'Corporate';

-- To see all complaints from "Individual" customers
SELECT * FROM Complaints 
WHERE CustomerType = 'Individual';

-- To count complaints by "ComplaintCategory"
SELECT ComplaintCategory, SUM(NumberOfComplaints) FROM Complaints GROUP BY ComplaintCategory;