-------
-- Combine the German, French, Italian and English translations into one table
-------

-- Clean german values

drop temporary table if exists deutsch;
create temporary table deutsch(

select A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr from meinpledari);

update deutsch 
set A1 = '' 
where 	A1 = '-----' or 
		A1 = '..' or 
		A1 = '(=RG)' or 
		A1 = '' or 
		A1 = '.' or 
		A1 = '\'-----' or 
		A1 = '(RG)' or 
		A1 like '* Guardar las remartgas.%' or
		A1 = '___' or 
        A1 = '----' or
        A1 = '------';

update deutsch 
set A2 = '' 
where 	A2 = '-----' or 
		A2 = '..' or 
		A2 = '(=RG)' or 
		A2 = '' or 
		A2 = '.' or 
		A2 = '\'-----' or 
		A2 = '(RG)' or 
		A2 like '* Guardar las remartgas.%' or
		A2 = '___' or 
        A2 = '----' or
        A2 = '------';

update deutsch 
set B0 = '' 
where 	B0 = '-----' or 
		B0 = '..' or 
		B0 = '(=RG)' or 
		B0 = '' or 
		B0 = '.' or 
		B0 = '\'-----' or 
		B0 = '(RG)' or 
		B0 like '* Guardar las remartgas.%' or
		B0 = '___' or 
        B0 = '----' or
        B0 = '------';


update deutsch 
set B1 = '' 
where 	B1 = '-----' or 
		B1 = '..' or 
		B1 = '(=RG)' or 
		B1 = '' or 
		B1 = '.' or 
		B1 = '\'-----' or 
		B1 = '(RG)' or 
		B1 like '* Guardar las remartgas.%' or
		B1 = '___' or 
        B1 = '----' or
        B1 = '------';
        
update deutsch 
set B2 = '' 
where 	B2 = '-----' or 
		B2 = '..' or 
		B2 = '(=RG)' or 
		B2 = '' or 
		B2 = '.' or 
		B2 = '\'-----' or 
		B2 = '(RG)' or 
		B2 like '* Guardar las remartgas.%' or
		B2 = '___' or 
        B2 = '----' or
        B2 = '------';

update deutsch 
set D1 = '' 
where 	D1 = '-----' or 
		D1 = '..' or 
		D1 = '(=RG)' or 
		D1 = '' or 
		D1 = '.' or 
		D1 = '\'-----' or 
		D1 = '(RG)' or 
		D1 like '* Guardar las remartgas.%' or
		D1 = '___' or 
        D1 = '----' or
        D1 = '------';

update deutsch 
set D2 = '' 
where 	D2 = '-----' or 
		D2 = '..' or 
        D2 = '(=RG)' or 
        D2 = '' or 
        D2 = '.' or 
        D2 = '\'-----' or 
        D2 = '(RG)' or 
        D2 like '* Guardar las remartgas.%' or
		D2 = '___' or 
        D2 = '----' or
        D2 = '------';

update deutsch 
set E1 = '' 
where 	E1 = '-----' or 
		E1 = '..' or 
        E1 = '(=RG)' or
        E1 = '' or 
        E1 = '.' or 
        E1 = '\'-----' or 
        E1 = '(RG)' or 
        E1 like '* Guardar las remartgas.%' or
		E1 = '___' or 
        E1 = '----' or
        E1 = '------';
        
update deutsch 
set E2 = '' 
where 	E2 = '-----' or 
		E2 = '..' or 
        E2 = '(=RG)' or
        E2 = '' or 
        E2 = '.' or 
        E2 = '\'-----' or 
        E2 = '(RG)' or 
        E2 like '* Guardar las remartgas.%' or
		E2 = '___' or 
        E2 = '----' or
        E2 = '------';

update deutsch 
set F1 = '' 
where 	F1 = '-----' or 
		F1 = '..' or 
        F1 = '(=RG)' or 
        F1 = '' or 
        F1 = '.' or 
        F1 = '\'-----' or 
        F1 = '(RG)' or 
        F1 like '* Guardar las remartgas.%'  or
		F1 = '___' or 
        F1 = '----' or
        F1 = '------';
        
update deutsch 
set F2 = '' 
where 	F2 = '-----' or 
		F2 = '..' or 
        F2 = '(=RG)' or 
        F2 = '' or 
        F2 = '.' or 
        F2 = '\'-----' or 
        F2 = '(RG)' or 
        F2 like '* Guardar las remartgas.%' or
		F2 = '___' or 
        F2 = '----' or
        F2 = '------';

