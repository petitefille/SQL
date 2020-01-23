\d bydata

select * from bydata
where kode = 'NO'
order by region, navn;

-- retter opp 'Ãstfold':
update bydata
set  region = 'Østfold'
where navn = 'Moss';


-- får ut de byene som har bynavn med nøyaktig 5 tegn (tegnet trenger ikke være en bokstav)
select * from bydata
where navn like '_____'
order by navn;

\d Land

\d LandTlfkode

select * from LandTlfkode;

select l.kode, l.navn
from land l join landtlfkode k on l.pref=k.pref;

drop table if exists Afrikaland;
create table Afrikaland (
       kode char(2) primary key,
       navn text unique
);

select l.kode, l.navn
from land l join landtlfkode k on l.pref=k.pref;


-- eksplisitt join 
insert into Afrikaland
select l.kode, l.navn
from land l join landtlfkode k on l.pref=k.pref;


-- implisitt join 
select L.kode, L.navn
from land L, landtlfkode K
where  L.pref = K.pref;

/* 
*
* Lysark om join 
*
* */





-- vi kan ha uttrykk i select:

-- || svarer til + mellom strenger i java
select kode || ' er koden for ' || navn as Afrikaland 
from Afrikaland
order by kode;

select 2*3;

select 2*3+52 as femtito_pluss_2x3;

select 7 sju_x1, 7*2 x2, 7*3 x3, 7*4 x4, 7*5 x5, 7*6 x6, 7*7 x7, 7*8 x8, 7*9 x9;

select 7 sju_x1, 7*2 x2, 7*3 x3, 7*4 x4, 7*5 x5, 7*6 x6, 7*7 x7, 7*8 x8, 7*9 x9,
       kode
from afrikaland;

select count(*) from afrikaland;

select * from bydata
where kode = 'NO'
order by region, navn;

select sum(pop) 
from bydata
where kode = 'NO';

select L.kode, pop
from Land L natural join TallForLand T
where L.kode = 'NO';

select B.navn, B.pop, L.kode, T.pop
from Land L natural join TallForLand T
     join Bydata B on B.kode = L.kode
where L.kode = 'NO';

select max(T.pop) - sum(B.pop)
from Land L natural join TallForLand T
     join Bydata B on B.kode = L.kode
where L.kode = 'NO';

select 2045060 + 2964093;

-- navn for byer i belgia:

select navn
from Bydata
where kode = 'BE';

-- hva er problemet med denne?
select B.*
from bydata B natural join Afrikaland A;

select B.*
from bydata B inner join Afrikaland A on B.kode=A.kode;

\h alter table

\d afrikaland

alter table Afrikaland
rename navn TO land;

select B.navn, B.lnavn, B.region
from bydata B, Afrikaland A
where b.kode=a.kode;

select B.*
from bydata B natural join Afrikaland A
where B.brdgr between -0.5 and 0.5
order by B.lnavn desc, B.region;


-- ulike landnavn:

select *
from Bydata B inner join Land L on B.kode=L.kode
where B.lnavn <> L.navn;

select B.lnavn, L.navn
from Bydata B inner join Land L on B.kode=L.kode
where B.lnavn <> L.navn;


select B.lnavn navn_i_Bydata, L.navn navn_i_Land
from Bydata B inner join Land L on B.kode=L.kode
where B.lnavn <> L.navn
-- helt likt setningen over hit ...
group by B.lnavn, L.navn;


-- hvor mange tupler får vi med?

-- ikke inkl.
select L.kode as landkode, B.lnavn navn_i_Bydata, L.navn navn_i_Land
from Bydata B inner join Land L on B.kode=L.kode
where B.lnavn <> L.navn
group by B.lnavn, L.navn, L.kode;

-- ikke inkl. 
select B.lnavn
from bydata B inner join Afrikaland A on B.kode=A.kode
where B.brdgr between -0.5 and 0.5
group by B.lnavn
order by B.lnavn;


-- ikke inkl. 
select B.lnavn, L.navn
from bydata B inner join Afrikaland A 
              on B.kode=A.kode
        inner join
     Land L   on L.kode=A.kode
where B.brdgr between -0.5 and 0.5
order by B.lnavn;

-- ikke inkl. 
select B.lnavn, L.navn
from bydata B inner join Afrikaland A 
              on B.kode=A.kode
        inner join
     Land L   on L.kode=A.kode
where B.brdgr between -0.5 and 0.5
group by B.lnavn, L.navn
order by B.lnavn;


