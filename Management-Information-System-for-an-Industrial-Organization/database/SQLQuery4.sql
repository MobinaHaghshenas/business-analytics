--DML

--insert
INSERT INTO Product(ProductName) VALUES ('product1');
INSERT INTO Product(ProductName) VALUES ('product2');
INSERT INTO Product(ProductName) VALUES ('product3');


INSERT INTO PrimarySubstance(Name ,DailyAmount , MonthlyAmount ) VALUES ('substance1' , 2000 , 40000);
INSERT INTO PrimarySubstance(Name ,DailyAmount , MonthlyAmount ) VALUES ('substance2' , 1000 , 10000);
INSERT INTO PrimarySubstance(Name ,DailyAmount , MonthlyAmount ) VALUES ('substance3' , 500 , 2000);
INSERT INTO PrimarySubstance(Name ,DailyAmount , MonthlyAmount ) VALUES ('substance4' , 200 , 4000);

INSERT INTO Production (ProductID,PrimarySubstanceID ,date ,amount ) VALUES (1 , 1 ,'2008-11-12' ,200);
INSERT INTO Production (ProductID,PrimarySubstanceID ,date ,amount ) VALUES (1 , 2 ,'2008-11-11' ,200);
INSERT INTO Production (ProductID,PrimarySubstanceID ,date ,amount ) VALUES (1 , 3 ,'2008-11-09',200);




--update
UPDATE Production SET date ='2008-11-01' WHERE PrimarySubstanceID = 2;




--delete
DELETE FROM Product WHERE ProductID=3;



--select
SELECT * 
FROM Product;

SELECT * 
FROM Production;

SELECT * 
FROM PrimarySubstance;

SELECT * 
FROM PrimarySubstance 
WHERE DailyAmount <400

SELECT * 
FROM PrimarySubstance INNER JOIN Production ON(PrimarySubstance.PrimarySubstanceID =Production.PrimarySubstanceID )

SELECT Name , DailyAmount , ProductName , date 
FROM PrimarySubstance INNER JOIN Production ON(PrimarySubstance.PrimarySubstanceID =Production.PrimarySubstanceID )
INNER JOIN Product ON(Product.ProductID =Production.ProductID )

--Aggregate Functions 
--sum - max - min - ave , ...
SELECT
    MAX(DailyAmount) myAverage
FROM
    PrimarySubstance;