update deutsch 
set G1 = '' 
where 	G1 = '-----' or 
		G1 = '..' or 
        G1 = '(=RG)' or 
        G1 = '' or 
        G1 = '.' or 
		G1 = '\'-----' or 
        G1 = '(RG)' or 
        G1 like '* Guardar las remartgas.%' or
		G1 = '___' or 
        G1 = '----' or
        G1 = '------';
        
update deutsch 
set G2 = '' 
where 	G2 = '-----' or 
		G2 = '..' or 
        G2 = '(=RG)' or 
        G2 = '' or 
        G2 = '.' or 
		G2 = '\'-----' or 
        G2 = '(RG)' or 
        G2 like '* Guardar las remartgas.%' or
		G2 = '___' or 
        G2 = '----' or
        G2 = '------';

update deutsch 
set H1 = '' 
where 	H1 = '-----' or 
		H1 = '..' or 
        H1 = '(=RG)' or 
        H1 = '' or 
        H1 = '.' or 
        H1 = '\'-----' or 
        H1 = '(RG)' or 
        H1 like '* Guardar las remartgas.%' or
		H1 = '___' or 
        H1 = '----' or
        H1 = '------';

update deutsch 
set H2 = '' 
where 	H2 = '-----' or 
		H2 = '..' or 
        H2 = '(=RG)' or 
        H2 = '' or 
        H2 = '.' or 
        H2 = '\'-----' or 
        H2 = '(RG)' or 
        H2 like '* Guardar las remartgas.%' or
		H2 = '___' or 
        H2 = '----' or
        H2 = '------';


drop table if exists German;
create table German as (select * from deutsch);



-- Clean french values

drop temporary table if exists franz;
create temporary table franz(

select A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr from monpledari);

update franz 
set A1 = '' 
where 	A1 = '-----' or 
		A1 = '..' or 
		A1 = '(=RG)' or 
		A1 = '' or 
		A1 = '.' or 
		A1 = '\'-----' or 
		A1 = '(RG)' or 
		A1 like '* Guardar las remartgas.%' or
		A1 = '___' or 
        A1 = '----' or
        A1 = '------';

update franz 
set A2 = '' 
where 	A2 = '-----' or 
		A2 = '..' or 
		A2 = '(=RG)' or 
		A2 = '' or 
		A2 = '.' or 
		A2 = '\'-----' or 
		A2 = '(RG)' or 
		A2 like '* Guardar las remartgas.%' or
		A2 = '___' or 
        A2 = '----' or
        A2 = '------';

update franz 
set B0 = '' 
where 	B0 = '-----' or 
		B0 = '..' or 
		B0 = '(=RG)' or 
		B0 = '' or 
		B0 = '.' or 
		B0 = '\'-----' or 
		B0 = '(RG)' or 
		B0 like '* Guardar las remartgas.%' or
		B0 = '___' or 
        B0 = '----' or
        B0 = '------';


update franz 
set B1 = '' 
where 	B1 = '-----' or 
		B1 = '..' or 
		B1 = '(=RG)' or 
		B1 = '' or 
		B1 = '.' or 
		B1 = '\'-----' or 
		B1 = '(RG)' or 
		B1 like '* Guardar las remartgas.%' or
		B1 = '___' or 
        B1 = '----' or
        B1 = '------';
        
update franz 
set B2 = '' 
where 	B2 = '-----' or 
		B2 = '..' or 
		B2 = '(=RG)' or 
		B2 = '' or 
		B2 = '.' or 
		B2 = '\'-----' or 
		B2 = '(RG)' or 
		B2 like '* Guardar las remartgas.%' or
		B2 = '___' or 
        B2 = '----' or
        B2 = '------';

update franz 
set D1 = '' 
where 	D1 = '-----' or 
		D1 = '..' or 
		D1 = '(=RG)' or 
		D1 = '' or 
		D1 = '.' or 
		D1 = '\'-----' or 
		D1 = '(RG)' or 
		D1 like '* Guardar las remartgas.%' or
		D1 = '___' or 
        D1 = '----' or
        D1 = '------';

update franz 
set D2 = '' 
where 	D2 = '-----' or 
		D2 = '..' or 
        D2 = '(=RG)' or 
        D2 = '' or 
        D2 = '.' or 
        D2 = '\'-----' or 
        D2 = '(RG)' or 
        D2 like '* Guardar las remartgas.%' or
		D2 = '___' or 
        D2 = '----' or
        D2 = '------';

