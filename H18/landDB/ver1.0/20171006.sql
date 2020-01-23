-- gir feilmedling fra 2. gangs kjøring og bør kommenteres vekk
create schema landdb; 
-- denne og resten bør stå uforandret
set search_path to landdb;
-- lager databasen


drop  TABLE IF EXISTS countries;
drop  TABLE IF EXISTS states;
drop  TABLE IF EXISTS cities;

\i countries.sql
\i states.sql
\i cities.sql

-- Jeg ønsker egne tabeller hvor bl.a. primærnøkkelen i Land er koden
-- på 2 bokstaver (Countries.sortname). Jeg vil kalle denne lkode (for
-- landkode). Ønsker også å velge attributtnavn, slik at vi med
-- naturlig join kan få entabell over byer, regioner og land.

/*
 * Land ( lkode, lnavn ) 
 * Regioner ( rid, rnavn, lkode )    Regioner.lkode ---> Land.lkode
 * Byer ( bid, bnavn, rid )          Byer.rid ---> Regioner.rid
 *
*/


drop table if exists Land;
drop table if exists Regioner;
drop table if exists Byer;
-- Ny landtabell:

CREATE TABLE IF NOT EXISTS Land (
  lkode char(2) primary key,
  lnavn varchar(150) not null
);

insert into Land
select C.sortname, C.name
from countries C;

-- Ny regiontabell:

CREATE TABLE IF NOT EXISTS Regioner (
  rid int NOT NULL, 
  rnavn varchar(30) NOT NULL,
  lkode char(2)  NOT NULL DEFAULT 'XX',
  PRIMARY KEY (rid)
);

insert into Regioner
select S.id, S.name, C.sortname
from countries C join states S on C.id = S.country_id;

-- Ny bytabell:

CREATE TABLE IF NOT EXISTS Byer (
  bid int NOT NULL,
  bnavn varchar(30) NOT NULL,
  rid int NOT NULL, -- regionen (Regioner.id) byen ligger i
  PRIMARY KEY (bid) 
);

insert into Byer
select C.id, C.name, S.id
from Cities C join States S 
     on C.state_id = S.id
;


-- Trenger ikke disse lenger
drop  TABLE IF EXISTS countries;
drop  TABLE IF EXISTS states;
drop  TABLE IF EXISTS cities;


-- har vi valgt fornuftige attributtnavn for naturlig join?


-- denne ble ikke inkl. 
select *
from Land natural join regioner;



-- INKLUDERT!!
select *
from Land natural join regioner natural join byer;

select *
from Land natural join regioner natural join byer
where Land.lkode = 'NO';


-- Finnes det regioner med samme navn?
-- (inkludert!)
select rnavn, count(*) as antall_med_samme_navn
from Regioner
group by rnavn
order by antall_med_samme_navn desc;


-- inkludert!
select rnavn, count(*) as antall_med_samme_navn
from Regioner
group by rnavn
having count(*) > 1
order by antall_med_samme_navn desc;

-- Byer med samme navn?
-- ikke inkl.
select bnavn, count(*) as antall_med_samme_navn
from Byer
group by bnavn
having count(*) > 7
order by antall_med_samme_navn desc;

-- spørsmål fra aud:
-- ? 
select bnavn, max(bid), count(*) as antall_med_samme_navn
from Byer
where bnavn in ('Madison', 'Richmond', 'Victoria', 'Bergen')
group by bnavn
having count(*) > 2
order by bnavn;

-- Byer fordelt på regioner:

--inkludert: 
select R.rnavn, count(*) as antall
from Regioner R natural join  Byer B
group by R.rnavn -- bare dette + agregeringsfunksjoner bak select
order by antall desc;

-- feil i forhold til koden over: 
-- FEILMELDING!!!
select R.rnavn, B.bid, count(*) as antall
from Regioner R natural join  Byer B
group by R.rnavn -- bare dette + agregeringsfunksjoner bak select
order by antall desc;

--inkludert 
select R.rnavn, sum(B.bid), count(*) as antall
from Regioner R natural join  Byer B
group by R.rnavn -- bare dette + agregeringsfunksjoner bak select
order by antall desc;



select R.rnavn, B.bid, count(*) as antall
from Regioner R natural join Byer B
group by R.rnavn  -- bare dette + agregeringsfunksjoner bak select
order by antall desc;

-- inkludert!
select R.lkode, R.rid, R.rnavn, count(*) as antall_byer_i
from Regioner R natural join Byer B
group by R.rid, R.rnavn, R.lkode -- bare disse + agregeringsfunksjoner bak select
order by antall_byer_i desc;

-- Byer i Norge fordelt på fylker(regioner):
-- først sortert på region, uten group by:

