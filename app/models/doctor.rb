class Doctor < ApplicationRecord


# 	select 
#   bills.id as bill_id, 
#   doctor_name,
#   patient_name,
#   (case 
#     when doctor_name like 'D%' then (bills.total_price - bills.medicine_fee) + round((50.0/100) * (bills.total_price - bills.medicine_fee) )
#     else bills.total_price - bills.medicine_fee
#     end) as consultation_fee,
#    medicine_fee,
#   (case 
#     when doctor_name like 'D%' then ((bills.total_price - bills.medicine_fee) + round((50.0/100) * (bills.total_price - bills.medicine_fee) )) + bills.medicine_fee
#     else (bills.total_price - bills.medicine_fee) + bills.medicine_fee
#     end) as total_price
# from doctors
# INNER JOIN patient_doctors
# ON doctors.id = patient_doctors.doctor_id
# INNER JOIN patients
# ON patients.id = patient_doctors.patient_id
# INNER JOIN bills
# ON bills.patent_id = patients.id
# order by bills.id;
end
