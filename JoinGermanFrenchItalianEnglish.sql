-------
-- Combine the German, French, Italian and English translations into one table
-------

SET SQL_SAFE_UPDATES = 0;

-- Clean german values

DROP TABLE IF EXISTS German;
CREATE TABLE German(
	SELECT A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr 
    FROM meinpledari);

UPDATE German 
SET A1 = '' 
WHERE 	A1 = '-----' OR 
		A1 = '..' OR 
		A1 = '' OR 
		A1 = '.' OR 
		A1 = '\'-----' OR 
		A1  LIKE '* Guardar las remartgas.%' OR
		A1 = '___' OR 
        A1 = '----' OR
        A1 = '------';

UPDATE German 
SET A2 = '' 
WHERE 	A2 = '-----' OR 
		A2 = '..' OR 
		A2 = '' OR 
		A2 = '.' OR 
		A2 = '\'-----' OR 
		A2  LIKE '* Guardar las remartgas.%' OR
		A2 = '___' OR 
        A2 = '----' OR
        A2 = '------';

UPDATE German 
SET B0 = '' 
WHERE 	B0 = '-----' OR 
		B0 = '..' OR 
		B0 = '' OR 
		B0 = '.' OR 
		B0 = '\'-----' OR 
		B0  LIKE '* Guardar las remartgas.%' OR
		B0 = '___' OR 
        B0 = '----' OR
        B0 = '------';

UPDATE German 
SET B1 = '' 
WHERE 	B1 = '-----' OR 
		B1 = '..' OR 
		B1 = '' OR 
		B1 = '.' OR 
		B1 = '\'-----' OR 
		B1  LIKE '* Guardar las remartgas.%' OR
		B1 = '___' OR 
        B1 = '----' OR
        B1 = '------';
        
UPDATE German 
SET B2 = '' 
WHERE 	B2 = '-----' OR 
		B2 = '..' OR 
		B2 = '' OR 
		B2 = '.' OR 
		B2 = '\'-----' OR 
		B2  LIKE '* Guardar las remartgas.%' OR
		B2 = '___' OR 
        B2 = '----' OR
        B2 = '------';

UPDATE German 
SET D1 = '' 
WHERE 	D1 = '-----' OR 
		D1 = '..' OR 
		D1 = '' OR 
		D1 = '.' OR 
		D1 = '\'-----' OR 
		D1  LIKE '* Guardar las remartgas.%' OR
		D1 = '___' OR 
        D1 = '----' OR
        D1 = '------';

UPDATE German 
SET D2 = '' 
WHERE 	D2 = '-----' OR 
		D2 = '..' OR 
        D2 = '' OR 
        D2 = '.' OR 
        D2 = '\'-----' OR 
        D2  LIKE '* Guardar las remartgas.%' OR
		D2 = '___' OR 
        D2 = '----' OR
        D2 = '------';

UPDATE German 
SET E1 = '' 
WHERE 	E1 = '-----' OR 
		E1 = '..' OR 
        E1 = '' OR 
        E1 = '.' OR 
        E1 = '\'-----' OR 
        E1  LIKE '* Guardar las remartgas.%' OR
		E1 = '___' OR 
        E1 = '----' OR
        E1 = '------';
        
UPDATE German 
SET E2 = '' 
WHERE 	E2 = '-----' OR 
		E2 = '..' OR 
        E2 = '' OR 
        E2 = '.' OR 
        E2 = '\'-----' OR 
        E2  LIKE '* Guardar las remartgas.%' OR
		E2 = '___' OR 
        E2 = '----' OR
        E2 = '------';

UPDATE German 
SET F1 = '' 
WHERE 	F1 = '-----' OR 
		F1 = '..' OR 
        F1 = '' OR 
        F1 = '.' OR 
        F1 = '\'-----' OR 
        F1  LIKE '* Guardar las remartgas.%'  OR
		F1 = '___' OR 
        F1 = '----' OR
        F1 = '------';
        
UPDATE German 
SET F2 = '' 
WHERE 	F2 = '-----' OR 
		F2 = '..' OR 
        F2 = '' OR 
        F2 = '.' OR 
        F2 = '\'-----' OR 
        F2  LIKE '* Guardar las remartgas.%' OR
		F2 = '___' OR 
        F2 = '----' OR
        F2 = '------';

UPDATE German 
SET G1 = '' 
WHERE 	G1 = '-----' OR 
		G1 = '..' OR 
        G1 = '' OR 
        G1 = '.' OR 
		G1 = '\'-----' OR 
        G1  LIKE '* Guardar las remartgas.%' OR
		G1 = '___' OR 
        G1 = '----' OR
        G1 = '------';
        