--inkludert!
select R.rid, R.rnavn region, B.bnavn bynavn
from Regioner R natural join Byer B
where R.lkode='NO'
order by rnavn;

-- inkludert!
select R.rid, R.rnavn, count(*) as antall
from Regioner R natural join Byer B
where R.lkode='NO'
group by R.rid, R.rnavn
order by R.rnavn;

-- Fylker i Norge med bare én by:

select R.rid, R.rnavn, count(*) as antall
from Regioner R natural join Byer B
where R.lkode='NO'
group by R.rid, R.rnavn
having count(*) = 1;


-- Byer i Oslo??!

select *
from Byer B natural join Regioner R
where rnavn = 'Oslo';


-- Byer pr. region i hele verden (databasen)

-- inkludert!
select R.rid, R.rnavn, count(*) as antall
from Regioner R natural join Byer B
-- where R.lkode='NO'
group by R.rid, R.rnavn
order by antall desc;

-- Byer pr. land og region

-- inkludert!
select R.lkode, R.rid, R.rnavn, count(*) as antall
from Regioner R natural join Byer B
group by R.rid, R.rnavn, R.lkode
order by R.lkode, antall desc;

-- Byer pr land

select L.lnavn, R.lkode, count(*) as antall
from Regioner R natural join Byer B natural join Land L
group by R.lkode, L.lnavn
order by antall desc;

-- Byer i Norge fra Bydata:
-- inkludert!
select navn
from Bydata
where kode = 'NO';

select bnavn
from Byer B natural join Regioner R
where R.lkode = 'NO';

-- Byer i begge (forutsetter likt stava)
-- inkludert! 
select *
from Bydata BD join Byer B on BD.navn = B.bnavn
where BD.kode = 'NO';


-- Norske byer i Bydata som ikke er i Byer:
-- inkludert!
select *
from Byer B natural join Regioner R
       join ByData BD on ( R.lkode = BD.kode and R.lkode = 'NO' and BD.region=R.rnavn)
where B.bnavn <> BD.navn
;

-- inkludert !
select bnavn, max(bid), count(*) as antall_med_samme_navn
from Byer
where bnavn in ('Madison', 'Richmond', 'Victoria', 'Bergen')
group by bnavn
having count(*) > 5
order by bnavn;


 -- inkludert ? 
select *
from Byer B natural join Regioner R
       join ByData BD on ( R.lkode = BD.kode and R.lkode = 'NO' and BD.region=R.rnavn)
where B.bnavn <> BD.navn and R.rnavn <> BD.region;



-- inkludert
select *
from Bydata
where kode = 'NO'
      and not navn in ( select bnavn from Byer  );

-- inkludert 
select *
from Bydata B
where kode = 'NO'
      and not exists ( select * from Byer BB
      	      	       	 where B.navn = BB.bnavn );


-- det samme for hele verden:

select *
from Bydata
where not navn in ( select bnavn from Byer  );

select *
from Bydata B
where not exists ( select * from Byer BB
      	      	       	 where B.navn = BB.bnavn );

-- Byer i Norden fordelt på fylker(regioner):
-- først sortert på region, uten group by:

--inkludert: gir syntax error
select R.rid, R.rnavn region, B.bnavn bynavn
from Regioner R natural join Byer B
where R.lkode='NO' or R.lkode ='SE' or ...
order by rnavn;

--inkludert 
select L.lnavn, R.rid, R.rnavn region, B.bnavn bynavn
from Regioner R natural join Byer B natural join Land L
where R.lkode in ('DK', 'FI', 'IS', 'NO', 'SE')
order by rnavn;

-- er det ingen byer på Island?

select *
from Regioner R natural join Byer B natural join Land
where R.lkode = 'IS';



-- Byer i Norge som finnes i begge tabeller (bynavn)


select *
from Bydata BD join Byer B on BD.navn = B.bnavn
where BD.kode = 'NO';

\d region


-- men ikke i samme fylke:

--inkludert 
select *
from Bydata BD
     join Byer B on BD.navn = B.bnavn
     natural join Regioner
where BD.kode = 'NO';

-- Bergen finnes i flere land!

-- Byer i Norge, ligger de i samme fylke i de to tabellene?

-- inkludert 
select *
from Bydata BD
     join Byer B on BD.navn = B.bnavn
     join Regioner R on B.rid = R.rid and R.lkode = 'NO'
where BD.kode = 'NO';

-- inkludert 
select *
from Bydata BD
     join Byer B on BD.navn = B.bnavn
     join Regioner R on B.rid = R.rid and R.lkode = 'NO'
where BD.kode = 'NO'
      and BD.region <> R.rnavn;


-- hele verden:

