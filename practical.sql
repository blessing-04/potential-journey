
-- create
CREATE TABLE tblPatient (
  patient_Id INTEGER PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender VARCHAR(10) NOT NULL,
  phone_number VARCHAR(20) NULL,
  email VARCHAR(100) NULL
);

-- insert
INSERT INTO tblPatient VALUES (0001, 'Thabo', 'Nkosi', '1980-01-01', 'Male', 715551234, 'thabo.nkosi@yahoo.com');
INSERT INTO tblPatient VALUES (0002, 'Lindiwe', 'Ngubane', '1985-02-14', 'Female', 825555678, 'lindiwe.ngubane@gmai.com');
INSERT INTO tblPatient VALUES (0003, 'Siya', 'Dlamini', '1992-03-30', 'Male', 845 559 876, 'siya.dlamini@yahoo.com');
INSERT INTO tblPatient VALUES (0004, 'Thandi', 'Mabena', '1975-04-12', 'Female', 835 552 468, 'thandi.mabena@gmail.com');
INSERT INTO tblPatient VALUES (0005, 'Bongani', 'Mbatha', '1987-05-22', 'Male', 765553690, 'bongani.mbatha@yahoo.com');
INSERT INTO tblPatient VALUES (0006, 'Nomfundo', 'Mkhize', '1990-06-02', 'Female', 725551111, 'nomfundo.mkhize@gmail.com');
INSERT INTO tblPatient VALUES (0007, 'Sipho', 'Ndlovu', '1983-07-15', 'Male', 785552222, 'sipho.ndlovu@yahoo.com');
INSERT INTO tblPatient VALUES (0008, 'Zanele', 'Vilakazi', '1978-08-28', 'Female', 825553333, 'zanele.vilakazi@gmail.com');
INSERT INTO tblPatient VALUES (0009, 'Thulani', 'Mthembu', '1989-09-09', 'Male', 735554444, 'thulani.mthembu@yahoo.CREATE');
INSERT INTO tblPatient VALUES (0010, 'Nomvula', 'Zulu', '1991-10-12', 'Female', 835555555, 'nomvula.zulu@gmail.com');
INSERT INTO tblPatient VALUES (0011, 'jabulani', 'Ncube', '1982-11-23', 'Male', 765556666, 'jabulani.ncube@yahoo.com');
INSERT INTO tblPatient VALUES (0012, 'Ayanda', 'Khumalo', '1977-12-26', 'Female', 795557777, 'ayanda.khumalo@gmail.CREATE');
INSERT INTO tblPatient VALUES (0013, 'Sibusiso', 'Moyo', '1984-01-03', 'Male', 72555888, 'sibusiso.moyo@yahoo.com');

CREATE TABLE tblMeds (
  medicine_id INTEGER PRIMARY KEY,
  medicine_name VARCHAR(50) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  unit_price decimal(10,2) NOT NULL,
  description VARCHAR(100) NOT NULL

);

INSERT INTO tblMeds VALUES (0001, 'Aspirin', 'Bayer', 0.50, 'Pain reliever');
INSERT INTO tblMeds VALUES (0002, 'Lipitor', 'pfizer', 1.00, 'Cholesterol-lowering drug');
INSERT INTO tblMeds VALUES (0003, 'Advil', 'pfizer', 0.75, 'Pain reliever');
INSERT INTO tblMeds VALUES (0004, 'Tylenol', 'Johnson & Johnson', 0.80, 'Pain reliever');
INSERT INTO tblMeds VALUES (0005, 'Benadryl', 'Johnson & Johnson', 0.90, 'Allergy medicine');
INSERT INTO tblMeds VALUES (0006, 'Zantac', 'Sanofi', 1.25, 'acid reducer');
INSERT INTO tblMeds VALUES (0007, 'Zoloft', 'pfizer', 1.50, 'Antidepressant');
INSERT INTO tblMeds VALUES (0008, 'Bexatnol', 'pfizer', 2.00, 'Mental treatment');
INSERT INTO tblMeds VALUES (0009, 'Prozac', 'Eli Lilly', 1.75, 'Antidepressant');
INSERT INTO tblMeds VALUES (0010, 'Nexium', 'AstraZeneca', 1.50, 'acid reducer');



CREATE TABLE tblPrescriptions (
prescription_id INTEGER PRIMARY KEY,
patient_id INTEGER,
medicine_id INTEGER,
doctor_name VARCHAR(50) NOT NULL,
quantity INTEGER NOT NULL,
prescribed_date DATE NOT NULL,
status VARCHAR(20) NOT NULL,
FOREIGN KEY(patient_id) REFERENCES tblPatient(patient_id),
FOREIGN KEY(medicine_id) REFERENCES tblMeds(medicine_id)

);

INSERT INTO tblPrescriptions VALUES (1, 1, 1, 'Dr.Brown', '2022-01-01', 'Filled');
INSERT INTO tblPrescriptions VALUES (2, 1, 2, 'Dr.Davis', '2022-01-02', 'Pending');
INSERT INTO tblPrescriptions VALUES (3, 2, 3, 'Dr.Garcia', '2022-01-03', 'Filled');
INSERT INTO tblPrescriptions VALUES (4, 2, 4, 'Dr.Brown', '2022-01-04', 'Filled');
INSERT INTO tblPrescriptions VALUES (5, 3, 5, 'Dr.Davis', '2022-01-05', 'Filled');
INSERT INTO tblPrescriptions VALUES (6, 3, 6, 'Dr.Garcia', '2022-01-06', 'Filled');
INSERT INTO tblPrescriptions VALUES (7, 4, 7, 'Dr.Brown', '2022-01-07', 'Pending');
INSERT INTO tblPrescriptions VALUES (8, 4, 9, 'Dr.Davis', '2022-01-08', 'Filled');
INSERT INTO tblPrescriptions VALUES (9, 5, 9, 'Dr.Garcia', '2022-01-09', 'Filled');
INSERT INTO tblPrescriptions VALUES (10, 5, 10, 'Dr.Anderson', '2022-01-10', 'Pending');

-- fetch 
SELECT * FROM tblPatient WHERE gender= 'Female' AND date_of_birth < '1980-01-01' ;
SELECT * FROM tblMeds WHERE medicine_name= 'pain relief' AND manufacturer= 'pfizer';
SELECT * FROM tblPrescriptions;


