
CREATE TABLE tbl_Primarysubstance(
	ID int NOT NULL Identity (1,1) Primary key,
	PrimarysubstanceType nvarchar(50) NOT NULL,
	inventory int NOT NULL,
	)

CREATE TABLE tbl_ManufacturedProduction(
	ID int NOT NULL Identity (1,1) Primary key,
	producttype nchar(20) NOT NULL,
	Numberofproduct nvarchar(50) NOT NULL,
	)

CREATE TABLE tbl_Supplyer(
	ID int NOT NULL identity (1,1) Primary key,
	Name nvarchar(50) NOT NULL,
	Lastname nvarchar(50) NOT NULL,
	Phonenumber nvarchar(50) NOT NULL,
	Address nvarchar(max) NOT NULL,
	)

CREATE TABLE tbl_consumer(
	ID int NOT NULL Identity (1,1) Primary key,
	UnitName nvarchar(50) NOT NULL,
	ProductName nvarchar(50) NOT NULL,
	ProductNum int NOT NULL,
	UnitPhoneNum int NULL,
	)

CREATE TABLE tbl_buyer(
	ID int NOT NULL Identity (1,1) Primary key,
	Name nvarchar(50) NULL ,
	Lastname nchar(10) NOT NULL,
	Phonenumber nvarchar(50) NOT NULL,
	Address nvarchar(max) NOT NULL,
	)

CREATE TABLE tbl_Contractor(
	ID int NOT NULL Identity (1,1) Primary key,
	Name nvarchar(50) NULL,
	Lastname nvarchar(50) NOT NULL,
	Phonenumber nvarchar(50) NOT NULL,
	Address nvarchar(max) NOT NULL,
	) 

CREATE TABLE tbl_Course(
	ID  int NOT NULL Identity (1,1) Primary key,
	CourseName nvarchar(50) NOT NULL,
	CourseHours smallint NULL,
	)

CREATE TABLE tbl_employee(
	ID int NOT NULL Identity (1,1) Primary key,
	Name nvarchar(30) NOT NULL,
	Lastname nchar(50) NOT NULL,
	Job nchar(20) NOT NULL,
	Address nvarchar(max) NOT NULL,
	PhoneNum nvarchar(20) NOT NULL,
	Education nvarchar(max) NOT NULL,
	Salary int NOT NULL,
	)

CREATE TABLE tbl_jobdep(
	ID int NOT NULL Identity (1,1) Primary key ,
	JobTitel nchar(50) NOT NULL,
	EmployeeNum int NULL,
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	PhoneNum nvarchar(20) NULL,
	)

CREATE TABLE tbl_accounting(
	ID int NOT NULL Identity (1,1) Primary key,
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	Contractor_id int NOT NULL Foreign key References tbl_Contractor(ID),
	Phonenumber nvarchar(50) NULL,
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
) 

CREATE TABLE tbl_warehouse(
	ID int NOT NULL identity (1,1) Primary key,
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	Primarysubstance_id int NOT NULL Foreign key References tbl_Primarysubstance(ID),
	ManufacturedProduction_id int NOT NULL Foreign key References tbl_ManufacturedProduction(ID),
	inventory nvarchar(50) NOT NULL,
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
	)


CREATE TABLE tbl_Consumption(
	ID int NOT NULL Identity (1,1) Primary key,
    warehouse_id int NOT NULL Foreign key References tbl_warehouse(ID),
	consumer_id int NOT NULL Foreign key References tbl_consumer(ID),
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	)



CREATE TABLE tbl_factor(
	ID int NOT NULL Identity (1,1) Primary key,
	buyer_id int NOT NULL Foreign key References tbl_buyer(ID),
	productInformation nvarchar(50) NOT NULL,
	)


CREATE TABLE tbl_Phurchse(
	ID int NOT NULL Identity (1,1) Primary key,
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	Supplyer_id int NOT NULL Foreign key References tbl_Supplyer(ID),
	Primarysubstance_id int NOT NULL Foreign key References tbl_Primarysubstance(ID),
	Phonenumber nvarchar(50) NULL,
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
	)

	
CREATE TABLE tbl_Production(
	ID int NOT NULL Identity (1,1) Primary key,
	Primarysubstance_id int NOT NULL Foreign key References tbl_Primarysubstance(ID),
	time date NOT NULL,
	ManufacturedProduction_id int NOT NULL Foreign key References tbl_ManufacturedProduction(ID),
	ProductionRate int NOT NULL,
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
	)