--INKLUDERT! 
select B.lnavn , L.navn, count(*) as antall_byer_nær_ekvator
from bydata B inner join Afrikaland A 
              on B.kode=A.kode
        inner join
     Land L   on L.kode=A.kode
where B.brdgr between -0.5 and 0.5
group by B.lnavn, L.navn
order by B.lnavn;


-- ikke inkl. 
select B.lnavn, L.navn, count(*) as antall_byer_nær_ekvator
from bydata B inner join Afrikaland A 
              on B.kode=A.kode
        inner join
     Land L   on L.kode=A.kode
where B.brdgr between -0.5 and 0.5
group by B.lnavn, L.navn
having count(*) > 1
order by B.lnavn;

select L.navn as har_2_eller_flere,
       count(*) as antall_byer_nær_ekvator
from bydata B inner join Afrikaland A 
              on B.kode=A.kode
        inner join
     Land L   on L.kode=A.kode
where B.brdgr between -0.5 and 0.5
group by L.navn
having count(*) > 1
order by L.navn;

-- Oppgave: Finn byer nær ekvator i hele verden.



-- INKLUDERT 
select L.navn as land,
       count(*) as antall_byer_nær_ekvator
from bydata B 
        inner join
     Land L   on L.kode=B.kode
where B.brdgr between -0.5 and 0.5
group by L.navn
having count(*) > 0
order by L.navn;







-- rett opp for Oymyakon:

select * from bydata
where navn = 'Oymyakon';

update bydata
set  brdgr=63.460833,
     lnggr=142.785833 
where navn = 'Oymyakon';


--INKLUDERT!
-- hvilken by ligger nærmest ekvator 
select L.navn as land,
       count(*) as antall_byer_nær_ekvator,
       min(B.brdgr) as minst
from bydata B 
        inner join
     Land L   on L.kode=B.kode
where B.brdgr between -0.5 and 0.5
group by L.navn
having count(*) > 0
order by L.navn;

-- hvilken by ligger nærmest ekvator og har antall byer nær ekvator større enn 4 
select L.navn as land,
       count(*) as antall_byer_nær_ekvator,
       min(B.brdgr) as minst
from bydata B 
        inner join
     Land L   on L.kode=B.kode
where B.brdgr between -0.5 and 0.5
group by L.navn
having count(*) > 4
order by L.navn;


-- hvilket land har flest byer i databasen?

select lnavn, count(*) as antall_byer
from Bydata
group by kode, lnavn;

select lnavn, count(*) as antall_byer, min(navn)
from Bydata
group by kode, lnavn;


select lnavn, count(*) as antall_byer, min(navn)
from Bydata
group by kode, lnavn;

-- land og navn heter det samme

select lnavn, count(*) as antall_byer, min(navn)
from Bydata
group by kode, lnavn
having count(*) = 1 
and min(navn) = lnavn;

select lnavn, count(*) as antall_byer, min(navn)
from Bydata
group by kode, lnavn
having count(*) > 300;

select kode as kode, count(*) as ant_byer
from Bydata
group by kode;

create view AntByer as
select kode as kode, count(*) as ant_byer
from Bydata
group by kode;

select max(ant_byer) from AntByer;

select lnavn, count(*) as antall_byer, min(navn), max(navn)
from Bydata
group by kode, lnavn
having count(*) = ( select max(ant_byer) from AntByer );

select lnavn, count(*) as antall_byer, min(navn), max(navn)
from Bydata
group by kode, lnavn
having count(*) = ( select max(ant_byer)
                    from ( select count(*) as ant_byer
                           from Bydata 
                           group by kode
                         ) 
                         as Antbyer 
                  );


select lnavn, count(*) as antall_byer, min(navn), max(navn)
from Bydata
group by kode, lnavn
having count(*) = ( select min(ant_byer)
                    from ( select count(*) as ant_byer
                           from Bydata 
                           group by kode
                         ) 
                         as Antbyer 
                  );






select lnavn, count(*) as antall_byer, min(navn), max(navn)
from Bydata
group by kode, lnavn
having count(*) between -1 + ( select avg(ant_byer)
                    from ( select count(*) as ant_byer
                           from Bydata 
                           group by kode
                         ) 
                         as Antbyer 
                  )
                and 1 + ( select avg(ant_byer)
                    from ( select count(*) as ant_byer
                           from Bydata 
                           group by kode
                         ) 
                         as Antbyer 
                  )
;




