INSERT INTO DEPARTMENT (Dname) VALUES ('Pediatrics');

INSERT INTO DEPARTMENT (Dname) VALUES ('Cardiology');

INSERT INTO DEPARTMENT (Dname) VALUES ('Oncology');

INSERT INTO DEPARTMENT (Dname) VALUES ('Orthopedics');

INSERT INTO DEPARTMENT (Dname) VALUES ('Surgery');

INSERT INTO DEPARTMENT (Dname) VALUES ('Emegency');

INSERT INTO DEPARTMENT (Dname) VALUES ('Gastroenterology');


INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (1, 'Aspiein', 'Take one tablet daily', 'Y');

INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (2, 'ibuprofen', 'Take as needed for pain', 'N');

INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (3, 'Lisinopril', 'Take one tablet daily', 'Y');

INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (4, 'Metformin', 'Take two tablets with meals', 'Y');

INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (5, 'Atorvastatin', 'Take one tablet at night', 'N');

INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (6, 'Levothyroxine', 'Take on an empty stomach', 'Y');

INSERT INTO MEDICATION(Medication_id, Name, Usage_instruction, refill_availabity) VALUES (7, 'Simvastatin', 'Take one tablet in the evening', 'Y');


INSERT INTO appointment_bill (appointment_id, bill_id) VALUES (5, 5);

INSERT INTO appointment_bill (appointment_id, bill_id) VALUES (6, 6);

INSERT INTO appointment_bill (appointment_id, bill_id) VALUES (7, 7);

INSERT INTO appointment_bill (appointment_id, bill_id) VALUES (8, 8);

INSERT INTO appointment_bill (appointment_id, bill_id) VALUES (9, 9);


INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (1, 300002);

INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (2, 300003);

INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (2, 300004);

INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (3, 300005);

INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (3, 300006);

INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (4, 300001);

INSERT INTO VEHICLE_AND_DRIVER (Vehicle_ID, Dnumber) VALUES (4, 300007);


INSERT INTO PATIENT_EMERGENCY (Patient_number, Relationship, Name, Phone_number) VALUES (1002, 'Parent', 'Alice Johnson', '555-8765');

INSERT INTO PATIENT_EMERGENCY (Patient_number, Relationship, Name, Phone_number) VALUES (1003, 'Child', 'Bob Brown', '555-4321');

INSERT INTO PATIENT_EMERGENCY (Patient_number, Relationship, Name, Phone_number) VALUES (1004, 'Friend', 'Mike Prince', '555-6789');

INSERT INTO PATIENT_EMERGENCY (Patient_number, Relationship, Name, Phone_number) VALUES (1005, 'Parent', 'Emily Hunt', '555-0987');

INSERT INTO PATIENT_EMERGENCY (Patient_number, Relationship, Name, Phone_number) VALUES (1002, 'Parent', 'Alice Johnson', '555-8765');


INSERT INTO medication_appointment (medication_id, appointment_id) VALUES (5, 2);

INSERT INTO medication_appointment (medication_id, appointment_id) VALUES (6, 2);

INSERT INTO medication_appointment (medication_id, appointment_id) VALUES (7, 2);

INSERT INTO medication_appointment (medication_id, appointment_id) VALUES (8, 2);


INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (1, 'Operational', 1234567890);

INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (2, 'Operational', 2345678901);

INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (3, 'Under Maintatnance', 3456789012);

INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (4, 'Operational', 4567890123);

INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (5, 'Out of Service', 5678901234);


INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (6, 'Operational', 6789012345);

INSERT INTO VEHICLE (VehicleID, OperationalStatus, PlateNumber) VALUES (7, 'Operational', 7890123456);


INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300001);

INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300002);

INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300003);

INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300004);

INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300005);

INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300006);

INSERT INTO VEHICLE_DRIVER (Enumber) VALUES (300007);


