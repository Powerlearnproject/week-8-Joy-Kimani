--Data Analysis
--Count the number of treatments provided by each hospital
SELECT h.name AS Hospital, COUNT(t.treatment_id) AS TreatmentCount
FROM Hospital h
JOIN Patient p ON h.hospital_id = p.hospital_id
JOIN Treatment t ON p.patient_id = t.patient_id
GROUP BY h.name;

--Analyze the percentage of healthy births
SELECT (COUNT(CASE WHEN o.result = 'Healthy Birth' THEN 1 END) * 100.0) / COUNT(o.outcome_id) AS HealthyBirthRate
FROM Outcome o;