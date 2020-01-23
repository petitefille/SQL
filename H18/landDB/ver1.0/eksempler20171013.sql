select *
from Land L
where L.lkode not in (select kode from TallForLand);


select * 
from TallForLand T 
where T.kode not in (select lkode from Land); 

select sum(pop)
from tallforland;

select avg(pop)
from tallforland; 




--------------------------------------------------
set search_path to landdb;

-- har vi akkurat de samme landene i de to tabellene Land og TallForLand?

select * 
from Land L join TallForLand T on L.lkode=T.kode;

select *
from Land L
where L.lkode not in ( select kode from TallForLand );

select *
from TallForLand T
where T.kode not in ( select lkode from Land );

/*
 kode |   pop   |  km2  |       bnp             google
------+---------+-------+------------------     ------
 CW   |  141766 |   444 | 5.6*1000000000        Curaçao
 TL   | 1154625 | 15007 | 6.129*1000000000      Øst-Timor
 GG   |   65228 |    78 | 2.742*1000000000      Guernsey
 IM   |   75049 |   572 | 4.076*1000000000      Man (Isle of)
 JE   |   90812 |   116 | 5.1*1000000000        Jersey
 XK   | 1800000 | 10887 | 7.15*1000000000       Kosovo
 ME   |  666730 | 14026 | 4.518*1000000000      Montenegro
 BL   |    8450 |    21 |                       Saint-Barthélemy
 MF   |   35925 |    53 | 561.5*1000000         Saint-Martin
 SX   |   37429 |    34 | 794.7*1000000         Sint Maarten
(10 rows)
*/

-- sum

select sum(pop)
from tallforland;

-- gjennomsnitt

select avg(pop)
from tallforland;

-- Land med større befolkning enn gjennomsnittet:


select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop > ( select avg(pop)
                from tallforland )
;

----------------------------------------------------

-- inkl. 
select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop > 5 * ( select avg(pop)
                from tallforland )
;

-- all
-- Land som har større befolkning enn alle land som har flateinnhold < 70.000 kvadratkilometer
--------------------------------------
--Notater on the board: < > = all any some 
select TFL.pop 
from tallforland TFL
where TFL.km2 < 70000;

select max(TLF.pop)
from tallforland TLF
where TLF.km2 < 70000;
---------------------------------------------------
select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > all (select TFL.pop--, TLF.kode  
                        from tallforland TFL
                        where TFL.km2 < 70000); 

select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > (select max(TLF.pop)
                from tallforland TLF
                where TLF.km2 < 70000);

				
(select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > all (select TFL.pop--, TLF.kode  
                        from tallforland TFL
                        where TFL.km2 < 70000)) 
except 

(select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > (select max(TLF.pop)
                from tallforland TLF
                where TLF.km2 < 70000));

(select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > all (select TFL.pop--, TLF.kode  
                        from tallforland TFL
                        where TFL.km2 < 70000)) 
union 

(select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > (select max(TLF.pop)
                from tallforland TLF
                where TLF.km2 < 70000));

(select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > all (select TFL.pop--, TLF.kode  
                        from tallforland TFL
                        where TFL.km2 < 70000)) 
union all 

(select T.pop, L.lnavn 
from TallForLand T join Land L 
    on T.kode = L.lkode 
where T.pop > (select max(TLF.pop)
                from tallforland TLF
                where TLF.km2 < 70000));				
				

( select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop > all ( select TFL.pop --, TFL.kode
                        from tallforland TFL
                        where TFL.km2 < 70000) )
intersect

( select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop >          ( select max(TFL.pop) 
                        from tallforland TFL
                        where TFL.km2 < 70000 ));
------------------------------------------------




( select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop > all ( select TFL.pop --, TFL.kode
                        from tallforland TFL
                        where TFL.km2 < 70000) )
intersect all

( select T.pop, L.lnavn
from TallForLand T join Land L
     on T.kode = L.lkode
where T.pop >          ( select max(TFL.pop) 
                        from tallforland TFL
                        where TFL.km2 < 70000 ));

						
						
						
						
						
						
-- befolkningstall i norske byer
-- ikke inkl. 
select BD.navn, BD.pop
from Bydata BD
where BD.kode='NO';



-- byer i India som har befolkning som er større enn det dobbelte av befolkningen i samtlige norske byer
select BD.navn, BD.pop
from Bydata BD
where BD.kode ='IN'
      and BD.pop > all ( select B.pop*2
                         from Bydata B
                         where B.kode='NO' )
