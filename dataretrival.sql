--Execute dataretrival.sql to retrieve specific data for analysis.

--Data retrieval
--Retrieve all patients treated by a specific caregiver
SELECT p.name AS Patient, c.name AS Caregiver, t.type AS Treatment
FROM Patient p
JOIN Treatment t ON p.patient_id = t.patient_id
JOIN Caregiver c ON t.caregiver_id = c.caregiver_id
WHERE c.name = 'Dr. Alice';

--List outcomes for patients at a specific hospital
SELECT p.name AS Patient, o.result AS Outcome
FROM Patient p
JOIN Outcome o ON p.patient_id = o.patient_id
WHERE p.hospital_id = 1;
