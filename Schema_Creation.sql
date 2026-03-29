CREATE TABLE Department(  
Dname VARCHAR2(100) , 
CONSTRAINT pk_department PRIMARY KEY(dname) 
);

CREATE TABLE EMPLOYEE (  
Employee_number NUMBER(6) , ID VARCHAR2(10) UNIQUE 
NOT NULL, First_name VARCHAR2(50) NOT NULL, Last_name VARCHAR2(50) NOT NULL, 
Date_of_birth DATE NOT NULL, Gender CHAR(1) CHECK (Gender IN ('M', 'F')), 
Phone_number VARCHAR2(10), Email VARCHAR2(100), CONSTRAINT pk_employee 
PRIMARY KEY(Employee_number) );

CREATE TABLE PATIENT(  
File_number NUMBER (7) , Patient_ID NUMBER (10) UNIQUE, 
First_name VARCHAR2(50) NOT NULL, Last_name VARCHAR2(50) NOT NULL, 
Date_of_birth DATE NOT NULL, Email VARCHAR2(100), Phone_number VARCHAR2(10), 
Gender VARCHAR2(1) CHECK (Gender IN ('M', 'F')), District VARCHAR2(25), Streat 
VARCHAR2(50), Building_number VARCHAR2(25), Postal_code VARCHAR2(10), 
Eligibility_criteria VARCHAR2(255) NOT NULL, CONSTRAINT pk_patient PRIMARY KEY 
(file_number) );

CREATE TABLE VEHICLE( 
VehicleID NUMBER(10) , 
OperationalStatus VARCHAR2(50), 
PlateNumber NUMBER(10) UNIQUE, 
CONSTRAINT pk_vehicle PRIMARY KEY(VehicleID), 
);

CREATE TABLE MEDICATION ( 
Medication_id NUMBER(10), 
Name VARCHAR2(100), 
Usage_instruction VARCHAR2(500), 
Refill_availability CHAR(1), --Use 'Y'/'N' or '1'/'0' to simulate BOOLEAN,  
CONSTRAINT pk_medication PRIMARY KEY(Medication_id) 
);

CREATE TABLE DIAGNOSIS ( 
Code VARCHAR2(10), 
Name VARCHAR2(100) NOT NULL, 
Clinical_note VARCHAR2(500), 
CONSTRAINT pk_diagnosis PRIMARY KEY(code) 
); 

CREATE TABLE SERVICE ( 
service_id NUMBER(10), 
name VARCHAR2(100) NOT NULL, 
description VARCHAR2(255), 
estimated_duration NUMBER(3) , 
price NUMBER(8,2) , 
CONSTRAINT pk_service PRIMARY KEY(service_id) 
); 

CREATE TABLE BILL( 
bill_id NUMBER(10), 
payment_method VARCHAR2(50) , 
payment_status VARCHAR2(50), 
total_cost NUMBER(10,2), 
CONSTRAINT pk_bill PRIMARY KEY(bill_id) 
);

CREATE TABLE DOCTOR( 
Employee_number NUMBER(6), 
Specialization VARCHAR2(100), 
CONSTRAINT pk_doctor PRIMARY KEY(Employee_number), 
CONSTRAINT fk_doctor_employee FOREIGN KEY (Employee_number) 
REFERENCES EMPLOYEE(Employee_number) 
ON DELETE CASCADE 
);

CREATE TABLE NURSE( 
Enumber NUMBER (6), 
Dname VARCHAR2 (100) NOT NULL,
CONSTRAINT pk_nurse PRIMARY KEY Enumber (), 
CONSTRAINT fk_nurse_employee FOREIGN KEY (Enumber) REFERENCES 
Employee(employee_Number) ON DELETE CASCADE, 
CONSTRAINT fk_nurse_department FOREIGN KEY (Dname) REFERENCES 
Department(Dname) ON DELETE CASCADE 
); 

CREATE TABLE VEHICLE_DRIVER( 
Enumber NUMBER(6) , 
CONSTRAINT pk_vehicle_driver PRIMARY KEY (Enumber), 
CONSTRAINT fk_vehicle_employee FOREIGN KEY (Enumber) REFERENCES 
Employee(employee_Number) ON DELETE CASCADE 
); 