;


-- byer i Norge som har befolkning som er større enn i noen indisk by

-- inkl. 
select BD.navn, BD.pop
from Bydata BD
where BD.kode = 'NO'
    and BD.pop > any (select B.pop
                      from Bydata B
                      where B.kode='IN');
					  
-- inkl. 
					  select BD.navn, BD.pop
from Bydata BD
where BD.kode = 'NO'
    and BD.pop = any (select B.pop
                      from Bydata B
                      where B.kode='IN');

 -- inkl.
select BD.navn, BD.pop
from Bydata BD
where BD.kode = 'NO'
and BD.pop > some (select B.pop
                    from Bydata B
                    where B.kode='IN');					  



-- La oss sjekke hvilken by i India som har minst folketall:
-- inkl. 
select BD.navn, BD.pop
from Bydata BD
where BD.kode ='IN'
      and BD.pop = (select min(pop)
                    from Bydata
                    where kode = 'IN');


-- Hva med Kina?

select BD.navn, BD.pop
from Bydata BD
where BD.kode ='CN'
      and BD.pop = (select min(pop)
                    from Bydata
                    where kode = 'CN');

-- Oversikt over befolkning i land og dets byer:
-- OBS: select A,B ... 
--      group by A, B 
-- hvis ikke for eks. 
-- select A, aggregatfunksjon(B), 
-- group by A 
-- inkl.
-- inkl. 
select L.isonavn land,
       T.pop folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/T.pop*100) prosent_av_total
from   iso3166 L
  join Tallforland T on L.lkode=T.kode
  join Bydata B on T.kode=B.kode
group by L.isonavn, T.pop
having T.pop > 50000000
order by prosent_av_total;

-- inkl og denne skal gi samme antall 
-- som tabellen over slik at 24 er det 
-- riktige antallet 
select L.isonavn land,
       T.pop folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/T.pop*100) prosent_av_total
from   iso3166 L
  join Tallforland T on L.lkode=T.kode
  join Bydata B on T.kode=B.kode
group by L.isonavn, T.pop
having T.pop > 50000000
order by prosent_av_total;



-- ?? 
select L.isonavn land,
       sum(T.pop) folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/sum(T.pop)*100) prosent_av_total
from iso3166 L
    join Tallforland T on L.lkode=T.kode
    join Bydata B on T.kode=B.kode
group by L.isonavn
having sum(T.pop) > 50000000
order by prosent_av_total;


-- inkl. og gir antall 24 :) 
select L.isonavn land,
       min(T.pop) folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/min(T.pop)*100) prosent_av_total
from   iso3166 L
  join Tallforland T on L.lkode=T.kode
  join Bydata B on T.kode=B.kode
group by L.isonavn
having min(T.pop) > 50000000
order by prosent_av_total;

-- Vi lager et tilsvarende view:


select L.isonavn land,
       T.pop folketall,
       ceil(B.pop) bybefolkning
from   iso3166 L
  join Tallforland T on L.lkode=T.kode
  join Bydata B on T.kode=B.kode
;

drop view if exists Befolkning;
create view Befolkning as
select L.isonavn land,
       T.pop folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/T.pop*100) prosent_av_total
from   iso3166 L
  join Tallforland T on L.lkode=T.kode
  join Bydata B on T.kode=B.kode
group by L.isonavn, T.pop
; -- gir feilmelding. Hvorfor?

drop view if exists Befolkning;
create view Befolkning as
select L.isonavn land,
       T.pop folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/T.pop*100) prosent_av_total
from   iso3166 L
  join Tallforland T on L.lkode=T.kode
  join Bydata B on T.kode=B.kode
group by L.isonavn, T.pop
having T.pop > 0;
;





-- befolkningstetthet:

select T.pop/T.km2 as personerPRkm2
from Tallforland T
order by personerPRkm2;

select T.kode
from Tallforland T
where km2 = 0;

update Tallforland
set km2 = -1 where kode ='VA'; -- for å unnga divisjon med 0. Egentlig 0,4.

select L.lnavn, T.pop/T.km2 as personerPRkm2
from Tallforland T join Land L on L.lkode=T.kode
where km2 > 0
order by personerPRkm2 desc;

/*
*
* Har funnet en tabell over hovedsteder, der også kontinent er
* med. Dette gir data for tre nye tabeller i databasen. En for land og
* kontinent og en for hovedsteder:
*
* Kontinenter ( kkode, knavn, enavn )
* LandKontinent ( lkode, kkode )
* Hovedsteder ( lkode, hnavn, lengdegr, breddegr )
*
*/

