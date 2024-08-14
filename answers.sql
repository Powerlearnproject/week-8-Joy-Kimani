--Addressing the challenge of maternal mortality. Despite global efforts,
--many regions still face high maternal mortality rates due to inadequate
--healthcare infrastructure and access. By using data to identify patterns 
--and deficiencies in maternal healthcare services, interventions can be more effectively targeted.

--Execute answers.sql to create the database structure.
z
-- Create Hospital Table
CREATE TABLE Hospital (
    hospital_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);

-- Create Patient Table
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES Hospital(hospital_id)
);

---- Create Patient Table
CREATE TABLE Caregiver (
    caregiver_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES Hospital(hospital_id)
);

-- Create Treatment Table
CREATE TABLE Treatment (
    treatment_id INT PRIMARY KEY,
    patient_id INT,
    caregiver_id INT,
    date DATE,
    type VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (caregiver_id) REFERENCES Caregiver(caregiver_id)
);

---- Create Outcome Table
CREATE TABLE Outcome (
    outcome_id INT PRIMARY KEY,
    patient_id INT,
    date DATE,
    result VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