CREATE TABLE TREATMENT_PLAN ( 
Treatment_id NUMBER(10), 
Description VARCHAR2(500), 
Start_date DATE NOT NULL, 
Duration NUMBER(3) CHECK (Duration > 0), 
Dcode VARCHAR2(10), 
CONSTRAINT pk_treatment PRIMARY KEY(Treatment_id), 
CONSTRAINT fk_treatment_diagnosis FOREIGN KEY (Dcode) 
REFERENCES DIAGNOSIS(Code) 
ON DELETE SET NULL 
);

CREATE TABLE PATIENT_EMERGENCY( 
Patient_number NUMBER (7) , 
Relationship VARCHAR2(50), 
Name VARCHAR2(50), 
Phone_number VARCHAR2(20) NOT NULL, 
CONSTRAINT fk_patient_emergency FOREIGN KEY (patient_number) REFERENCES 
PATIENT(file_number) ON DELETE CASCADE,  
CONSTRAINT pk_patient_emergency PRIMARY KEY(patient_number, relationship, name, 
phone_number));

CREATE TABLE PATIENT_CHRONIC_ILLNESS( 
Pfile_number NUMBER (7), 
Chronic_illness VARCHAR2(255),  
CONSTRAINT fk_patient_chronic_illness FOREIGN KEY (pfile_number) REFERENCES 
PATIENT(file_number) ON DELETE CASCADE,  
CONSTRAINT pk_patient_chronic PRIMARY KEY(pfile_number, chronic_illness));

CREATE TABLE VEHICLE_AND_DRIVER( 
VehicleID NUMBER(10), 
Dnumber NUMBER(10), 
CONSTRAINT pk_vehicle_and_driver PRIMARY KEY (VehicleID, Dnumber), 
CONSTRAINT fk_vehicle_driver FOREIGN KEY (VehicleID) REFERENCES Vehicle (VehicleID) ON 
DELETE CASCADE,  
CONSTRAINT fk_driver_employee FOREIGN KEY (Dnumber) REFERENCES Vehicle_driver(Enumber) 
ON DELETE CASCADE );

CREATE TABLE TREATMENT_PLAN_MEDICATION(  
Medication_ID NUMBER(10),  
Treatment_ID NUMBER(10),  
Dosage VARCHAR2(255),  
CONSTRAINT fk_treat_med_medicationid FOREIGN KEY(Medication_ID) REFERENCES 
MEDICATION(Medication_ID) ON DELETE CASCADE, 
CONSTRAINT fk_treat_med_treatmentid FOREIGN KEY (Treatment_ID) REFERENCES 
TREATMENT_PLAN (Treatment_ID) ON DELETE CASCADE, 
CONSTRAINT pk_treat_med_medication PRIMARY KEY(medication_id, treatment_id) ); 

CREATE TABLE EMPLOYEE_AVAILABLE_SCHEDULE (  
Employee_number NUMBER(6), 
Day VARCHAR2(10), Year NUMBER(4), 
Time TIMESTAMP, 
Duration NUMBER(2),  
CONSTRAINT pk_employee_schedule PRIMARY KEY (Employee_number, Day, Year, Time), 
CONSTRAINT fk_employee_schedule_number FOREIGN KEY (Employee_number) REFERENCES 
EMPLOYEE(Employee_number) );

CREATE TABLE DOCTOR_NURSE (  
Doctor_number NUMBER(6),  
Nurse_number NUMBER(6),  
CONSTRAINT PK_DOCTOR_NURSE PRIMARY KEY (Doctor_number, Nurse_number), 
CONSTRAINT FK_DOC_NURSE_DOCTOR FOREIGN KEY (Doctor_number) REFERENCES 
EMPLOYEE(Employee_number), 
CONSTRAINT FK_DOC_NURSE_NURSE FOREIGN KEY (Nurse_number) REFERENCES 
EMPLOYEE(Employee_number) );