INSERT INTO appointment_service (service_id, appointment_id) VALUES (8, 5);

INSERT INTO appointment_service (service_id, appointment_id) VALUES (9, 5);

INSERT INTO appointment_service (service_id, appointment_id) VALUES (10, 5);

INSERT INTO appointment_service (service_id, appointment_id) VALUES (1, 7);

INSERT INTO appointment_service (service_id, appointment_id) VALUES (2, 8);

INSERT INTO appointment_service (service_id, appointment_id) VALUES (3, 9);

INSERT INTO appointment_service (service_id, appointment_id) VALUES (4, 10);


INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (2, 'Cash', 'Pending', 20000.00);

INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (3, 'Insurance', 'Paid', 13000.00);

INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (4, 'Debit Card', 'Failed', 120.50);

INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (5, 'Paypal', 'Paid', 75.25);

INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (6, 'Bank Transfer', 'Pending', 450.00);

INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (7, 'Credit Card', 'paid', 250.75);

INSERT INTO BILL (bill_id, payment_method, payment_status, total_cost) VALUES (8, 'Cash', 'Cancelled', 7070.00);


INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1001, 'Diabetes');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1002, 'Asthma');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1003, 'Cardiovascular Disease');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1004, 'Hypothyriodism');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1005, 'Anxiety');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1006, 'None');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1007, 'Arthritis');

INSERT INTO PATIENT_CHRONIC_ILLNESS (Pfile_number, Chronic_illness) VALUES (1001, 'Diabetes');

INSERT INTO DOCTOR_ACADEMIC_DEGREE (Doctor_ID, Academic_degree) VALUES (100003. 'MD in Pediatrics from Standford University');

INSERT INTO DOCTOR_ACADEMIC_DEGREE (Doctor_ID, Academic_degree) VALUES (100004. 'MD in Orthopedics from Mayo Clinic Alix School of Medicine');

INSERT INTO DOCTOR_ACADEMIC_DEGREE (Doctor_ID, Academic_degree) VALUES (100005. 'MD in Dermatology from University of California, San Francisco');

INSERT INTO DOCTOR_ACADEMIC_DEGREE (Doctor_ID, Academic_degree) VALUES (100006. 'MD in Psychiatry from University of Pennsylvania');

INSERT INTO DOCTOR_ACADEMIC_DEGREE (Doctor_ID, Academic_degree) VALUES (100007. 'MD in Gastroenterology from University Michigan');

INSERT INTO DOCTOR_ACADEMIC_DEGREE (Doctor_ID, Academic_degree) VALUES (100008. 'MD in Oncology from Duke University');


INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D002', 'Diabetes Mellitus', 'Chronic condition affecting glucose metabolism.');

INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D003', 'Asthma', 'Chronic respiratory condition with weezing.');

INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D004', 'Chlestrol Disorder', 'Abnormal lipid levels in the blood.');

INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D005', 'Heart Diseas', 'A range of conditions affecting the heart.');

INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D006', 'Anemia', 'Deficiency of red blood cells or hemoglobin.');

INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D006', 'Osteoarthritis', 'Degenerative joint desease causing pain and stiffness.');

INSERT INTO DIAGNOSIS (Code, Name, Clinical_note) VALUES ('D008', 'Allergy', 'Immune response to foreign substances.');


INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100001,'Cardiology');

INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100002,'Neurology');

INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100003,'Pediatrics');

INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100004,'Orthopedics');

INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100005,'Dermatology');

INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100006,'Psychiatry');

INSERT INTO DOCTOR (Employee_number, Specialization) VALUES (100007,'Gastroenterology');