UPDATE German 
SET G2 = '' 
WHERE 	G2 = '-----' OR 
		G2 = '..' OR 
        G2 = '' OR 
        G2 = '.' OR 
		G2 = '\'-----' OR 
        G2  LIKE '* Guardar las remartgas.%' OR
		G2 = '___' OR 
        G2 = '----' OR
        G2 = '------';

UPDATE German 
SET H1 = '' 
WHERE 	H1 = '-----' OR 
		H1 = '..' OR 
        H1 = '' OR 
        H1 = '.' OR 
        H1 = '\'-----' OR 
        H1  LIKE '* Guardar las remartgas.%' OR
		H1 = '___' OR 
        H1 = '----' OR
        H1 = '------';

UPDATE German 
SET H2 = '' 
WHERE 	H2 = '-----' OR 
		H2 = '..' OR 
        H2 = '' OR 
        H2 = '.' OR 
        H2 = '\'-----' OR 
        H2  LIKE '* Guardar las remartgas.%' OR
		H2 = '___' OR 
        H2 = '----' OR
        H2 = '------';


-- Clean french values

DROP TABLE IF EXISTS French;
CREATE TABLE French(
	SELECT A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr 
    FROM monpledari);

UPDATE French 
SET A1 = '' 
WHERE 	A1 = '-----' OR 
		A1 = '..' OR 
		A1 = '' OR 
		A1 = '.' OR 
		A1 = '\'-----' OR 
		A1  LIKE '* Guardar las remartgas.%' OR
		A1 = '___' OR 
        A1 = '----' OR
        A1 = '------';

UPDATE French 
SET A2 = '' 
WHERE 	A2 = '-----' OR 
		A2 = '..' OR 
		A2 = '' OR 
		A2 = '.' OR 
		A2 = '\'-----' OR 
		A2  LIKE '* Guardar las remartgas.%' OR
		A2 = '___' OR 
        A2 = '----' OR
        A2 = '------';

UPDATE French 
SET B0 = '' 
WHERE 	B0 = '-----' OR 
		B0 = '..' OR 
		B0 = '' OR 
		B0 = '.' OR 
		B0 = '\'-----' OR 
		B0  LIKE '* Guardar las remartgas.%' OR
		B0 = '___' OR 
        B0 = '----' OR
        B0 = '------';

UPDATE French 
SET B1 = '' 
WHERE 	B1 = '-----' OR 
		B1 = '..' OR 
		B1 = '' OR 
		B1 = '.' OR 
		B1 = '\'-----' OR 
		B1  LIKE '* Guardar las remartgas.%' OR
		B1 = '___' OR 
        B1 = '----' OR
        B1 = '------';
        
UPDATE French 
SET B2 = '' 
WHERE 	B2 = '-----' OR 
		B2 = '..' OR 
		B2 = '' OR 
		B2 = '.' OR 
		B2 = '\'-----' OR 
		B2  LIKE '* Guardar las remartgas.%' OR
		B2 = '___' OR 
        B2 = '----' OR
        B2 = '------';

UPDATE French 
SET D1 = '' 
WHERE 	D1 = '-----' OR 
		D1 = '..' OR 
		D1 = '' OR 
		D1 = '.' OR 
		D1 = '\'-----' OR 
		D1  LIKE '* Guardar las remartgas.%' OR
		D1 = '___' OR 
        D1 = '----' OR
        D1 = '------';

UPDATE French 
SET D2 = '' 
WHERE 	D2 = '-----' OR 
		D2 = '..' OR 
        D2 = '' OR 
        D2 = '.' OR 
        D2 = '\'-----' OR 
        D2  LIKE '* Guardar las remartgas.%' OR
		D2 = '___' OR 
        D2 = '----' OR
        D2 = '------';

UPDATE French 
SET E1 = '' 
WHERE 	E1 = '-----' OR 
		E1 = '..' OR 
        E1 = '' OR 
        E1 = '.' OR 
        E1 = '\'-----' OR 
        E1  LIKE '* Guardar las remartgas.%' OR
		E1 = '___' OR 
        E1 = '----' OR
        E1 = '------';
        
UPDATE French 
SET E2 = '' 
WHERE 	E2 = '-----' OR 
		E2 = '..' OR 
        E2 = '' OR 
        E2 = '.' OR 
        E2 = '\'-----' OR 
        E2  LIKE '* Guardar las remartgas.%' OR
		E2 = '___' OR 
        E2 = '----' OR
        E2 = '------';