update franz 
set E1 = '' 
where 	E1 = '-----' or 
		E1 = '..' or 
        E1 = '(=RG)' or
        E1 = '' or 
        E1 = '.' or 
        E1 = '\'-----' or 
        E1 = '(RG)' or 
        E1 like '* Guardar las remartgas.%' or
		E1 = '___' or 
        E1 = '----' or
        E1 = '------';
        
update franz 
set E2 = '' 
where 	E2 = '-----' or 
		E2 = '..' or 
        E2 = '(=RG)' or
        E2 = '' or 
        E2 = '.' or 
        E2 = '\'-----' or 
        E2 = '(RG)' or 
        E2 like '* Guardar las remartgas.%' or
		E2 = '___' or 
        E2 = '----' or
        E2 = '------';

update franz 
set F1 = '' 
where 	F1 = '-----' or 
		F1 = '..' or 
        F1 = '(=RG)' or 
        F1 = '' or 
        F1 = '.' or 
        F1 = '\'-----' or 
        F1 = '(RG)' or 
        F1 like '* Guardar las remartgas.%'  or
		F1 = '___' or 
        F1 = '----' or
        F1 = '------';
        
update franz 
set F2 = '' 
where 	F2 = '-----' or 
		F2 = '..' or 
        F2 = '(=RG)' or 
        F2 = '' or 
        F2 = '.' or 
        F2 = '\'-----' or 
        F2 = '(RG)' or 
        F2 like '* Guardar las remartgas.%' or
		F2 = '___' or 
        F2 = '----' or
        F2 = '------';

update franz 
set G1 = '' 
where 	G1 = '-----' or 
		G1 = '..' or 
        G1 = '(=RG)' or 
        G1 = '' or 
        G1 = '.' or 
		G1 = '\'-----' or 
        G1 = '(RG)' or 
        G1 like '* Guardar las remartgas.%' or
		G1 = '___' or 
        G1 = '----' or
        G1 = '------';
        
update franz 
set G2 = '' 
where 	G2 = '-----' or 
		G2 = '..' or 
        G2 = '(=RG)' or 
        G2 = '' or 
        G2 = '.' or 
		G2 = '\'-----' or 
        G2 = '(RG)' or 
        G2 like '* Guardar las remartgas.%' or
		G2 = '___' or 
        G2 = '----' or
        G2 = '------';

update franz 
set H1 = '' 
where 	H1 = '-----' or 
		H1 = '..' or 
        H1 = '(=RG)' or 
        H1 = '' or 
        H1 = '.' or 
        H1 = '\'-----' or 
        H1 = '(RG)' or 
        H1 like '* Guardar las remartgas.%' or
		H1 = '___' or 
        H1 = '----' or
        H1 = '------';

update franz 
set H2 = '' 
where 	H2 = '-----' or 
		H2 = '..' or 
        H2 = '(=RG)' or 
        H2 = '' or 
        H2 = '.' or 
        H2 = '\'-----' or 
        H2 = '(RG)' or 
        H2 like '* Guardar las remartgas.%' or
		H2 = '___' or 
        H2 = '----' or
        H2 = '------';
        
drop table if exists French;
create table French as (select * from franz);


-- Clean italian values

drop temporary table if exists itu;
create temporary table itu(

select A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr from miopledari);

update itu 
set A1 = '' 
where 	A1 = '-----' or 
		A1 = '..' or 
		A1 = '(=RG)' or 
		A1 = '' or 
		A1 = '.' or 
		A1 = '\'-----' or 
		A1 = '(RG)' or 
		A1 like '* Guardar las remartgas.%' or
		A1 = '___' or 
        A1 = '----' or
        A1 = '------';

update itu 
set A2 = '' 
where 	A2 = '-----' or 
		A2 = '..' or 
		A2 = '(=RG)' or 
		A2 = '' or 
		A2 = '.' or 
		A2 = '\'-----' or 
		A2 = '(RG)' or 
		A2 like '* Guardar las remartgas.%' or
		A2 = '___' or 
        A2 = '----' or
        A2 = '------';

update itu 
set B0 = '' 
where 	B0 = '-----' or 
		B0 = '..' or 
		B0 = '(=RG)' or 
		B0 = '' or 
		B0 = '.' or 
		B0 = '\'-----' or 
		B0 = '(RG)' or 
		B0 like '* Guardar las remartgas.%' or
		B0 = '___' or 
        B0 = '----' or
        B0 = '------';