CREATE TABLE NURSE_QUALIFICATION (  
Nurse_number NUMBER(6),  
Qualification VARCHAR2(100), 
CONSTRAINT PK_NURSE_QUALIFICATION PRIMARY KEY (Nurse_number, Qualification), 
CONSTRAINT FK_NURSE_QUAL_EMPLOYEE FOREIGN KEY (Nurse_number) REFERENCES 
EMPLOYEE(Employee_number) ); 

CREATE TABLE SERVICE_EQUIPMENT ( 
Service_ID NUMBER(10),  
medical_equipment VARCHAR2(100),  
CONSTRAINT PK_SERVICE_EQUIPMENT PRIMARY KEY (Service_ID, medical_equipment), 
CONSTRAINT FK_SVC_EQUIP_SERVICE FOREIGN KEY (Service_ID) REFERENCES SERVICE(Service_ID) );

CREATE TABLE DOCTOR_ACADEMIC_DEGREE(  
Doctor_ID NUMBER(6),  
Academic_degree VARCHAR2(100),  
CONSTRAINT PK_DOCTOR_ACADEMIC_DEGREE PRIMARY KEY (Doctor_ID, Academic_degree), 
CONSTRAINT FK_DOC_DEGREE_EMPLOYEE FOREIGN KEY (Doctor_ID) REFERENCES 
EMPLOYEE(Employee_number) );

CREATE TABLE appointment( 
appointment_id NUMBER(10) PRIMARY KEY, 
status VARCHAR2(50),  
appointment_date DATE,  
appointment_time TIMESTAMP,  
patient_number NUMBER(7),  
DEmployee_number NUMBER(6),  
NEmployee_number NUMBER(6),  
vehicle_id NUMBER(10), 
treatment_id NUMBER(10),  
CONSTRAINT fk_appt_patient FOREIGN KEY(patient_number) REFERENCES patient(file_number) ON 
DELETE CASCADE,  
CONSTRAINT fk_appt_doctor FOREIGN KEY(DEmployee_number) REFERENCES 
doctor(Employee_number) ON DELETE SET NULL,  
CONSTRAINT fk_appt_nurse FOREIGN KEY(NEmployee_number) REFERENCES nurse(Enumber) ON 
DELETE SET NULL, CONSTRAINT fk_appt_vehicle FOREIGN KEY(vehicle_id) REFERENCES 
vehicle(VehicleID) ON DELETE SET NULL,  
CONSTRAINT fk_appt_treatment FOREIGN KEY(treatment_id) REFERENCES 
treatment_plan(Treatment_id) ON DELETE SET NULL);

CREATE TABLE appointment_bill(  
bill_id NUMBER(10) PRIMARY KEY, 
appointment_id NUMBER(10) UNIQUE, 
total_cost NUMBER(10,2),
CONSTRAINT fk_apptbill_appt FOREIGN KEY(appointment_id) REFERENCES 
appointment(appointment_id) ON DELETE CASCADE);

CREATE TABLE medication_appointment( 
medication_id NUMBER(10) 
, appointment_id NUMBER(10), 
PRIMARY KEY(medication_id,appointment_id), 
CONSTRAINT fk_medapp_med FOREIGN KEY(medication_id) REFERENCES 
medication(Medication_id) ON DELETE CASCADE, 
CONSTRAINT fk_medapp_appt FOREIGN KEY(appointment_id) REFERENCES 
appointment(appointment_id) ON DELETE CASCADE); 

CREATE TABLE appointment_service(  
service_id NUMBER(10),  
appointment_id NUMBER(10),  
PRIMARY KEY(service_id,appointment_id),  
CONSTRAINT fk_apptserv_service FOREIGN KEY(service_id) REFERENCES service(service_id) ON 
DELETE CASCADE,
CONSTRAINT fk_apptserv_appt FOREIGN KEY(appointment_id) REFERENCES 
appointment(appointment_id) ON DELETE CASCADE);

CREATE TABLE PATIENT_ALLERGIES( Pfile_number NUMBER(7),  
allergy VARCHAR2(255), 
CONSTRAINT fk_patient_allergies FOREIGN KEY(Pfile_number) REFERENCES PATIENT(file_number) 
ON DELETE CASCADE, CONSTRAINT pk_patient_allergies PRIMARY KEY(Pfile_number,allergy)); 