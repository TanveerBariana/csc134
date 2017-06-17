CREATE TABLE DOCTOR ( dssn CHAR(9) NOT NULL, dname VARCHAR(20) NOT NULL, specialty VARCHAR(3) NOT NULL, UNIQUE (dname), PRIMARY KEY (dssn));
CREATE TABLE PRESCRIPTION( dssn CHAR(9), pre_no INTEGER, pdate DATE, FOREIGN KEY (dssn) REFERENCES DOCTOR(dssn), PRIMARY KEY (dssn, pre_no));
CREATE TABLE PH_COMPANY(pname VARCHAR(10), phone CHAR(10), PRIMARY KEY(pname), UNIQUE (PNAME));
CREATE TABLE DRUG  (pname VARCHAR(10) NOT NULL, trade_name VARCHAR(10) NOT NULL, formula  VARCHAR(10), FOREIGN KEY (pname) REFERENCES PH_COMPANY(pname), PRIMARY KEY (pname, trade_name) );
CREATE TABLE CONSIST_OF( dssn CHAR(9) NOT NULL, pre_no INTEGER NOT NULL, pname VARCHAR(10) NOT NULL,  trade_name VARCHAR(10) NOT NULL, FOREIGN KEY(dssn, pre_no) REFERENCES PRESCRIPTION(dssn, pre_no), FOREIGN KEY(pname, trade_name) REFERENCES DRUG(pname, trade_name), PRIMARY KEY(dssn, pre_no, pname, trade_name) );
CREATE TABLE PHARMACY(name VARCHAR(10) NOT NULL, address VARCHAR(10),phone VARCHAR(9),PRIMARY KEY (name));
CREATE TABLE SELL( pharmacy_name VARCHAR(10),  pname VARCHAR(10), trade_name VARCHAR (10), price INTEGER, FOREIGN KEY(pname, trade_name) REFERENCES DRUG(pname, trade_name), FOREIGN KEY(pharmacy_name) REFERENCES PHARMACY(name), PRIMARY KEY (pharmacy_name, pname, trade_name) );
	