-- Tabell med rådata:

-- Eks: Argentina|Buenos Aires|-34.58333333|-58.666667|AR|South America

drop table capitals;
create table Capitals (
      cname text unique,
      name text,
      lat real,
      long real,
      cc char(2),
      continent text
);

\copy Capitals from 'capitals.txt' with delimiter '|' null ''

-- LandKontinent ( lkode, kkode )

create table LandKontinent ( 
   lkode char(2) primary key,
   kkode char(2)
);

insert into LandKontinent
select C.cc, -- landkoden
       'AF' -- Kontinentkode for Afrika
from Capitals C
where C.continent like 'Afr%'
      and C.cc IS NOT NULL;

insert into LandKontinent
select C.cc, -- landkoden
       'EU' -- Kontinentkode for Afrika
from Capitals C
where C.continent like 'Eur%'
      and C.cc IS NOT NULL;


insert into LandKontinent
  (select C.cc, -- landkoden
       'AN' -- Kontinentkode for Antaktis
  from Capitals C
  where C.continent like 'Anta%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'AS' -- Kontinentkode for Asia
  from Capitals C
  where C.continent like 'Asia%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'AU' -- Kontinentkode for Australia
  from Capitals C
  where C.continent like 'Austr%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'NA' -- Kontinentkode for Nord-Amerika
  from Capitals C
  where C.continent like 'North%%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'SA' -- Kontinentkode for Sør-Amerika
  from Capitals C
  where C.continent like 'South%'
      and C.cc IS NOT NULL)
;


insert into LandKontinent
  (select C.cc, -- landkoden
       'AN' -- Kontinentkode for Antaktis
  from Capitals C
  where C.continent like 'Anta%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'AS' -- Kontinentkode for Asia
  from Capitals C
  where C.continent like 'Asia%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'AU' -- Kontinentkode for Australia
  from Capitals C
  where C.continent like 'Austr%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'NA' -- Kontinentkode for Nord-Amerika
  from Capitals C
  where C.continent like 'North%%'
      and C.cc IS NOT NULL)
union
 (select C.cc, -- landkoden
       'SA' -- Kontinentkode for Sør-Amerika
  from Capitals C
  where C.continent like 'South%'
      and C.cc IS NOT NULL)
;

select L.lnavn, LK.kkode, LK.lkode, L.lkode
from Landkontinent LK inner join Land L
on LK.lkode=L.lkode;

select L.lnavn, LK.kkode, LK.lkode, L.lkode
from Landkontinent LK right outer join Land L
on LK.lkode=L.lkode;

select L.lnavn, LK.kkode, LK.lkode, L.lkode
from Landkontinent LK left outer join Land L
on LK.lkode=L.lkode;

select L.lnavn, LK.kkode, K.knavn, LK.lkode, L.lkode
from Landkontinent LK
       full outer join Land L
           on LK.lkode=L.lkode
       full outer join Kontinenter K
           on K.kkode=LK.kkode
;


select L.lkode, L.lnavn, I.lkode, I.isonavn
from Land L
        full outer join
     iso3166 I
        on L.lkode=I.lkode;

-- hva skjer her?
-- ikke kjør denne 
select L.lkode, L.lnavn, I.lkode, I.isonavn
from Land L
        full outer join
     iso3166 I
        on L.lkode=I.lkode
        and ( L.lkode is null
            or I.lkode is null );

select L.lkode, L.lnavn, I.lkode, I.isonavn
from Land L
        full outer join
     iso3166 I
        on L.lkode=I.lkode
where L.lkode is null
      or I.lkode is null;


select L.lkode, L.lnavn, I.lkode, I.isonavn
from Land L
        left outer join
     iso3166 I
        on L.lkode=I.lkode
where L.lkode is null
      or I.lkode is null;

-- sammenlign med

select L.lkode, L.lnavn, I.lkode, I.isonavn
from Land L
       cross join
     iso3166 I
where L.lkode is null
      or I.lkode is null;

-- og med

select L.lkode, L.lnavn
from Land L
where L.lkode not in
             (select lkode from iso3166);

select L.lkode, L.lnavn
from Land L
where (L.lkode, L.lnavn )  not in
             (select I.lkode, I.isonavn from iso3166 I);


-- hva blir feil her, om tilsynelatende riktig:
select L.lkode, L.lnavn
from Land L
where (L.lkode, L.lnavn )  not in
             (select lkode, lnavn from iso3166 I);