update itu 
set B1 = '' 
where 	B1 = '-----' or 
		B1 = '..' or 
		B1 = '(=RG)' or 
		B1 = '' or 
		B1 = '.' or 
		B1 = '\'-----' or 
		B1 = '(RG)' or 
		B1 like '* Guardar las remartgas.%' or
		B1 = '___' or 
        B1 = '----' or
        B1 = '------';
        
update itu 
set B2 = '' 
where 	B2 = '-----' or 
		B2 = '..' or 
		B2 = '(=RG)' or 
		B2 = '' or 
		B2 = '.' or 
		B2 = '\'-----' or 
		B2 = '(RG)' or 
		B2 like '* Guardar las remartgas.%' or
		B2 = '___' or 
        B2 = '----' or
        B2 = '------';

update itu 
set D1 = '' 
where 	D1 = '-----' or 
		D1 = '..' or 
		D1 = '(=RG)' or 
		D1 = '' or 
		D1 = '.' or 
		D1 = '\'-----' or 
		D1 = '(RG)' or 
		D1 like '* Guardar las remartgas.%' or
		D1 = '___' or 
        D1 = '----' or
        D1 = '------';

update itu 
set D2 = '' 
where 	D2 = '-----' or 
		D2 = '..' or 
        D2 = '(=RG)' or 
        D2 = '' or 
        D2 = '.' or 
        D2 = '\'-----' or 
        D2 = '(RG)' or 
        D2 like '* Guardar las remartgas.%' or
		D2 = '___' or 
        D2 = '----' or
        D2 = '------';

update itu 
set E1 = '' 
where 	E1 = '-----' or 
		E1 = '..' or 
        E1 = '(=RG)' or
        E1 = '' or 
        E1 = '.' or 
        E1 = '\'-----' or 
        E1 = '(RG)' or 
        E1 like '* Guardar las remartgas.%' or
		E1 = '___' or 
        E1 = '----' or
        E1 = '------';
        
update itu 
set E2 = '' 
where 	E2 = '-----' or 
		E2 = '..' or 
        E2 = '(=RG)' or
        E2 = '' or 
        E2 = '.' or 
        E2 = '\'-----' or 
        E2 = '(RG)' or 
        E2 like '* Guardar las remartgas.%' or
		E2 = '___' or 
        E2 = '----' or
        E2 = '------';

update itu 
set F1 = '' 
where 	F1 = '-----' or 
		F1 = '..' or 
        F1 = '(=RG)' or 
        F1 = '' or 
        F1 = '.' or 
        F1 = '\'-----' or 
        F1 = '(RG)' or 
        F1 like '* Guardar las remartgas.%'  or
		F1 = '___' or 
        F1 = '----' or
        F1 = '------';
        
update itu 
set F2 = '' 
where 	F2 = '-----' or 
		F2 = '..' or 
        F2 = '(=RG)' or 
        F2 = '' or 
        F2 = '.' or 
        F2 = '\'-----' or 
        F2 = '(RG)' or 
        F2 like '* Guardar las remartgas.%' or
		F2 = '___' or 
        F2 = '----' or
        F2 = '------';

update itu 
set G1 = '' 
where 	G1 = '-----' or 
		G1 = '..' or 
        G1 = '(=RG)' or 
        G1 = '' or 
        G1 = '.' or 
		G1 = '\'-----' or 
        G1 = '(RG)' or 
        G1 like '* Guardar las remartgas.%' or
		G1 = '___' or 
        G1 = '----' or
        G1 = '------';
        
update itu 
set G2 = '' 
where 	G2 = '-----' or 
		G2 = '..' or 
        G2 = '(=RG)' or 
        G2 = '' or 
        G2 = '.' or 
		G2 = '\'-----' or 
        G2 = '(RG)' or 
        G2 like '* Guardar las remartgas.%' or
		G2 = '___' or 
        G2 = '----' or
        G2 = '------';

update itu 
set H1 = '' 
where 	H1 = '-----' or 
		H1 = '..' or 
        H1 = '(=RG)' or 
        H1 = '' or 
        H1 = '.' or 
        H1 = '\'-----' or 
        H1 = '(RG)' or 
        H1 like '* Guardar las remartgas.%' or
		H1 = '___' or 
        H1 = '----' or
        H1 = '------';