UPDATE French 
SET F1 = '' 
WHERE 	F1 = '-----' OR 
		F1 = '..' OR 
        F1 = '' OR 
        F1 = '.' OR 
        F1 = '\'-----' OR 
        F1  LIKE '* Guardar las remartgas.%'  OR
		F1 = '___' OR 
        F1 = '----' OR
        F1 = '------';
        
UPDATE French 
SET F2 = '' 
WHERE 	F2 = '-----' OR 
		F2 = '..' OR 
        F2 = '' OR 
        F2 = '.' OR 
        F2 = '\'-----' OR 
        F2  LIKE '* Guardar las remartgas.%' OR
		F2 = '___' OR 
        F2 = '----' OR
        F2 = '------';

UPDATE French 
SET G1 = '' 
WHERE 	G1 = '-----' OR 
		G1 = '..' OR 
        G1 = '' OR 
        G1 = '.' OR 
		G1 = '\'-----' OR 
        G1  LIKE '* Guardar las remartgas.%' OR
		G1 = '___' OR 
        G1 = '----' OR
        G1 = '------';
        
UPDATE French 
SET G2 = '' 
WHERE 	G2 = '-----' OR 
		G2 = '..' OR 
        G2 = '' OR 
        G2 = '.' OR 
		G2 = '\'-----' OR 
        G2  LIKE '* Guardar las remartgas.%' OR
		G2 = '___' OR 
        G2 = '----' OR
        G2 = '------';

UPDATE French 
SET H1 = '' 
WHERE 	H1 = '-----' OR 
		H1 = '..' OR 
        H1 = '' OR 
        H1 = '.' OR 
        H1 = '\'-----' OR 
        H1  LIKE '* Guardar las remartgas.%' OR
		H1 = '___' OR 
        H1 = '----' OR
        H1 = '------';

UPDATE French 
SET H2 = '' 
WHERE 	H2 = '-----' OR 
		H2 = '..' OR 
        H2 = '' OR 
        H2 = '.' OR 
        H2 = '\'-----' OR 
        H2  LIKE '* Guardar las remartgas.%' OR
		H2 = '___' OR 
        H2 = '----' OR
        H2 = '------';
  
  
-- Clean italian values

DROP TABLE IF EXISTS Italian;
CREATE TABLE Italian(
	SELECT A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr 
    FROM miopledari);

UPDATE Italian 
SET A1 = '' 
WHERE 	A1 = '-----' OR 
		A1 = '..' OR 
		A1 = '' OR 
		A1 = '.' OR 
		A1 = '\'-----' OR 
		A1  LIKE '* Guardar las remartgas.%' OR
		A1 = '___' OR 
        A1 = '----' OR
        A1 = '------';

UPDATE Italian 
SET A2 = '' 
WHERE 	A2 = '-----' OR 
		A2 = '..' OR 
		A2 = '' OR 
		A2 = '.' OR 
		A2 = '\'-----' OR 
		A2  LIKE '* Guardar las remartgas.%' OR
		A2 = '___' OR 
        A2 = '----' OR
        A2 = '------';

UPDATE Italian 
SET B0 = '' 
WHERE 	B0 = '-----' OR 
		B0 = '..' OR 
		B0 = '' OR 
		B0 = '.' OR 
		B0 = '\'-----' OR 
		B0  LIKE '* Guardar las remartgas.%' OR
		B0 = '___' OR 
        B0 = '----' OR
        B0 = '------';

UPDATE Italian 
SET B1 = '' 
WHERE 	B1 = '-----' OR 
		B1 = '..' OR 
		B1 = '' OR 
		B1 = '.' OR 
		B1 = '\'-----' OR 
		B1  LIKE '* Guardar las remartgas.%' OR
		B1 = '___' OR 
        B1 = '----' OR
        B1 = '------';
        
UPDATE Italian 
SET B2 = '' 
WHERE 	B2 = '-----' OR 
		B2 = '..' OR 
		B2 = '' OR 
		B2 = '.' OR 
		B2 = '\'-----' OR 
		B2  LIKE '* Guardar las remartgas.%' OR
		B2 = '___' OR 
        B2 = '----' OR
        B2 = '------';

UPDATE Italian 
SET D1 = '' 
WHERE 	D1 = '-----' OR 
		D1 = '..' OR 
		D1 = '' OR 
		D1 = '.' OR 
		D1 = '\'-----' OR 
		D1  LIKE '* Guardar las remartgas.%' OR
		D1 = '___' OR 
        D1 = '----' OR
        D1 = '------';