-- Alle forskjeller/mangler i kode og navn:

select L.lkode, L.lnavn, I.lkode, I.isonavn
from Land L
        full outer join
     iso3166 I
        on L.lkode=I.lkode
where L.lkode is null
      or I.lkode is null
      or L.lnavn <> I.isonavn;





select *
from Landkontinent LK natural join Land L;


select *
from Landkontinent LK full join Land L on LK.lkode=L.lkode;


select LK.*, I.lkode, I.isonavn
from Landkontinent LK full join iso3166 I on LK.lkode=I.lkode;

select LK.lkode, K.knavn, I.lkode, I.isonavn
from Landkontinent LK full join iso3166 I on LK.lkode=I.lkode
      full join Kontinenter K on LK.kkode=K.kkode;




-- Land som har en befolkning > 50.000.000
select L.lkode, L.lnavn
from Land L join Tallforland T on L.lkode=T.kode
where T.pop > 50000000;

-- Land i Europa:
select L.lkode, L.lnavn
from Land L natural join Landkontinent LK
where LK.kkode = 'EU';

-- Europeiske land med folketall > 50.000.000:

 (select L.lkode, L.lnavn
  from Land L join Tallforland T on L.lkode=T.kode
  where T.pop > 50000000)
intersect -- mengdesnitt
 (select L.lkode, L.lnavn
  from Land L natural join Landkontinent LK
  where LK.kkode = 'EU')
;



 (select L.lkode, L.lnavn
  from Land L join Tallforland T on L.lkode=T.kode
  where T.pop > 50000000)
intersect all -- multimengdesnitt
 (select L.lkode, L.lnavn
  from Land L natural join Landkontinent LK
  where LK.kkode = 'EU')
;


/*
* Norden består av landene:
  
#        Flagg        Land	Folketall	Areal [km²]	Hovedstad	Kilde
1	Sverige	Sverige	9 747 355	449 964	Stockholm	[3]
2	Danmark	Danmark	5 659 715	43 094	København	[4]
3	Finland	Finland	5 474 094	338 145	Helsingfors	[5]
4	Norge	Norge	5 165 802	385 199	Oslo	[6]
5	Island	Island	325 671	103 000	Reykjavík	[7]
6	Grønland	Grønland1	56 749	2 166 086	Nuuk (Godthåb)	[8]
7	Færøyene	Færøyene1	48 372	1 399	Tórshavn	[9]
8	Åland	Åland2	28 354	1 580	Mariehamn	[10
 */

select * from Land
where lnavn like '%land';


drop table if exists Norden;
create table Norden (
    lkode char(2) primary key
);

insert into Norden values
('FO'),
('GL'),
('NO'),
('SE'),
('DK'),
('IS'),
('FI'),
('AX');

select * from Land L right outer join Norden N on L.lkode=N.lkode;



-- Nordlige land (med hovedstad nord for 50. breddegrad):
-- Først lager vi et view

drop view if exists Hovedsteder;
create view Hovedsteder(lkode, hnavn, bredde, lengde) as
select C.cc, C.name, C.lat, C.long
from Capitals C;


select *
from Land L natural join Hovedsteder H
where H.bredde > 55;

 ( select *
   from Land L natural join Hovedsteder H
   where H.bredde > 55         -- samme tabell som over
 )

union  -- husk unionskompabilitet

 ( select I.lkode, I.isonavn, H.hnavn, H.bredde, H.lengde
   from ISO3166 I natural join Hovedsteder H
        natural join Norden N
 );






 ( select *
   from Land L natural join Hovedsteder H
   where H.bredde > 55         -- samme tabell som over
 )

except  -- husk unionskompabilitet

 ( select I.lkode, I.isonavn, H.hnavn, H.bredde, H.lengde
   from ISO3166 I natural join Hovedsteder H
        natural join Norden N
 );




-- Tilslutt: Hva er dette en tabell over?

select L.lkode, L.lnavn
from Land L
     inner join Bydata B on L.lkode = B.kode
where not exists ( select * from Bydata BD
                   where BD.kode=L.lkode
                       and BD.pop < 50000 );


select L.lkode, L.lnavn, count(*) as antall
from Land L
     inner join Bydata B on L.lkode = B.kode
where not exists ( select * from Bydata BD
                   where BD.kode=L.lkode
                       and BD.pop < 50000 )
group by L.lnavn, L.lkode
having count(*) > 1;
