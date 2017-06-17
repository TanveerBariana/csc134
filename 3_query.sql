SELECT trade_name, formula FROM  DRUG where pname= 'Pfizer' ;

SELECT pname, trade_name, formula 
from CONSIST_OF co 
inner JOIN PRESCRIPTION p 
ON co.dssn= p.dssn, co.pre_no = p.pre_no
inner JOIN DRUG d 
on co.trade_name= d.trade_name, co.pname = d.pname 
where EXISTS(select pre_no from PRESCRIPTION);

select trade_name, pname, pdate
from CONSIST_OF co 
inner JOIN PRESCRIPTION p 
ON co.dssn= p.dssn, co.pre_no = p.pre_no
inner JOIN DRUG d 
on co.trade_name= d.trade_name, co.pname = d.pname
inner join DOCTOR d
on d.dssn= p.dssn
where dname= 'Elle Elmasri'

select trade_name, formula
from SELL s
inner join DRUG d
on s.trade_name = d.trade_name
inner join CONSIST_OF co 
on co.pname= s.pname
inner join PHARMACY p
on p.name = s.pharmacy_name
where p.name = 'CVS'