UPDATE Italian 
SET D2 = '' 
WHERE 	D2 = '-----' OR 
		D2 = '..' OR 
        D2 = '' OR 
        D2 = '.' OR 
        D2 = '\'-----' OR 
        D2  LIKE '* Guardar las remartgas.%' OR
		D2 = '___' OR 
        D2 = '----' OR
        D2 = '------';

UPDATE Italian 
SET E1 = '' 
WHERE 	E1 = '-----' OR 
		E1 = '..' OR 
        E1 = '' OR 
        E1 = '.' OR 
        E1 = '\'-----' OR 
        E1  LIKE '* Guardar las remartgas.%' OR
		E1 = '___' OR 
        E1 = '----' OR
        E1 = '------';
        
UPDATE Italian 
SET E2 = '' 
WHERE 	E2 = '-----' OR 
		E2 = '..' OR 
        E2 = '' OR 
        E2 = '.' OR 
        E2 = '\'-----' OR 
        E2  LIKE '* Guardar las remartgas.%' OR
		E2 = '___' OR 
        E2 = '----' OR
        E2 = '------';

UPDATE Italian 
SET F1 = '' 
WHERE 	F1 = '-----' OR 
		F1 = '..' OR 
        F1 = '' OR 
        F1 = '.' OR 
        F1 = '\'-----' OR 
        F1  LIKE '* Guardar las remartgas.%'  OR
		F1 = '___' OR 
        F1 = '----' OR
        F1 = '------';
        
UPDATE Italian 
SET F2 = '' 
WHERE 	F2 = '-----' OR 
		F2 = '..' OR 
        F2 = '' OR 
        F2 = '.' OR 
        F2 = '\'-----' OR 
        F2  LIKE '* Guardar las remartgas.%' OR
		F2 = '___' OR 
        F2 = '----' OR
        F2 = '------';

UPDATE Italian 
SET G1 = '' 
WHERE 	G1 = '-----' OR 
		G1 = '..' OR 
        G1 = '' OR 
        G1 = '.' OR 
		G1 = '\'-----' OR 
        G1  LIKE '* Guardar las remartgas.%' OR
		G1 = '___' OR 
        G1 = '----' OR
        G1 = '------';
        
UPDATE Italian 
SET G2 = '' 
WHERE 	G2 = '-----' OR 
		G2 = '..' OR 
        G2 = '' OR 
        G2 = '.' OR 
		G2 = '\'-----' OR 
        G2  LIKE '* Guardar las remartgas.%' OR
		G2 = '___' OR 
        G2 = '----' OR
        G2 = '------';

UPDATE Italian 
SET H1 = '' 
WHERE 	H1 = '-----' OR 
		H1 = '..' OR 
        H1 = '' OR 
        H1 = '.' OR 
        H1 = '\'-----' OR 
        H1  LIKE '* Guardar las remartgas.%' OR
		H1 = '___' OR 
        H1 = '----' OR
        H1 = '------';

UPDATE Italian 
SET H2 = '' 
WHERE 	H2 = '-----' OR 
		H2 = '..' OR 
        H2 = '' OR 
        H2 = '.' OR 
        H2 = '\'-----' OR 
        H2  LIKE '* Guardar las remartgas.%' OR
		H2 = '___' OR 
        H2 = '----' OR
        H2 = '------';


-- Clean english values

DROP TABLE IF EXISTS English;
CREATE TABLE English(
	SELECT A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr 
    FROM mypledari);

UPDATE English 
SET A1 = '' 
WHERE 	A1 = '-----' OR 
		A1 = '..' OR 
		A1 = '' OR 
		A1 = '.' OR 
		A1 = '\'-----' OR 
		A1  LIKE '* Guardar las remartgas.%' OR
		A1 = '___' OR 
        A1 = '----' OR
        A1 = '------';

UPDATE English 
SET A2 = '' 
WHERE 	A2 = '-----' OR 
		A2 = '..' OR 
		A2 = '' OR 
		A2 = '.' OR 
		A2 = '\'-----' OR 
		A2  LIKE '* Guardar las remartgas.%' OR
		A2 = '___' OR 
        A2 = '----' OR
        A2 = '------';

UPDATE English 
SET B0 = '' 
WHERE 	B0 = '-----' OR 
		B0 = '..' OR 
		B0 = '' OR 
		B0 = '.' OR 
		B0 = '\'-----' OR 
		B0  LIKE '* Guardar las remartgas.%' OR
		B0 = '___' OR 
        B0 = '----' OR
        B0 = '------';