CREATE TABLE tbl_sales(
	ID int NOT NULL identity (1,1) Primary key,
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	factor_id int NOT NULL Foreign key References tbl_factor(ID),
	warehouse_id int NOT NULL Foreign key References tbl_warehouse(ID),
	buyer_id int NOT NULL Foreign key References tbl_buyer(ID),
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
	)

CREATE TABLE tbl_Training(
	ID int NOT NULL identity (1,1) Primary key,
	course_id int NOT NULL Foreign key References tbl_Course(ID),
	employee_id int NOT NULL Foreign key References tbl_employee(ID),
	jobdep_id int NOT NULL Foreign key References tbl_jobdep(ID),
	)

Insert Into tbl_Course(CourseName , CourseHours) Values ('course1' , 10);
Insert Into tbl_Course(CourseName , CourseHours) Values ('course2' , 53);
Insert Into tbl_Course(CourseName , CourseHours) Values ('course3' , 76);

Insert Into tbl_Primarysubstance(PrimarysubstanceType , inventory) Values ('Type1' , 10000);
Insert Into tbl_Primarysubstance(PrimarysubstanceType , inventory) Values ('Type2' , 32000);
Insert Into tbl_Primarysubstance(PrimarysubstanceType , inventory) Values ('Type3' , 2400);

Insert Into tbl_Supplyer(Name , Lastname, Phonenumber, Address) Values ('ALI' ,'MOHAMMADI',092354,'TEHRAN,SHARGH');
Insert Into tbl_Supplyer(Name , Lastname, Phonenumber, Address) Values ('ZAHRA' ,'MADDADY',0916394,'MASHHAD,VAKIL');
Insert Into tbl_Supplyer(Name , Lastname, Phonenumber, Address) Values ('MOBINA' ,'MOGHADAM',0912794,'TEHRAN,SHARGH');

Insert Into tbl_ManufacturedProduction(producttype , Numberofproduct) Values ('type1' , 1100);
Insert Into tbl_ManufacturedProduction(producttype , Numberofproduct) Values ('type2' , 3420);
Insert Into tbl_ManufacturedProduction(producttype , Numberofproduct) Values ('type3' , 1240);
Insert Into tbl_ManufacturedProduction(producttype , Numberofproduct) Values ('type4' , 1110);
Insert Into tbl_ManufacturedProduction(producttype , Numberofproduct) Values ('type5' , 100);
Insert Into tbl_ManufacturedProduction(producttype , Numberofproduct) Values ('type6' , 5488);

Insert Into tbl_consumer(UnitName , ProductName , ProductNum , UnitPhoneNum) Values ('UNIT1' , 'PRODUCT1',100,7763);
Insert Into tbl_consumer(UnitName , ProductName , ProductNum , UnitPhoneNum) Values ('UNIT2' , 'PRODUCT1',42,7764);
Insert Into tbl_consumer(UnitName , ProductName , ProductNum , UnitPhoneNum) Values ('UNIT1' , 'PRODUCT2',200,7763);
Insert Into tbl_consumer(UnitName , ProductName , ProductNum , UnitPhoneNum) Values ('UNIT3' , 'PRODUCT3',532,7765);
Insert Into tbl_consumer(UnitName , ProductName , ProductNum , UnitPhoneNum) Values ('UNIT3' , 'PRODUCT1',15,7765);
Insert Into tbl_consumer(UnitName , ProductName , ProductNum , UnitPhoneNum) Values ('UNIT1' , 'PRODUCT3',150,7763);