INSERT INTO EMPLOYEE_AVAILABLE_SCHEDULE (Employee_number, Day, Year, Time, Duration) VALUES (200006, 'Saturday', 2023, TO_TIMESTAMP('12:00:00', HH24:MI:SS'), 5);

INSERT INTO EMPLOYEE_AVAILABLE_SCHEDULE (Employee_number, Day, Year, Time, Duration) VALUES (300004, 'Wednesday', 2023, TO_TIMESTAMP('6:00:00', HH24:MI:SS'), 4);

INSERT INTO EMPLOYEE_AVAILABLE_SCHEDULE (Employee_number, Day, Year, Time, Duration) VALUES (300004, 'Thursday', 2023, TO_TIMESTAMP('11:00:00', HH24:MI:SS'), 3);

INSERT INTO EMPLOYEE_AVAILABLE_SCHEDULE (Employee_number, Day, Year, Time, Duration) VALUES (300005, 'Friday', 2023, TO_TIMESTAMP('7:30:00', HH24:MI:SS'), 5);

INSERT INTO EMPLOYEE_AVAILABLE_SCHEDULE (Employee_number, Day, Year, Time, Duration) VALUES (200006, 'Saturday', 2023, TO_TIMESTAMP('12:00:00', HH24:MI:SS'), 5);


INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (100001, 'E100001', 'Ali', 'Alqahtani', TO_DATE('1980-05-10', 'YYYY-MM-DD'), 'M'). '0551000001', 'ali.alqahtani@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (100002, 'E100002', 'Sara', 'Alzahrani', TO_DATE('1985-08-22', 'YYYY-MM-DD'), 'F'). '0551000002', 'sara.alzahrani@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (100003, 'E100003', 'Faisal', 'Alharbi', TO_DATE('1979-11-30', 'YYYY-MM-DD'), 'M'). '0551000003', 'faisal.alharbu@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (100004, 'E100004', 'Laila', 'Alshehri', TO_DATE('1990-02-18', 'YYYY-MM-DD'), 'F'). '0551000004', 'laila.alshehri@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (100005, 'E100005', 'Omar', 'Aldossari', TO_DATE('1988-07-07', 'YYYY-MM-DD'), 'M'). '0551000005', 'omar.aldossari@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (100006, 'E100006', 'Noura', 'Alghamdi', TO_DATE('1982-04-03', 'YYYY-MM-DD'), 'F'). '0551000006', 'noura.alghamdi@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (200001, 'E200001', 'Noura', 'Alamri', TO_DATE('1987-01-10', 'YYYY-MM-DD'), 'F'). '0552000001', 'noura.alamri@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (200002, 'E200002', 'Aisha', 'Alzahrani', TO_DATE('1992-02-14', 'YYYY-MM-DD'), 'F'). '0552000002', 'aisha.alzahrani@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (200003, 'E200003', 'Khalid', 'Alotaibi', TO_DATE('1989-03-20', 'YYYY-MM-DD'), 'M'). '0552000003', 'khalid.alotaibi@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (200004, 'E200004', 'Fatima', 'Alqahtani', TO_DATE('1985-04-18', 'YYYY-MM-DD'), 'F'). '0552000004', 'fatima.alqahtani@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (200005, 'E200005', 'Laila', 'Alshehri', TO_DATE('1990-05-22', 'YYYY-MM-DD'), 'F'). '0552000005', 'laila.alshehri@example.com');

INSERT INTO EMPLOYEE (Employee_number, ID, First_name, Last_name, Date_of_birth, Gender, Phone_number, Email) VALUES (200006, 'E200006', 'Ali', 'Almutairi', TO_DATE('1984-06-16', 'YYYY-MM-DD'), 'M'). '0552000006', 'ali.almutairi@example.com');


INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100003, 200001);

INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100004, 200004);

INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100005, 200008);

INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100006, 200006);

INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100007, 200007);

INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100008, 200003);

INSERT INTO DOCTOR_NURSE (Doctor_number, Nurse_number) VALUES (100009, 200010);


INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200003, 'Oncology Certified Nurse');

INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200004, 'Orthopedic Certified Nurse');

INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200005, 'Surgical Nurse Practitioner');

INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200006, 'Emergency Room Nurse');

INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200007, 'Gatroenterology Nurse Specialist');

INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200008, 'Dermatology Nurse Practitioner');

INSERT INTO NURSE_QUALIFICATION (Nurse_number, Qualification) VALUES (200009, 'Neurology Nurse Specialist');


INSERT INTO NURSE (Enumber, Dname) VALUES (200003, 'Oncology');

INSERT INTO NURSE (Enumber, Dname) VALUES (200004, 'Orthopedics');

INSERT INTO NURSE (Enumber, Dname) VALUES (200005, 'Surgery');

INSERT INTO NURSE (Enumber, Dname) VALUES (200006, 'Emergency');

INSERT INTO NURSE (Enumber, Dname) VALUES (200007, 'Gastrooenterology');

INSERT INTO NURSE (Enumber, Dname) VALUES (200008, 'Dermatology');


INSERT INTO PATIENT_ALLERGIRS (Pfile_number, Allergy) VALUES (1001, 'Peanuts');

INSERT INTO PATIENT_ALLERGIRS (Pfile_number, Allergy) VALUES (1001, 'Shellfish');

INSERT INTO PATIENT_ALLERGIRS (Pfile_number, Allergy) VALUES (1003, 'Penicillin');

INSERT INTO PATIENT_ALLERGIRS (Pfile_number, Allergy) VALUES (1003, 'Latex');

INSERT INTO PATIENT_ALLERGIRS (Pfile_number, Allergy) VALUES (1004, 'Dust mist');

INSERT INTO PATIENT_ALLERGIRS (Pfile_number, Allergy) VALUES (1005, 'Pollen');


INSERT INTO PATIENT (File_number, Patient_ID, First_name, Last_name, Date_of_birth, Email, Phone_number, Gender, District, Street, Building_number, Postal_code, Eligibility_cratiria) VALUES (1001, 20001, 'Alice', 'Smith', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'alice.smith.example.com', '1234567890', 'F','Downtown', 'Main St', '101', '12345', 'Eligible');

INSERT INTO PATIENT (File_number, Patient_ID, First_name, Last_name, Date_of_birth, Email, Phone_number, Gender, District, Street, Building_number, Postal_code, Eligibility_cratiria) VALUES (1002, 20002, 'Bob', 'Johnson', TO_DATE('1985-03-22', 'YYYY-MM-DD'), 'bob.johnson.example.com', '2345678901', 'M','Uptown', 'Second St', '202', '23456', 'Eligible');

INSERT INTO PATIENT (File_number, Patient_ID, First_name, Last_name, Date_of_birth, Email, Phone_number, Gender, District, Street, Building_number, Postal_code, Eligibility_cratiria) VALUES (1003, 20003, 'Charlie', 'Brown', TO_DATE('1978-11-30', 'YYYY-MM-DD'), 'charlie.brown.example.com', '3456789012', 'M','Midtown', 'Third St', '303', '34567', 'Not Eligible');

INSERT INTO PATIENT (File_number, Patient_ID, First_name, Last_name, Date_of_birth, Email, Phone_number, Gender, District, Street, Building_number, Postal_code, Eligibility_cratiria) VALUES (1004, 20004, 'Diana', 'Prince', TO_DATE('1992-07-12', 'YYYY-MM-DD'), 'diana.prince.example.com', '4567890123', 'F','Westtown', 'Fourth St', '404', '45678', 'Eligible');

INSERT INTO PATIENT (File_number, Patient_ID, First_name, Last_name, Date_of_birth, Email, Phone_number, Gender, District, Street, Building_number, Postal_code, Eligibility_cratiria) VALUES (1004, 20005, 'Ethan', 'Hunt', TO_DATE('1980-01-25', 'YYYY-MM-DD'), 'ethan.hunt.example.com', '5678901234', 'M','Easttown', 'Fifth St', '505', '56789', 'Eligible');