UPDATE English 
SET B1 = '' 
WHERE 	B1 = '-----' OR 
		B1 = '..' OR 
		B1 = '' OR 
		B1 = '.' OR 
		B1 = '\'-----' OR 
		B1  LIKE '* Guardar las remartgas.%' OR
		B1 = '___' OR 
        B1 = '----' OR
        B1 = '------';
        
UPDATE English 
SET B2 = '' 
WHERE 	B2 = '-----' OR 
		B2 = '..' OR 
		B2 = '' OR 
		B2 = '.' OR 
		B2 = '\'-----' OR 
		B2  LIKE '* Guardar las remartgas.%' OR
		B2 = '___' OR 
        B2 = '----' OR
        B2 = '------';

UPDATE English 
SET D1 = '' 
WHERE 	D1 = '-----' OR 
		D1 = '..' OR 
		D1 = '' OR 
		D1 = '.' OR 
		D1 = '\'-----' OR 
		D1  LIKE '* Guardar las remartgas.%' OR
		D1 = '___' OR 
        D1 = '----' OR
        D1 = '------';

UPDATE English 
SET D2 = '' 
WHERE 	D2 = '-----' OR 
		D2 = '..' OR 
        D2 = '' OR 
        D2 = '.' OR 
        D2 = '\'-----' OR 
        D2  LIKE '* Guardar las remartgas.%' OR
		D2 = '___' OR 
        D2 = '----' OR
        D2 = '------';

UPDATE English 
SET E1 = '' 
WHERE 	E1 = '-----' OR 
		E1 = '..' OR 
        E1 = '' OR 
        E1 = '.' OR 
        E1 = '\'-----' OR 
        E1  LIKE '* Guardar las remartgas.%' OR
		E1 = '___' OR 
        E1 = '----' OR
        E1 = '------';
        
UPDATE English 
SET E2 = '' 
WHERE 	E2 = '-----' OR 
		E2 = '..' OR 
        E2 = '' OR 
        E2 = '.' OR 
        E2 = '\'-----' OR 
        E2  LIKE '* Guardar las remartgas.%' OR
		E2 = '___' OR 
        E2 = '----' OR
        E2 = '------';

UPDATE English 
SET F1 = '' 
WHERE 	F1 = '-----' OR 
		F1 = '..' OR 
        F1 = '' OR 
        F1 = '.' OR 
        F1 = '\'-----' OR 
        F1  LIKE '* Guardar las remartgas.%'  OR
		F1 = '___' OR 
        F1 = '----' OR
        F1 = '------';
        
UPDATE English 
SET F2 = '' 
WHERE 	F2 = '-----' OR 
		F2 = '..' OR 
        F2 = '' OR 
        F2 = '.' OR 
        F2 = '\'-----' OR 
        F2  LIKE '* Guardar las remartgas.%' OR
		F2 = '___' OR 
        F2 = '----' OR
        F2 = '------';

UPDATE English 
SET G1 = '' 
WHERE 	G1 = '-----' OR 
		G1 = '..' OR 
        G1 = '' OR 
        G1 = '.' OR 
		G1 = '\'-----' OR 
        G1  LIKE '* Guardar las remartgas.%' OR
		G1 = '___' OR 
        G1 = '----' OR
        G1 = '------';
        
UPDATE English 
SET G2 = '' 
WHERE 	G2 = '-----' OR 
		G2 = '..' OR 
        G2 = '' OR 
        G2 = '.' OR 
		G2 = '\'-----' OR 
        G2  LIKE '* Guardar las remartgas.%' OR
		G2 = '___' OR 
        G2 = '----' OR
        G2 = '------';

UPDATE English 
SET H1 = '' 
WHERE 	H1 = '-----' OR 
		H1 = '..' OR 
        H1 = '' OR 
        H1 = '.' OR 
        H1 = '\'-----' OR 
        H1  LIKE '* Guardar las remartgas.%' OR
		H1 = '___' OR 
        H1 = '----' OR
        H1 = '------';

UPDATE English 
SET H2 = '' 
WHERE 	H2 = '-----' OR 
		H2 = '..' OR 
        H2 = '' OR 
        H2 = '.' OR 
        H2 = '\'-----' OR 
        H2  LIKE '* Guardar las remartgas.%' OR
		H2 = '___' OR 
        H2 = '----' OR
        H2 = '------';
        

-- Merge into one table

DROP TABLE IF EXISTS Alllanguages;

