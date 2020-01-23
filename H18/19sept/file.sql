-- \i file.sql
drop table if exists forfatter;
create table forfatter(forfatter_id int primary key, navn varchar(20) not null, land char(2));
drop table if exists bok; 
create table bok(id int primary key, forfatter_id int not null references forfatter(forfatter_id), tittel text not null, utgitt int not null, utgave int, opplag int); 

insert into forfatter(forfatter_id, navn, land) 
       values 
	       -- (0, 'George Orwell', 'UK'),  
	          (1, 'J.R.R Tolkien', 'UK'),
			  (2, 'Terry Halpin', 'AU'),
			  (3, 'Jo Nesbø', 'NO'), 
			  (4, 'Henrik Ibsen', 'NO'),
			  (5, 'Mathias Stang', 'NO');
			  
			  
insert into bok(id, forfatter_id, tittel, utgitt, utgave, opplag) values
    (0, 0, 'Nineteen Eighty-Four', 1949, null, null),
    (1, 2, 'Information Modeling Language and Relational Databases', 2010, 2, null),
    (2, 0, 'Animal Farm', 1945, null, null),
    (4, 3, 'Snømannen', 2007, null, null),
    (5, 3, 'Hodejegerne', 2008, 1, 120000),
	(3, 1, 'The Hobbit', 1937, 1, 1500),
	(6, 1, 'The Fellowship of the Ring', 1954, null, null),
	(7, 1, 'The Two Towers', 1954, null, null),
	(8, 1, 'The Return of the King', 1955, null, null),
	(9, 4, 'Peer Gynt', 1867, null, null),
	(10, 4, 'Et dukkehjem', 1879, 1, 8000),
	(11, 4, 'Et dukkehjem', 1880, 2, 3000); 
	
select * from bok; 

select * from forfatter;

select * from bok order by id;

\d

\d bok 

select *
from bok
where utgitt = 1954; 

select * 
from bok 
where utgitt <> 1954; 

select * 
from bok 
where utgitt != 1954; 

select tittel, utgitt
from bok 
where utgitt <= 1954; 

select tittel, utgitt
from bok
where tittel = 'Et dukkehjem';

select tittel, utgitt
from bok
where tittel like 'Et dukkehjem';

select tittel, utgitt
from bok
where tittel like 'The %';

select tittel, utgitt 
from bok
where tittel like '%The%'; 

select tittel, utgitt
from bok
where tittel like '%Hobbit%';

select tittel, utgitt
from bok
where tittel like '%hobbit%';


select tittel, utgitt
from bok
where tittel like '%The' and utgitt >= 1954;

select tittel, utgitt 
from bok 
where tittel like '%The' or not utgitt >= 1954; 

select tittel, utgitt 
from bok 
where utgitt >= 1950 and utgitt < 1960; 

select tittel, utgitt 
from bok
where utgitt between 1950 and 1960; 

select tittel, utgitt
from bok 
where utgitt in (1950, 1954, 1955); 

select tittel, utgitt 
from bok
where utgitt between 1954 and 1955; 

SELECT tittel, utgitt 
FROM bok
WHERE utgitt BETWEEN 1954 AND 1955; 

select * from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id; 

select tittel, navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;


select tittel, navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;

select forfatter_id, tittel, navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id; 

select bok.forfatter_id, tittel, navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id; 

select bok.forfatter_id, bok.tittel, forfatter.navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id; 

select bok.forfatter_id, bok.tittel, forfatter.navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id 
where forfatter.navn = 'Jo Nesbø'; 

select bok.forfatter_id, bok.tittel, forfatter.navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id 
where bok.utgitt between 1950 and 1960; 

select bok.forfatter_id, bok.tittel, forfatter.navn 
from bok inner join  forfatter on bok.forfatter_id = forfatter.forfatter_id 
order by utgitt; 

select bok.forfatter_id, bok.tittel, forfatter.navn 
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
order by utgitt desc; 

select bok.forfatter_id, bok.tittel, forfatter.navn, bok.utgitt 
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
order by utgitt desc; 

select bok.forfatter_id, bok.tittel, forfatter.navn, bok.utgitt 
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
order by utgitt, tittel; 

select bok.forfatter_id, bok.tittel, forfatter.navn, bok.utgitt 
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
order by forfatter.navn, bok.utgitt; 

select b.forfatter_id, b.tittel, f.navn, b.utgitt
from bok b inner join forfatter f on b.forfatter_id = f.forfatter_id 
order by f.navn, b.utgitt; 

select b.forfatter_id, b.tittel, f.navn, b.utgitt
order by f.navn, b.utgitt
from bok b inner join forfatter f on b.forfatter_id = f.forfatter_id; 

select * from bok, forfatter; 

select b.forfatter_id, b.tittel, f.navn, b.utgitt 
from bok b inner join forfatter f on b.forfatter_id = f.forfatter_id 
order by f.navn, b.utgitt; 

select * from bok, forfatter
where bok.forfatter_id = forfatter.forfatter_id; 
















	
	