-- inkludert 
select B.bnavn, BD.navn, R.rnavn, BD.region, R.lkode
from Bydata BD
     join Byer B on BD.navn = B.bnavn
     join Regioner R on B.rid = R.rid -- and R.lkode = 'NO'
where BD.region <> R.rnavn;

-- her fikk vi også med byer med samme navn.
-- La oss gjøre det samme for byer med som finnes kun en gang i begge:

-- inkludert 
select B.bnavn
from Bydata BD
     join Byer B on BD.navn = B.bnavn
group by BD.navn, B.bnavn
having count(*) > 1;


-- inkludert 
select B.bnavn, BD.navn, R.rnavn, BD.region, R.lkode
from Bydata BD
     join Byer B on BD.navn = B.bnavn
     join Regioner R on B.rid = R.rid -- and R.lkode = 'NO'
where BD.region <> R.rnavn
      and B.bnavn not in ( select B.bnavn
                           from Bydata BD
                                join Byer B on BD.navn = B.bnavn
                           group by BD.navn, B.bnavn
                           having count(*) > 1 );

-- her mista vi mange byer med samme navn som ikke er samme by


select B.bnavn, R.rnavn, BD.navn, BD.region, R.lkode
from Bydata BD
     join Byer B on BD.navn = B.bnavn
     join Regioner R on B.rid = R.rid
where BD.region <> R.rnavn
     and BD.kode = R.lkode;


-- I Sambandstatene er det mange byer med samme navn. La oss liste opp
-- de som feorekommer flere ganger og i hvilke stater. Først, finnes
-- det byer med samme navn i samme stat (region)?

-- inkludert 
select B.bnavn, R.rnavn, count(*)
from Byer B natural join Regioner R
where R.lkode = 'US'
group by B.bnavn, R.rnavn
having count(*) > 1;

select *
from Byer B natural join Regioner R
where B.bnavn = 'Washington Township';

-- Dette er nok snakk om en og samme by, selv om den ligger med to
-- forskjellige koder (bid) i Byer.

-- Her er problemet at vi får med alle byer, også de hvis navn kun
-- forekommer én gang:

select B.bnavn, R.rnavn
from Byer B natural join Regioner R
where R.lkode = 'US'
order by B.bnavn;

-- Tabell over byer i Sambandsstatene som det finnes to eller fler av med samme navn:

-- inkludert 
select B.bnavn bynavn, count(*) as antall
from Byer B natural join Regioner R
where R.lkode = 'US'
group by B.bnavn
having count(*) > 5
order by B.bnavn;

-- inkludert 
select B.bnavn bynavn, R.rnavn
from Byer B natural join Regioner R
     join ( select B.bnavn bynavn, count(*) as antall
            from Byer B natural join Regioner R
            where R.lkode = 'US'
            group by B.bnavn
            having count(*) > 9 ) as H -- for Hyppig forekommende

     on B.bnavn = H.bynavn
where R.lkode = 'US'
order by H.antall desc, B.bnavn asc, R.rnavn;

-- inkludert
select B.bnavn bynavn, R.rnavn, H.antall
from Byer B natural join Regioner R
     join ( select B.bnavn bynavn, count(*) as antall
            from Byer B natural join Regioner R
            where R.lkode = 'US'
            group by B.bnavn
            having count(*) > 9 ) as H -- for Hyppig forekommende

     on B.bnavn = H.bynavn
where R.lkode = 'US'
order by H.antall desc, B.bnavn asc, R.rnavn;

-- inkludert 
select B.bnavn bynavn, R.rnavn, H.antall
from Byer B natural join Regioner R
     join ( select B.bnavn bynavn, count(*) as antall
            from Byer B natural join Regioner R
            where R.lkode = 'US'
            group by B.bnavn
            having count(*) > 7 ) as H -- for Hyppig forekommende

     on B.bnavn = H.bynavn
where R.lkode = 'US'
order by H.antall desc, B.bnavn asc, R.rnavn;


-- Gir den indre (nøsta) setningen et navn:
-- inkludert 
drop view if exists VanligeBynavn;
create view VanligeBynavn as (
            select B.bnavn bynavn, count(*) as antall
            from Byer B natural join Regioner R
            where R.lkode = 'US'
            group by B.bnavn
            having count(*) > 5 
);




-- inkludert 
select B.bnavn, R.rnavn, H.antall, H.bynavn
from Byer B natural join Regioner R
     join VanligeBynavn as H
     on B.bnavn = H.bynavn
where R.lkode = 'US'
order by H.antall desc, B.bnavn asc, R.rnavn;




-- Hva gjenstår ?
-- mer nøstete 
-- mengdeoperatorer: union, snitt, differanse
-- flere join (outer, cross)
-- any, some, all


select avg(pop)
from tallforland;


select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop > ( select avg(pop)
                from tallforland )
;