CREATE TABLE Alllanguages 
	(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Grischun_Display VARCHAR(250), 
    Grischun_Search VARCHAR(250), 
    Sursilvan_Display VARCHAR (250), 
    Sursilvan_Search VARCHAR (250), 
    Sutsilvan_Display VARCHAR (250),
    Sutsilvan_Search VARCHAR (250),
    Surmiran_Display VARCHAR (250), 
    Surmiran_Search VARCHAR (250), 
    Puter_Display VARCHAR (250), 
    Puter_Search VARCHAR (250), 
    Vallader_Display VARCHAR (250), 
	Vallader_Search VARCHAR (250), 
    German_Display VARCHAR (250), 
    German_Search VARCHAR (250), 
	French_Display VARCHAR (250),
    French_Search VARCHAR (250),
    Italian_Display VARCHAR (250),
    Italian_Search VARCHAR (250),
    English_Display VARCHAR (250),
    English_Search VARCHAR (250),
    Conjugation TEXT,
    Lexical_Class_D VARCHAR(250),
    Lexical_Class_R VARCHAR(250),
    Source_Table_Name VARCHAR(50),
    Source_Table_Row_ID INT);

INSERT INTO Alllanguages (
    Grischun_Display, 
    Grischun_Search, 
    Sursilvan_Display, 
    Sursilvan_Search, 
    Sutsilvan_Display,
    Sutsilvan_Search,
    Surmiran_Display, 
    Surmiran_Search, 
    Puter_Display, 
    Puter_Search, 
    Vallader_Display, 
	Vallader_Search, 
    German_Display, 
    German_Search, 
    French_Display,
    French_Search,
    Italian_Display,
    Italian_Search,
    English_Display,
    English_Search,
    Conjugation,
    Lexical_Class_D,
    Lexical_Class_R,
    Source_Table_Name,
    Source_Table_Row_ID)


SELECT	German.A1 AS Grischun_Display,
		LOWER(German.A2) AS Grischun_Search, 
		German.D1 AS Sursilvan_Display,
        LOWER(German.D2) AS Sursilvan_Search,
		German.E1 AS Sutsilvan_Display,
        LOWER(German.E2) AS Sutsilvan_Search,
		German.F1 AS Surmiran_Display, 
        LOWER(German.F2) AS Surmiran_Search, 
		German.G1 AS Puter_Display, 
        LOWER(German.G2) AS Puter_Search, 
		German.H1 AS Vallader_Display,
		LOWER(German.H2) AS Vallader_Search,
		German.B1 AS German_Display,
        LOWER(German.B2) AS German_Search, 
		French.B1 AS French_Display, 
        LOWER(French.B2) AS French_Search, 
		Italian.B1 AS Italian_Display, 
        LOWER(Italian.B2) AS Italian_Search, 
        English.B1 AS English_Display,
        LOWER(English.B2) AS English_Search,
		German.J4 AS conjugation,
        German.B0,
        German.A3,
        'meinpledari',
        German.nr
FROM German
LEFT OUTER JOIN Italian ON 
	German.A2 = Italian.A2 AND 
    German.A3 = Italian.A3 AND 
    German.D2 = Italian.D2 AND
    German.E2 = Italian.E2 AND
    German.F2 = Italian.F2 AND
    German.G2 = Italian.G2 AND
    German.H2 = Italian.H2 AND
    German.J4 = Italian.J4
LEFT OUTER JOIN French ON 
	German.A2 = French.A2 AND 
    German.A3 = French.A3 AND 
    German.D2 = French.D2 AND
    German.E2 = French.E2 AND
    German.F2 = French.F2 AND
    German.G2 = French.G2 AND
    German.H2 = French.H2 AND
    German.J4 = French.J4
LEFT OUTER JOIN English ON 
	German.A2 = English.A2 AND 
    German.A3 = English.A3 AND 
    German.D2 = English.D2 AND
    German.E2 = English.E2 AND
    German.F2 = English.F2 AND
    German.G2 = English.G2 AND
    German.H2 = English.H2 AND
    German.J4 = English.J4
    
UNION

SELECT	German.A1 AS Grischun_Display,
		LOWER(German.A2) AS Grischun_Search, 
		German.D1 AS Sursilvan_Display,
        LOWER(German.D2) AS Sursilvan_Search,
		German.E1 AS Sutsilvan_Display,
        LOWER(German.E2) AS Sutsilvan_Search,
		German.F1 AS Surmiran_Display, 
        LOWER(German.F2) AS Surmiran_Search, 
		German.G1 AS Puter_Display, 
        LOWER(German.G2) AS Puter_Search, 
		German.H1 AS Vallader_Display,
		LOWER(German.H2) AS Vallader_Search,
		German.B1 AS German_Display,
        LOWER(German.B2) AS German_Search, 
		French.B1 AS French_Display, 
        LOWER(French.B2) AS French_Search, 
		Italian.B1 AS Italian_Display, 
        LOWER(Italian.B2) AS Italian_Search, 
        English.B1 AS English_Display,
        LOWER(English.B2) AS English_Search,  
		German.J4 AS conjugation,
        German.B0,
        German.A3,
        'miopledari',
        Italian.nr
