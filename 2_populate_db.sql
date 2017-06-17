//change this shit
INSERT INTO PH_COMPANY (pname, phone)
VALUES ("BUM", 9116661984);
INSERT INTO DRUG (pname, trade_name, formula)
VALUES ('Pfizer','HERP','DERP');
INSERT INTO DRUG (pname, trade_name, formula) VALUES ('Pfizer', 'tylenol', 'TYNL');
INSERT INTO DOCTOR(dssn, speciality) VALUES ('123456789', 'Toe');
INSERT INTO PRESCRIPTION(dssn, pre_no, pdate) VALUES ('123456789',1, '2015-03-12');
INSERT INTO PH_COMPANY(pname, phone) VALUES ('Pfizer', '9112004');
INSERT INTO CONSIST_OF(dssn , pre_no, pname, trade_name) VALUES ('123456789', 1,'Pfizer',  'tylenol');
INSERT INTO CONSIST_OF(dssn , pre_no, pname, trade_name) VALUES ('123456789', 1,'Pfizer',  'HERP');
INSERT INTO PHARMACY(name, address, phone) VALUES ('CVS', 'Grove ST.', 'fllwDTrnCJ');
INSERT INTO SELL(pharmacy_name, pname, trade_name, price) VALUES ('CVS','Pfizer', 'HERP' , 15);
 INSERT INTO SELL(pharmacy_name, pname, trade_name, price) VALUES ('CVS','Pfizer', 'tylenol' , 134);