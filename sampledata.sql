-- Execute sampledata.sql to populate the database with sample data.
-- Insert data into Hospital Table
INSERT INTO Hospital (hospital_id, name, location) VALUES
(1, 'General Hospital', 'City A'),
(2, 'Maternal Care Center', 'City B');

-- Insert data into Patient Table
INSERT INTO Patient (patient_id, name, age, hospital_id) VALUES
(1, 'Jane Doe', 28, 1),
(2, 'Mary Smith', 32, 2);


-- Insert data into Caregiver Table
INSERT INTO Caregiver (caregiver_id, name, specialization, hospital_id) VALUES
(1, 'Dr. Alice', 'Obstetrician', 1),
(2, 'Dr. Bob', 'Midwife', 2);

-- Insert data into Treatment Table
INSERT INTO Treatment (treatment_id, patient_id, caregiver_id, date, type) VALUES
(1, 1, 1, '2024-01-15', 'Prenatal Checkup'),
(2, 2, 2, '2024-01-20', 'Postnatal Care');

-- Insert data into Outcome Table
INSERT INTO Outcome (outcome_id, patient_id, date, result) VALUES
(1, 1, '2024-02-15', 'Healthy Birth'),
(2, 2, '2024-02-25', 'Complications');


