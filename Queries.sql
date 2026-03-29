SELECT a.appointment_id, a.appointment_date, a.appointment_time, a.patient_number 
FROM appointment a 
JOIN treatment_plan t ON a.treatment_id = t.treatment_id 
JOIN appointment_service aps ON a.appointment_id = aps.appointment_id 
JOIN service s ON aps.service_id = s.service_id 
WHERE LOWER(s.name) LIKE '%home%' 
  AND a.appointment_date BETWEEN TO_DATE('2024-01-01', 'YYYY-MM-DD')  
                            AND TO_DATE('2024-12-31', 'YYYY-MM-DD') 
  AND a.patient_number IN ( 
    SELECT patient_number 
    FROM patient_emergency 
    GROUP BY patient_number 
    HAVING COUNT(*) > 1 
);

SELECT p.file_number, p.first_name, p.last_name 
FROM patient p 
WHERE ( 
SELECT COUNT(DISTINCT ma.medication_id) 
FROM appointment a 
JOIN medication_appointment ma ON a.appointment_id = ma.appointment_id 
WHERE a.patient_number = p.file_number 
) > 3;

SELECT DISTINCT  
e.first_name || ' ' || e.last_name AS full_name, 
b.total_cost AS bill_amount 
FROM appointment a 
JOIN appointment_bill ab ON a.appointment_id = ab.appointment_id 
JOIN bill b ON ab.bill_id = b.bill_id
JOIN employee e ON e.employee_number IN (a.DEmployee_number, 
a.NEmployee_number) 
WHERE b.total_cost > 7000 
AND a.appointment_date >= ADD_MONTHS(SYSDATE, -4);

SELECT DISTINCT p.file_number, p.first_name, p.last_name 
FROM patient p 
JOIN appointment a ON p.file_number = a.patient_number 
JOIN treatment_plan t ON a.treatment_id = t.treatment_id 
WHERE t.duration > ( 
SELECT AVG(t2.duration) 
FROM treatment_plan t2 
WHERE t2.dcode = t.dcode 
);

SELECT patient_number 
FROM ( 
SELECT a.patient_number, COUNT(DISTINCT a.DEmployee_number) AS 
unique_doctors 
FROM appointment a 
JOIN medication_appointment ma ON a.appointment_id = ma.appointment_id 
GROUP BY a.patient_number 
) 
WHERE unique_doctors > 1;