Insert Into tbl_buyer(Name , Lastname , Phonenumber ,Address) Values ('ALI' , 'MOHAMMADI',091254,'TEHRAN');
Insert Into tbl_buyer(Name , Lastname , Phonenumber ,Address) Values ('REZA' , 'MOHAMMADI',0912354,'TEHRAN');
Insert Into tbl_buyer(Name , Lastname , Phonenumber ,Address) Values ('SADEGH' , 'MOHAMMADI',092254,'TEHRAN');
Insert Into tbl_buyer(Name , Lastname , Phonenumber ,Address) Values ('ALI' , 'JAMALI',0902354,'TEHRAN');
Insert Into tbl_buyer(Name , Lastname , Phonenumber ,Address) Values ('MOHAMMAD' , 'MOHAMMADI',0913654,'TEHRAN');
Insert Into tbl_buyer(Name , Lastname , Phonenumber ,Address) Values ('NAME1' , 'MOHAMMADI',09117454,'TEHRAN');

Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME1' , 'LASTNAME1',09117454,'TEHRAN');
Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME2' , 'LASTNAME2',091237454,'TEHRAN');
Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME3' , 'LASTNAME3',0913657454,'TEHRAN');
Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME4' , 'LASTNAME4',091137454,'TEHRAN');
Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME5' , 'LASTNAME5',090257454,'TEHRAN');
Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME6' , 'LASTNAME6',09017454,'TEHRAN');
Insert Into tbl_Contractor(Name , Lastname , Phonenumber ,Address) Values ('NAME7' , 'LASTNAME7',09126554,'TEHRAN');

Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME1' , 'LASTNAME1',09123754,'TEHRAN','JOB1','BSC',12000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME2' , 'LASTNAME2',09126554,'TEHRAN','JOB2','BSC',12000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME3' , 'LASTNAME3',09187554,'TEHRAN','JOB3','PHD',32000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME4' , 'LASTNAME4',09138554,'TEHRAN','JOB4','BSC',17000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME5' , 'LASTNAME5',091287554,'TEHRAN','JOB5','BSC',12000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME6' , 'LASTNAME6',09105654,'TEHRAN','JOB6','PHD',32000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME7' , 'LASTNAME7',0919354,'TEHRAN','JOB7','BSC',12000000);
Insert Into tbl_employee(Name , Lastname , PhoneNum ,Address ,Job ,Education ,Salary) Values ('NAME8' , 'LASTNAME8',09125554,'TEHRAN','JOB8','BSC',15000000);

Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel1' , 3352, 4, 1);
Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel12' , 33577, 14, 1);
Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel3' , 33215, 21, 1);
Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel4' , 33642, 2, 2);
Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel5' , 3326, 15, 3);
Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel6' , 33131, 12, 3);
Insert Into tbl_jobdep(JobTitel ,PhoneNum ,EmployeeNum ,employee_id) Values ('JobTitel7' , 3376, 5, 3);

Insert Into tbl_accounting(employee_id ,jobdep_id ,Contractor_id ,Phonenumber) Values (1 , 1, 1, 3324);
Insert Into tbl_accounting(employee_id ,jobdep_id ,Contractor_id ,Phonenumber) Values (2 , 1, 2, 3324);
Insert Into tbl_accounting(employee_id ,jobdep_id ,Contractor_id ,Phonenumber) Values (3 , 1, 3, 3324);
Insert Into tbl_accounting(employee_id ,jobdep_id ,Contractor_id ,Phonenumber) Values (4 , 1, 4, 3324);
Insert Into tbl_accounting(employee_id ,jobdep_id ,Contractor_id ,Phonenumber) Values (5 , 1, 5, 3324);

Insert Into tbl_warehouse(employee_id ,jobdep_id ,Primarysubstance_id ,ManufacturedProduction_id,inventory) Values (1 , 2, 1, 1,100);
Insert Into tbl_warehouse(employee_id ,jobdep_id ,Primarysubstance_id ,ManufacturedProduction_id,inventory) Values (2 , 2, 1, 1,3266);
Insert Into tbl_warehouse(employee_id ,jobdep_id ,Primarysubstance_id ,ManufacturedProduction_id,inventory) Values (3 , 2, 2, 1,3798);
Insert Into tbl_warehouse(employee_id ,jobdep_id ,Primarysubstance_id ,ManufacturedProduction_id,inventory) Values (4 , 2, 3, 1,2342);
Insert Into tbl_warehouse(employee_id ,jobdep_id ,Primarysubstance_id ,ManufacturedProduction_id,inventory) Values (5 , 2, 1, 2,124);

Insert Into tbl_Consumption(employee_id ,jobdep_id ,consumer_id ,warehouse_id) Values (1 , 3, 1, 1);
Insert Into tbl_Consumption(employee_id ,jobdep_id ,consumer_id ,warehouse_id) Values (2 , 3, 1, 1);
Insert Into tbl_Consumption(employee_id ,jobdep_id ,consumer_id ,warehouse_id) Values (3 , 3, 1, 1);
Insert Into tbl_Consumption(employee_id ,jobdep_id ,consumer_id ,warehouse_id) Values (4 , 3, 1, 1);
Insert Into tbl_Consumption(employee_id ,jobdep_id ,consumer_id ,warehouse_id) Values (5 , 3, 1, 1);