FROM Italian
LEFT OUTER JOIN German ON 
	German.A2 = Italian.A2 AND 
    German.A3 = Italian.A3 AND 
    German.D2 = Italian.D2 AND
    German.E2 = Italian.E2 AND
    German.F2 = Italian.F2 AND
    German.G2 = Italian.G2 AND
    German.H2 = Italian.H2 AND
    German.J4 = Italian.J4
LEFT OUTER JOIN French ON 
	Italian.A2 = French.A2 AND 
    Italian.A3 = French.A3 AND 
    Italian.D2 = French.D2 AND
    Italian.E2 = French.E2 AND
    Italian.F2 = French.F2 AND
    Italian.G2 = French.G2 AND
    Italian.H2 = French.H2 AND
    Italian.J4 = French.J4
LEFT OUTER JOIN English ON 
	Italian.A2 = English.A2 AND 
    Italian.A3 = English.A3 AND 
    Italian.D2 = English.D2 AND
    Italian.E2 = English.E2 AND
    Italian.F2 = English.F2 AND
    Italian.G2 = English.G2 AND
    Italian.H2 = English.H2 AND
    Italian.J4 = English.J4
    
WHERE German.nr is NULL

UNION

SELECT	German.A1 AS Grischun_Display,
		LOWER(German.A2) AS Grischun_Search, 
		German.D1 AS Sursilvan_Display,
        LOWER(German.D2) AS Sursilvan_Search,
		German.E1 AS Sutsilvan_Display,
        LOWER(German.E2) AS Sutsilvan_Search,
		German.F1 AS Surmiran_Display, 
        LOWER(German.F2) AS Surmiran_Search, 
		German.G1 AS Puter_Display, 
        LOWER(German.G2) AS Puter_Search, 
		German.H1 AS Vallader_Display,
		LOWER(German.H2) AS Vallader_Search,
		German.B1 AS German_Display,
        LOWER(German.B2) AS German_Search, 
		French.B1 AS French_Display, 
        LOWER(French.B2) AS French_Search, 
		Italian.B1 AS Italian_Display, 
        LOWER(Italian.B2) AS Italian_Search, 
        English.B1 AS English_Display,
        LOWER(English.B2) AS English_Search,  
		German.J4 AS conjugation,
        German.B0,
        German.A3,
        'monpledari',
        French.nr
FROM French 
LEFT OUTER JOIN Italian ON 
	Italian.A2 = French.A2 AND 
    Italian.A3 = French.A3 AND 
    Italian.D2 = French.D2 AND
    Italian.E2 = French.E2 AND
    Italian.F2 = French.F2 AND
    Italian.G2 = French.G2 AND
    Italian.H2 = French.H2 AND
    Italian.J4 = French.J4
LEFT OUTER JOIN German ON 
	German.A2 = French.A2 AND 
    German.A3 = French.A3 AND 
    German.D2 = French.D2 AND
    German.E2 = French.E2 AND
    German.F2 = French.F2 AND
    German.G2 = French.G2 AND
    German.H2 = French.H2 AND
    German.J4 = French.J4

LEFT OUTER JOIN English ON 
	French.A2 = English.A2 AND 
    French.A3 = English.A3 AND 
    French.D2 = English.D2 AND
    French.E2 = English.E2 AND
    French.F2 = English.F2 AND
    French.G2 = English.G2 AND
    French.H2 = English.H2 AND
    French.J4 = English.J4
    
WHERE German.nr is NULL AND Italian.nr is NULL

UNION

SELECT	German.A1 AS Grischun_Display,
		LOWER(German.A2) AS Grischun_Search, 
		German.D1 AS Sursilvan_Display,
        LOWER(German.D2) AS Sursilvan_Search,
		German.E1 AS Sutsilvan_Display,
        LOWER(German.E2) AS Sutsilvan_Search,
		German.F1 AS Surmiran_Display, 
        LOWER(German.F2) AS Surmiran_Search, 
		German.G1 AS Puter_Display, 
        LOWER(German.G2) AS Puter_Search, 
		German.H1 AS Vallader_Display,
		LOWER(German.H2) AS Vallader_Search,
		German.B1 AS German_Display,
        LOWER(German.B2) AS German_Search, 
		French.B1 AS French_Display, 
        LOWER(French.B2) AS French_Search, 
		Italian.B1 AS Italian_Display, 
        LOWER(Italian.B2) AS Italian_Search, 
        English.B1 AS English_Display,
        LOWER(English.B2) AS English_Search,
		German.J4 AS conjugation,
        German.B0,
        German.A3,
        'mypledari',
        English.nr
