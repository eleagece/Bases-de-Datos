LOAD DATA
INFILE 'C�digos postales.txt'
APPEND
INTO TABLE "C�digos postales"
FIELDS TERMINATED BY ';'
("C�digo postal",Poblaci�n,Provincia)