Insert Into tbl_factor(buyer_id ,productInformation ) Values (1 ,'productInformation1');
Insert Into tbl_factor(buyer_id ,productInformation ) Values (1 ,'productInformation2');
Insert Into tbl_factor(buyer_id ,productInformation ) Values (1 ,'productInformation3');
Insert Into tbl_factor(buyer_id ,productInformation ) Values (2 ,'productInformation4');
Insert Into tbl_factor(buyer_id ,productInformation ) Values (2 ,'productInformation5');
Insert Into tbl_factor(buyer_id ,productInformation ) Values (3 ,'productInformation6');

Insert Into tbl_Phurchse(employee_id ,jobdep_id,Primarysubstance_id,Supplyer_id,Phonenumber ) Values (1 ,4,1,1,0912);
Insert Into tbl_Phurchse(employee_id ,jobdep_id,Primarysubstance_id,Supplyer_id,Phonenumber ) Values (2 ,4,3,1,09135);
Insert Into tbl_Phurchse(employee_id ,jobdep_id,Primarysubstance_id,Supplyer_id,Phonenumber ) Values (3 ,4,2,1,092264);
Insert Into tbl_Phurchse(employee_id ,jobdep_id,Primarysubstance_id,Supplyer_id,Phonenumber ) Values (4 ,4,1,3,0924656);
Insert Into tbl_Phurchse(employee_id ,jobdep_id,Primarysubstance_id,Supplyer_id,Phonenumber ) Values (5 ,4,1,2,0912465);

Insert Into tbl_Production(employee_id ,jobdep_id,Primarysubstance_id,ManufacturedProduction_id,ProductionRate,time ) Values (5 ,5,1,2,1000, '2011-12-1');
Insert Into tbl_Production(employee_id ,jobdep_id,Primarysubstance_id,ManufacturedProduction_id,ProductionRate,time ) Values (1 ,5,2,3,2300,'2011-11-2');
Insert Into tbl_Production(employee_id ,jobdep_id,Primarysubstance_id,ManufacturedProduction_id,ProductionRate,time ) Values (2 ,5,4,2,35600,'2011-10-1');
Insert Into tbl_Production(employee_id ,jobdep_id,Primarysubstance_id,ManufacturedProduction_id,ProductionRate,time ) Values (3 ,5,3,2,1300,'2011-09-1');
Insert Into tbl_Production(employee_id ,jobdep_id,Primarysubstance_id,ManufacturedProduction_id,ProductionRate,time ) Values (1 ,5,2,2,2200,'2011-08-1');
Insert Into tbl_Production(employee_id ,jobdep_id,Primarysubstance_id,ManufacturedProduction_id,ProductionRate,time ) Values (2 ,5,1,4,15600,'2011-07-1');

Insert Into tbl_sales(employee_id ,jobdep_id,buyer_id,warehouse_id,factor_id) Values (1 ,6,1,1,1);
Insert Into tbl_sales(employee_id ,jobdep_id,buyer_id,warehouse_id,factor_id) Values (2 ,6,1,1,2);
Insert Into tbl_sales(employee_id ,jobdep_id,buyer_id,warehouse_id,factor_id) Values (3 ,6,1,1,3);
Insert Into tbl_sales(employee_id ,jobdep_id,buyer_id,warehouse_id,factor_id) Values (4 ,6,2,2,4);
Insert Into tbl_sales(employee_id ,jobdep_id,buyer_id,warehouse_id,factor_id) Values (5 ,6,2,3,5);
Insert Into tbl_sales(employee_id ,jobdep_id,buyer_id,warehouse_id,factor_id) Values (6 ,6,3,2,6);

Insert Into tbl_Training(employee_id ,jobdep_id,course_id) Values (1 ,7,3);
Insert Into tbl_Training(employee_id ,jobdep_id,course_id) Values (2 ,7,1);
Insert Into tbl_Training(employee_id ,jobdep_id,course_id) Values (3 ,7,2);

Select *
From tbl_Course;

Select *
From tbl_Primarysubstance;

Select *
From tbl_Supplyer;

Select *
From tbl_ManufacturedProduction;

Select *
From tbl_consumer;

Select *
From tbl_buyer;

Select *
From tbl_Contractor;

Select *
From tbl_employee;

Select *
From tbl_jobdep;

Select *
From tbl_accounting;

Select *
From tbl_warehouse;

Select *
From tbl_Consumption;

Select *
From tbl_factor;

Select *
From tbl_Phurchse;

Select *
From tbl_Production;

Select *
From tbl_sales;

Select *
From tbl_Training;
