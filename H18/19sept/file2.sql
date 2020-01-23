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





	
	