update itu 
set H2 = '' 
where 	H2 = '-----' or 
		H2 = '..' or 
        H2 = '(=RG)' or 
        H2 = '' or 
        H2 = '.' or 
        H2 = '\'-----' or 
        H2 = '(RG)' or 
        H2 like '* Guardar las remartgas.%' or
		H2 = '___' or 
        H2 = '----' or
        H2 = '------';
        
drop table if exists Italian;
create table Italian as (select * from itu);


-- Clean english values

drop temporary table if exists engl;
create temporary table engl(

select A1, A2, A3, B0, B1, B2, D1, D2, E1, E2, F1, F2, G1, G2, H1, H2, J4, nr from mypledari);

update engl 
set A1 = '' 
where 	A1 = '-----' or 
		A1 = '..' or 
		A1 = '(=RG)' or 
		A1 = '' or 
		A1 = '.' or 
		A1 = '\'-----' or 
		A1 = '(RG)' or 
		A1 like '* Guardar las remartgas.%' or
		A1 = '___' or 
        A1 = '----' or
        A1 = '------';

update engl 
set A2 = '' 
where 	A2 = '-----' or 
		A2 = '..' or 
		A2 = '(=RG)' or 
		A2 = '' or 
		A2 = '.' or 
		A2 = '\'-----' or 
		A2 = '(RG)' or 
		A2 like '* Guardar las remartgas.%' or
		A2 = '___' or 
        A2 = '----' or
        A2 = '------';

update engl 
set B0 = '' 
where 	B0 = '-----' or 
		B0 = '..' or 
		B0 = '(=RG)' or 
		B0 = '' or 
		B0 = '.' or 
		B0 = '\'-----' or 
		B0 = '(RG)' or 
		B0 like '* Guardar las remartgas.%' or
		B0 = '___' or 
        B0 = '----' or
        B0 = '------';


update engl 
set B1 = '' 
where 	B1 = '-----' or 
		B1 = '..' or 
		B1 = '(=RG)' or 
		B1 = '' or 
		B1 = '.' or 
		B1 = '\'-----' or 
		B1 = '(RG)' or 
		B1 like '* Guardar las remartgas.%' or
		B1 = '___' or 
        B1 = '----' or
        B1 = '------';
        
update engl 
set B2 = '' 
where 	B2 = '-----' or 
		B2 = '..' or 
		B2 = '(=RG)' or 
		B2 = '' or 
		B2 = '.' or 
		B2 = '\'-----' or 
		B2 = '(RG)' or 
		B2 like '* Guardar las remartgas.%' or
		B2 = '___' or 
        B2 = '----' or
        B2 = '------';

update engl 
set D1 = '' 
where 	D1 = '-----' or 
		D1 = '..' or 
		D1 = '(=RG)' or 
		D1 = '' or 
		D1 = '.' or 
		D1 = '\'-----' or 
		D1 = '(RG)' or 
		D1 like '* Guardar las remartgas.%' or
		D1 = '___' or 
        D1 = '----' or
        D1 = '------';

update engl 
set D2 = '' 
where 	D2 = '-----' or 
		D2 = '..' or 
        D2 = '(=RG)' or 
        D2 = '' or 
        D2 = '.' or 
        D2 = '\'-----' or 
        D2 = '(RG)' or 
        D2 like '* Guardar las remartgas.%' or
		D2 = '___' or 
        D2 = '----' or
        D2 = '------';

update engl 
set E1 = '' 
where 	E1 = '-----' or 
		E1 = '..' or 
        E1 = '(=RG)' or
        E1 = '' or 
        E1 = '.' or 
        E1 = '\'-----' or 
        E1 = '(RG)' or 
        E1 like '* Guardar las remartgas.%' or
		E1 = '___' or 
        E1 = '----' or
        E1 = '------';
        
update engl 
set E2 = '' 
where 	E2 = '-----' or 
		E2 = '..' or 
        E2 = '(=RG)' or
        E2 = '' or 
        E2 = '.' or 
        E2 = '\'-----' or 
        E2 = '(RG)' or 
        E2 like '* Guardar las remartgas.%' or
		E2 = '___' or 
        E2 = '----' or
        E2 = '------';

update engl 
set F1 = '' 
where 	F1 = '-----' or 
		F1 = '..' or 
        F1 = '(=RG)' or 
        F1 = '' or 
        F1 = '.' or 
        F1 = '\'-----' or 
        F1 = '(RG)' or 
        F1 like '* Guardar las remartgas.%'  or
		F1 = '___' or 
        F1 = '----' or
        F1 = '------';
        