FROM English 

LEFT OUTER JOIN French ON 
	French.A2 = English.A2 AND 
    French.A3 = English.A3 AND 
    French.D2 = English.D2 AND
    French.E2 = English.E2 AND
    French.F2 = English.F2 AND
    French.G2 = English.G2 AND
    French.H2 = English.H2 AND
    French.J4 = English.J4
LEFT OUTER JOIN Italian ON 
	Italian.A2 = English.A2 AND 
    Italian.A3 = English.A3 AND 
    Italian.D2 = English.D2 AND
    Italian.E2 = English.E2 AND
    Italian.F2 = English.F2 AND
    Italian.G2 = English.G2 AND
    Italian.H2 = English.H2 AND
    Italian.J4 = English.J4
LEFT OUTER JOIN German ON 
	German.A2 = English.A2 AND 
    German.A3 = English.A3 AND 
    German.D2 = English.D2 AND
    German.E2 = English.E2 AND
    German.F2 = English.F2 AND
    German.G2 = English.G2 AND
    German.H2 = English.H2 AND
    German.J4 = English.J4

WHERE German.nr IS NULL AND Italian.nr IS NULL AND French.nr IS NULL;

UPDATE Alllanguages
   SET Sursilvan_Search = Grischun_Search
 WHERE Sursilvan_Search = '(RG)' OR Sursilvan_Search = '(=RG)';

UPDATE Alllanguages
   SET Sutsilvan_Search = Grischun_Search
 WHERE Sutsilvan_Search = '(RG)' OR Sutsilvan_Search = '(=RG)';

 UPDATE Alllanguages
   SET Surmiran_Search = Grischun_Search
 WHERE Surmiran_Search = '(RG)' OR Surmiran_Search = '(=RG)';

 UPDATE Alllanguages
   SET Puter_Search = Grischun_Search
 WHERE Puter_Search = '(RG)' OR Puter_Search = '(=RG)';

 UPDATE Alllanguages
   SET Vallader_Search = Grischun_Search
 WHERE Vallader_Search = '(RG)' OR Vallader_Search = '(=RG)';

UPDATE Alllanguages
   SET Sursilvan_Display = Grischun_Display
 WHERE Sursilvan_Display = '(RG)' OR Sursilvan_Display = '(=RG)';

UPDATE Alllanguages
   SET Sutsilvan_Display = Grischun_Display
 WHERE Sutsilvan_Display = '(RG)' OR Sutsilvan_Display = '(=RG)';

 UPDATE Alllanguages
   SET Surmiran_Display = Grischun_Display
 WHERE Surmiran_Display = '(RG)' OR Surmiran_Display = '(=RG)';

 UPDATE Alllanguages
   SET Puter_Display = Grischun_Display
 WHERE Puter_Display = '(RG)' OR Puter_Display = '(=RG)';

 UPDATE Alllanguages
   SET Vallader_Display = Grischun_Display
 WHERE Vallader_Display = '(RG)' OR Vallader_Display = '(=RG)';

DROP TABLE IF EXISTS German;
DROP TABLE IF EXISTS French;
DROP TABLE IF EXISTS Italian;
DROP TABLE IF EXISTS English;


-- Indexes for optimated searching

CREATE INDEX i_Grischun_Search ON Alllanguages(Grischun_Search);
CREATE INDEX i_Sursilvan_Search ON Alllanguages(Sursilvan_Search);
CREATE INDEX i_Sutsilvan_Search ON Alllanguages(Sutsilvan_Search);
CREATE INDEX i_Surmiran_Search ON Alllanguages(Surmiran_Search);
CREATE INDEX i_Puter_Search ON Alllanguages(Puter_Search);
CREATE INDEX i_Vallader_Search ON Alllanguages(Vallader_Search);
CREATE INDEX i_German_Search ON Alllanguages(German_Search);
CREATE INDEX i_French_Search ON Alllanguages(French_Search);
CREATE INDEX i_Italian_Search ON Alllanguages(Italian_Search);
CREATE INDEX i_English_Search ON Alllanguages(English_Search);