--drop table red_wine ;

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

select * from red_wine ;

ALTER TABLE red_wine ADD COLUMN ID SERIAL PRIMARY KEY;
ALTER TABLE red_wine ADD color varchar(5) DEFAULT 'red' ;

--drop table white_wine ; 

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

select * from white_wine ;

ALTER TABLE white_wine ADD COLUMN ID SERIAL PRIMARY KEY;
ALTER TABLE white_wine ADD color varchar(5) DEFAULT 'white' ;

UPDATE white_wine SET ID = ID+20000 ;

CREATE TABLE all_wines AS (SELECT * FROM red_wine);
INSERT INTO all_wines SELECT * FROM white_wine;


INSERT INTO red_wine SELECT * FROM white_wine ;