update engl 
set F2 = '' 
where 	F2 = '-----' or 
		F2 = '..' or 
        F2 = '(=RG)' or 
        F2 = '' or 
        F2 = '.' or 
        F2 = '\'-----' or 
        F2 = '(RG)' or 
        F2 like '* Guardar las remartgas.%' or
		F2 = '___' or 
        F2 = '----' or
        F2 = '------';

update engl 
set G1 = '' 
where 	G1 = '-----' or 
		G1 = '..' or 
        G1 = '(=RG)' or 
        G1 = '' or 
        G1 = '.' or 
		G1 = '\'-----' or 
        G1 = '(RG)' or 
        G1 like '* Guardar las remartgas.%' or
		G1 = '___' or 
        G1 = '----' or
        G1 = '------';
        
update engl 
set G2 = '' 
where 	G2 = '-----' or 
		G2 = '..' or 
        G2 = '(=RG)' or 
        G2 = '' or 
        G2 = '.' or 
		G2 = '\'-----' or 
        G2 = '(RG)' or 
        G2 like '* Guardar las remartgas.%' or
		G2 = '___' or 
        G2 = '----' or
        G2 = '------';

update engl 
set H1 = '' 
where 	H1 = '-----' or 
		H1 = '..' or 
        H1 = '(=RG)' or 
        H1 = '' or 
        H1 = '.' or 
        H1 = '\'-----' or 
        H1 = '(RG)' or 
        H1 like '* Guardar las remartgas.%' or
		H1 = '___' or 
        H1 = '----' or
        H1 = '------';

update engl 
set H2 = '' 
where 	H2 = '-----' or 
		H2 = '..' or 
        H2 = '(=RG)' or 
        H2 = '' or 
        H2 = '.' or 
        H2 = '\'-----' or 
        H2 = '(RG)' or 
        H2 like '* Guardar las remartgas.%' or
		H2 = '___' or 
        H2 = '----' or
        H2 = '------';
        
drop table if exists English;
create table English as (select * from engl);


-- Merge into one table

drop table if exists alllanguages;

CREATE TABLE AllLanguages 
	(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Grischun_Display varchar(250), 
    Grischun_Search varchar(250), 
    Sursilvan_Display varchar (250), 
    Sursilvan_Search varchar (250), 
    Sutsilvan_Display varchar (250),
    Sutsilvan_Search varchar (250),
    Surmiran_Display varchar (250), 
    Surmiran_Search varchar (250), 
    Puter_Display varchar (250), 
    Puter_Search varchar (250), 
    Vallader_Display varchar (250), 
	Vallader_Search varchar (250), 
    German_Display varchar (250), 
    German_Search varchar (250), 
	French_Display varchar (250),
    French_Search varchar (250),
    Italian_Display varchar (250),
    Italian_Search varchar (250),
    English_Display varchar (250),
    English_Search varchar (250),
    Conjugation text,
    Lexical_Class_D varchar(250),
    Lexical_Class_R varchar(250),
    Source_Table_Name varchar(50),
    Source_Table_Row_ID int);

