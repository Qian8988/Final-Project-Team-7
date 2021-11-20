--- Login to pgadmin
--- Right click on PostGres SQL and create new data base

--drop table red_wine ;

-- 1.  Create table with the outcome (quality) and 11 features for red wine
CREATE TABLE red_wine (
     fixed_acidity float ,
	     volatile_acidity float ,
	     citric_acid float ,
	     residual_sugar float ,
	     chlorides float ,
	     free_sulfur_dioxide float ,
	     total_sulfur_dioxide float ,
	     density float ,
	     sulphates float ,
		 alcohol float ,
		 pH float ,
		 quality float
);

-- 2.  Import csv file (winequality-red.csv)

select * from red_wine ;

-- 3.  Add ID column and color column = 'red'
ALTER TABLE red_wine ADD COLUMN ID SERIAL PRIMARY KEY;
ALTER TABLE red_wine ADD color varchar(5) DEFAULT 'red' ;

--drop table white_wine ; 

-- 4.  Create table with the outcome (quality) and 11 features for red wine
CREATE TABLE white_wine (
     fixed_acidity float ,
	     volatile_acidity float ,
	     citric_acid float ,
	     residual_sugar float ,
	     chlorides float ,
	     free_sulfur_dioxide float ,
	     total_sulfur_dioxide float ,
	     density float ,
	     sulphates float ,
		 alcohol float ,
		 pH float ,
		 quality float
);

-- 5.  Import csv file (winequality-white.csv)

select * from white_wine ;

-- 6.  Add ID column and color column = 'white'
ALTER TABLE white_wine ADD COLUMN ID SERIAL PRIMARY KEY;
ALTER TABLE white_wine ADD color varchar(5) DEFAULT 'white' ;

-- 7.  Update white wine ID so when the tables are merged together the ID's are unique
UPDATE white_wine SET ID = ID+20000 ;

-- 8.  Create new tables to bring in all wine data
CREATE TABLE all_wines AS (SELECT * FROM red_wine);
INSERT INTO all_wines SELECT * FROM white_wine;

-- 9.  Export from pgADmin into csv file (all_wines.csv)