insert into alllanguages (
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


select	germantable.A1 as Grischun_Display,
		lower(germantable.A2) as Grischun_Search, 
		germantable.D1 as Sursilvan_Display,
        lower(germantable.D2) as Sursilvan_Search,
		germantable.E1 as Sutsilvan_Display,
        lower(germantable.E2) as Sutsilvan_Search,
		germantable.F1 as Surmiran_Display, 
        lower(germantable.F2) as Surmiran_Search, 
		germantable.G1 as Puter_Display, 
        lower(germantable.G2) as Puter_Search, 
		germantable.H1 as Vallader_Display,
		lower(germantable.H2) as Vallader_Search,
		germantable.B1 as German_Display,
        lower(germantable.B2) as German_Search, 
		frenchtable.B1 as French_Display, 
        lower(frenchtable.B2) as French_Search, 
		italiantable.B1 as Italian_Display, 
        lower(italiantable.B2) as Italian_Search, 
        englishtable.B1 as English_Display,
        lower(englishtable.B2) as English_Search,
		germantable.J4 as conjugation,
        germantable.B0,
        germantable.A3,
        'meinpledari',
        germantable.nr
from German germantable
left outer join Italian italiantable on 
	germantable.A2 = italiantable.A2 and 
    germantable.A3 = italiantable.A3 and 
    germantable.D2 = italiantable.D2 and
    germantable.E2 = italiantable.E2 and
    germantable.F2 = italiantable.F2 and
    germantable.G2 = italiantable.G2 and
    germantable.H2 = italiantable.H2 and
    germantable.J4 = italiantable.J4
left outer join French frenchtable on 
	germantable.A2 = frenchtable.A2 and 
    germantable.A3 = frenchtable.A3 and 
    germantable.D2 = frenchtable.D2 and
    germantable.E2 = frenchtable.E2 and
    germantable.F2 = frenchtable.F2 and
    germantable.G2 = frenchtable.G2 and
    germantable.H2 = frenchtable.H2 and
    germantable.J4 = frenchtable.J4
left outer join English englishtable on 
	germantable.A2 = englishtable.A2 and 
    germantable.A3 = englishtable.A3 and 
    germantable.D2 = englishtable.D2 and
    germantable.E2 = englishtable.E2 and
    germantable.F2 = englishtable.F2 and
    germantable.G2 = englishtable.G2 and
    germantable.H2 = englishtable.H2 and
    germantable.J4 = englishtable.J4
    
union

select	germantable.A1 as Grischun_Display,
		lower(germantable.A2) as Grischun_Search, 
		germantable.D1 as Sursilvan_Display,
        lower(germantable.D2) as Sursilvan_Search,
		germantable.E1 as Sutsilvan_Display,
        lower(germantable.E2) as Sutsilvan_Search,
		germantable.F1 as Surmiran_Display, 
        lower(germantable.F2) as Surmiran_Search, 
		germantable.G1 as Puter_Display, 
        lower(germantable.G2) as Puter_Search, 
		germantable.H1 as Vallader_Display,
		lower(germantable.H2) as Vallader_Search,
		germantable.B1 as German_Display,
        lower(germantable.B2) as German_Search, 
		frenchtable.B1 as French_Display, 
        lower(frenchtable.B2) as French_Search, 
		italiantable.B1 as Italian_Display, 
        lower(italiantable.B2) as Italian_Search, 
        englishtable.B1 as English_Display,
        lower(englishtable.B2) as English_Search,  
		germantable.J4 as conjugation,
        germantable.B0,
        germantable.A3,
        'miopledari',
        italiantable.nr
from Italian italiantable
left outer join German germantable on 
	germantable.A2 = italiantable.A2 and 
    germantable.A3 = italiantable.A3 and 
    germantable.D2 = italiantable.D2 and
    germantable.E2 = italiantable.E2 and
    germantable.F2 = italiantable.F2 and
    germantable.G2 = italiantable.G2 and
    germantable.H2 = italiantable.H2 and
    germantable.J4 = italiantable.J4
left outer join French frenchtable on 
	italiantable.A2 = frenchtable.A2 and 
    italiantable.A3 = frenchtable.A3 and 
    italiantable.D2 = frenchtable.D2 and
    italiantable.E2 = frenchtable.E2 and
    italiantable.F2 = frenchtable.F2 and
    italiantable.G2 = frenchtable.G2 and
    italiantable.H2 = frenchtable.H2 and
    italiantable.J4 = frenchtable.J4
left outer join English englishtable on 
	italiantable.A2 = englishtable.A2 and 
    italiantable.A3 = englishtable.A3 and 
    italiantable.D2 = englishtable.D2 and
    italiantable.E2 = englishtable.E2 and
    italiantable.F2 = englishtable.F2 and
    italiantable.G2 = englishtable.G2 and
    italiantable.H2 = englishtable.H2 and
    italiantable.J4 = englishtable.J4
    
where germantable.nr is NULL

union

select	germantable.A1 as Grischun_Display,
		lower(germantable.A2) as Grischun_Search, 
		germantable.D1 as Sursilvan_Display,
        lower(germantable.D2) as Sursilvan_Search,
		germantable.E1 as Sutsilvan_Display,
        lower(germantable.E2) as Sutsilvan_Search,
		germantable.F1 as Surmiran_Display, 
        lower(germantable.F2) as Surmiran_Search, 
		germantable.G1 as Puter_Display, 
        lower(germantable.G2) as Puter_Search, 
		germantable.H1 as Vallader_Display,
		lower(germantable.H2) as Vallader_Search,
		germantable.B1 as German_Display,
        lower(germantable.B2) as German_Search, 
		frenchtable.B1 as French_Display, 
        lower(frenchtable.B2) as French_Search, 
		italiantable.B1 as Italian_Display, 
        lower(italiantable.B2) as Italian_Search, 
        englishtable.B1 as English_Display,
        lower(englishtable.B2) as English_Search,  
		germantable.J4 as conjugation,
        germantable.B0,
        germantable.A3,
        'monpledari',
        frenchtable.nr
from French frenchtable 
left outer join Italian italiantable on 
	italiantable.A2 = frenchtable.A2 and 
    italiantable.A3 = frenchtable.A3 and 
    italiantable.D2 = frenchtable.D2 and
    italiantable.E2 = frenchtable.E2 and
    italiantable.F2 = frenchtable.F2 and
    italiantable.G2 = frenchtable.G2 and
    italiantable.H2 = frenchtable.H2 and
    italiantable.J4 = frenchtable.J4
left outer join German germantable on 
	germantable.A2 = frenchtable.A2 and 
    germantable.A3 = frenchtable.A3 and 
    germantable.D2 = frenchtable.D2 and
    germantable.E2 = frenchtable.E2 and
    germantable.F2 = frenchtable.F2 and
    germantable.G2 = frenchtable.G2 and
    germantable.H2 = frenchtable.H2 and
    germantable.J4 = frenchtable.J4

left outer join English englishtable on 
	frenchtable.A2 = englishtable.A2 and 
    frenchtable.A3 = englishtable.A3 and 
    frenchtable.D2 = englishtable.D2 and
    frenchtable.E2 = englishtable.E2 and
    frenchtable.F2 = englishtable.F2 and
    frenchtable.G2 = englishtable.G2 and
    frenchtable.H2 = englishtable.H2 and
    frenchtable.J4 = englishtable.J4
    
where germantable.nr is NULL and italiantable.nr is NULL

union

select	germantable.A1 as Grischun_Display,
		lower(germantable.A2) as Grischun_Search, 
		germantable.D1 as Sursilvan_Display,
        lower(germantable.D2) as Sursilvan_Search,
		germantable.E1 as Sutsilvan_Display,
        lower(germantable.E2) as Sutsilvan_Search,
		germantable.F1 as Surmiran_Display, 
        lower(germantable.F2) as Surmiran_Search, 
		germantable.G1 as Puter_Display, 
        lower(germantable.G2) as Puter_Search, 
		germantable.H1 as Vallader_Display,
		lower(germantable.H2) as Vallader_Search,
		germantable.B1 as German_Display,
        lower(germantable.B2) as German_Search, 
		frenchtable.B1 as French_Display, 
        lower(frenchtable.B2) as French_Search, 
		italiantable.B1 as Italian_Display, 
        lower(italiantable.B2) as Italian_Search, 
        englishtable.B1 as English_Display,
        lower(englishtable.B2) as English_Search,
		germantable.J4 as conjugation,
        germantable.B0,
        germantable.A3,
        'mypledari',
        englishtable.nr
from English englishtable 

left outer join French frenchtable on 
	frenchtable.A2 = englishtable.A2 and 
    frenchtable.A3 = englishtable.A3 and 
    frenchtable.D2 = englishtable.D2 and
    frenchtable.E2 = englishtable.E2 and
    frenchtable.F2 = englishtable.F2 and
    frenchtable.G2 = englishtable.G2 and
    frenchtable.H2 = englishtable.H2 and
    frenchtable.J4 = englishtable.J4
left outer join Italian italiantable on 
	italiantable.A2 = englishtable.A2 and 
    italiantable.A3 = englishtable.A3 and 
    italiantable.D2 = englishtable.D2 and
    italiantable.E2 = englishtable.E2 and
    italiantable.F2 = englishtable.F2 and
    italiantable.G2 = englishtable.G2 and
    italiantable.H2 = englishtable.H2 and
    italiantable.J4 = englishtable.J4
left outer join German germantable on 
	germantable.A2 = englishtable.A2 and 
    germantable.A3 = englishtable.A3 and 
    germantable.D2 = englishtable.D2 and
    germantable.E2 = englishtable.E2 and
    germantable.F2 = englishtable.F2 and
    germantable.G2 = englishtable.G2 and
    germantable.H2 = englishtable.H2 and
    germantable.J4 = englishtable.J4

where germantable.nr is NULL and italiantable.nr is NULL and frenchtable.nr is null;


create index i_Grischun_Search on alllanguages(Grischun_Search);