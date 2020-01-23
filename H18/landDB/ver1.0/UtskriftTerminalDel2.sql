emilyd=> select bnavn, max(bid), count(*) as antall_med_samme_navn
emilyd-> from Byer
emilyd-> where bnavn in ('Madison', 'Richmond', 'Victoria', 'Bergen')
emilyd-> group by bnavn
emilyd-> having count(*) > 2
emilyd-> order by bnavn;
  bnavn   |  max  | antall_med_samme_navn
----------+-------+-----------------------
 Bergen   | 31196 |                     5
 Madison  | 48277 |                    11
 Richmond | 48226 |                    11
 Victoria | 46525 |                    11
(4 rows)


emilyd=> select bnavn, bid--, count(*) as antall_med_samme_navn
emilyd-> from Byer
emilyd-> where bnavn in ('Madison', 'Richmond', 'Victoria')
emilyd-> -- group by bnavn
emilyd-> -- having count(*) > 7
emilyd-> order by bnavn;
  bnavn   |  bid
----------+-------
 Madison  | 48277
 Madison  | 42637
 Madison  | 43504
 Madison  | 43760
 Madison  | 44011
 Madison  | 44441
 Madison  | 45388
 Madison  | 45702
 Madison  | 46712
 Madison  | 46954
 Madison  | 47792
 Richmond | 44628
 Richmond | 10696
 Richmond | 46735
 Richmond | 43210
 Richmond | 48226
 Richmond | 46475
 Richmond | 42493
 Richmond | 44336
 Richmond | 30554
 Richmond | 10474
-- More

emilyd=> select bnavn, max(bid), count(*) as antall_med_samme_navn
emilyd-> from Byer
emilyd-> where bnavn in ('Madison', 'Richmond', 'Victoria', 'Bergen')
emilyd-> group by bnavn
emilyd-> having count(*) > 2
emilyd-> order by bnavn;
  bnavn   |  max  | antall_med_samme_navn
----------+-------+-----------------------
 Bergen   | 31196 |                     5
 Madison  | 48277 |                    11
 Richmond | 48226 |                    11
 Victoria | 46525 |                    11
(4 rows)

emilyd=> select bnavn, max(bid), count(*) as antall_med_samme_navn
emilyd-> from Byer
emilyd-> where bnavn in ('Madison', 'Richmond', 'Victoria', 'Bergen')
emilyd-> group by bnavn
emilyd-> having count(*) > 5
emilyd-> order by bnavn;
  bnavn   |  max  | antall_med_samme_navn
----------+-------+-----------------------
 Madison  | 48277 |                    11
 Richmond | 48226 |                    11
 Victoria | 46525 |                    11
(3 rows)

emilyd=> select *
emilyd-> from Byer B natural join Regioner R
emilyd->        join ByData BD on ( R.lkode = BD.kode and R.lkode = 'NO' and BD.                                                                     region=R.rnavn)
emilyd-> where B.bnavn <> BD.navn
emilyd-> ;
 rid  |  bid  |    bnavn     |   rnavn   | lkode |    navn     |    ascii    |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 |  region
------+-------+--------------+-----------+-------+-------------+-------------+---------+---------+---------+--------+------+------+-----------
 2690 | 31168 | Asker        | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31169 | Billingstad  | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31170 | Haslum       | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31171 | Hosle        | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31172 | Kjeller      | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31173 | Lillestrøm   | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31174 | Lorenskog    | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31175 | Lysaker      | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31176 | Lørenskog    | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31177 | Rud          | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31178 | Sandvika     | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2690 | 31179 | Strommen     | Akershus  | NO    | Bærum       | Baerum      | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 2693 | 31182 | Hokksund     | Buskerud  | NO    | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 2693 | 31183 | Hønefoss     | Buskerud  | NO    | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 2693 | 31184 | Kongsberg    | Buskerud  | NO    | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 2693 | 31185 | Lyngdal      | Buskerud  | NO    | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 2693 | 31186 | Nærsnes      | Buskerud  | NO    | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 2693 | 31187 | Vestby       | Buskerud  | NO    | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 2694 | 31188 | Båtsfjord    | Finnmark  | NO    | Hammerfest  | Hammerfest  | 70.6613 |  23.688 |    9967 | Norway | NO   | NOR  | Finnmark
 2694 | 31188 | Båtsfjord    | Finnmark  | NO    | Kirkenes    | Kirkenes    |  69.725 | 30.0516 |    2728 | Norway | NO   | NOR  | Finnmark
 2694 | 31188 | Båtsfjord    | Finnmark  | NO    | Vadsø       | Vadso       | 70.0966 | 29.7657 |    5139 | Norway | NO   | NOR  | Finnmark

 






[emilyd@haltwhistle ~]$ cd INF1300
[emilyd@haltwhistle INF1300]$ ls cd H18
ls: cannot access cd: No such file or directory
H18:
landDB  Uke41
[emilyd@haltwhistle INF1300]$ cd landDB
bash: cd: landDB: No such file or directory
[emilyd@haltwhistle INF1300]$ cd landDN
bash: cd: landDN: No such file or directory
[emilyd@haltwhistle INF1300]$ cd landDB
bash: cd: landDB: No such file or directory
[emilyd@haltwhistle INF1300]$ ls
eirikise_oblig3.pdf  eirikise_oblig3.sql  H18  hjeks01  info.txt  SQL
[emilyd@haltwhistle INF1300]$ cd H18
[emilyd@haltwhistle H18]$ ls
landDB  Uke41
[emilyd@haltwhistle H18]$ cd landDB
[emilyd@haltwhistle landDB]$ ls
bydata.csv     landkoder.txt     UtskriftTerminalDel2.sql
eksempler.sql  popogbnp.txt      UtskriftTerminal.sql
lagdb.sql      telefonprfafrika  ver1.0
[emilyd@haltwhistle landDB]$ cd ver1.0
[emilyd@haltwhistle ver1.0]$ ls
20171006.sql  countries.sql  landkoder.txt  telefonprfafrika
bydata.csv    eksempler.sql  popogbnp.txt   UtskriftTerminalDel2.sql
cities.sql    lagdb.sql      states.sql     UtskriftTerminal.sql
[emilyd@haltwhistle ver1.0]$ psql -h dbpg-ifi-kurs -U emilyd -d emilyd
Password for user emilyd: 
psql (9.2.23, server 9.6.6)
WARNING: psql version 9.2, server version 9.6.
         Some psql features might not work.
SSL connection (cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256)
Type "help" for help.

emilyd=> \i lagdb.sql
psql:lagdb.sql:13: ERROR:  invalid byte sequence for encoding "UTF8": 0xf8
SET
psql:lagdb.sql:18: NOTICE:  view "antbyer" does not exist, skipping
DROP VIEW
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
           List of relations
 Schema |    Name     | Type  | Owner  
--------+-------------+-------+--------
 landdb | bydata      | table | emilyd
 landdb | byer        | table | emilyd
 landdb | land        | table | emilyd
 landdb | landtlfkode | table | emilyd
 landdb | regioner    | table | emilyd
 landdb | tallforland | table | emilyd
(6 rows)

emilyd=> drop table if exists Afrikaland;
NOTICE:  table "afrikaland" does not exist, skipping
DROP TABLE
emilyd=> create table Afrikaland (
emilyd(> kode char(2) primary key,
emilyd(> navn text unique);
CREATE TABLE
emilyd=> insert into Afrikaland
emilyd-> select l.kode, l.navn
emilyd-> from land l join landtlfkode k on l.pref=k.pref;
INSERT 0 57
emilyd=> -- gir feilmedling fra 2. gangs kjøring og bør kommenteres vekk
emilyd=> create schema landdb; 
ERROR:  schema "landdb" already exists
emilyd=> -- denne og resten bør stå uforandret
emilyd=> set search_path to landdb;
SET
emilyd=> -- lager databasen
emilyd=> 
emilyd=> 
emilyd=> drop  TABLE IF EXISTS countries;
NOTICE:  table "countries" does not exist, skipping
DROP TABLE
emilyd=> drop  TABLE IF EXISTS states;
NOTICE:  table "states" does not exist, skipping
DROP TABLE
emilyd=> drop  TABLE IF EXISTS cities;
NOTICE:  table "cities" does not exist, skipping
DROP TABLE
emilyd=> 
emilyd=> \i countries.sql
CREATE TABLE
INSERT 0 246
emilyd=> \i states.sql
CREATE TABLE
INSERT 0 2181
INSERT 0 1939
emilyd=> \i cities.sql
CREATE TABLE
INSERT 0 2321
INSERT 0 2157
INSERT 0 2150
INSERT 0 2092
INSERT 0 1997
INSERT 0 2102
INSERT 0 2029
INSERT 0 2060
INSERT 0 1841
INSERT 0 1928
INSERT 0 1910
INSERT 0 1874
INSERT 0 2014
INSERT 0 1878
INSERT 0 1902
INSERT 0 1983
INSERT 0 1957
INSERT 0 1966
INSERT 0 1935
INSERT 0 1930
INSERT 0 1967
INSERT 0 1883
INSERT 0 1900
INSERT 0 1799
INSERT 0 738
emilyd=> 
emilyd=> -- Jeg ønsker egne tabeller hvor bl.a. primærnøkkelen i Land er koden
emilyd=> -- på 2 bokstaver (Countries.sortname). Jeg vil kalle denne lkode (for
emilyd=> -- landkode). Ønsker også å velge attributtnavn, slik at vi med
emilyd=> -- naturlig join kan få entabell over byer, regioner og land.
emilyd=> 
emilyd=> /*
emilyd*>  * Land ( lkode, lnavn ) 
emilyd*>  * Regioner ( rid, rnavn, lkode )    Regioner.lkode ---> Land.lkode
emilyd*>  * Byer ( bid, bnavn, rid )          Byer.rid ---> Regioner.rid
emilyd*>  *
emilyd*> */
emilyd-> 
emilyd-> 
emilyd-> drop table if exists Land;
DROP TABLE
emilyd=> drop table if exists Regioner;
DROP TABLE
emilyd=> drop table if exists Byer;
DROP TABLE
emilyd=> -- Ny landtabell:
emilyd=> 
emilyd=> CREATE TABLE IF NOT EXISTS Land (
emilyd(>   lkode char(2) primary key,
emilyd(>   lnavn varchar(150) not null
emilyd(> );
CREATE TABLE
emilyd=> 
emilyd=> insert into Land
emilyd-> select C.sortname, C.name
emilyd-> from countries C;
INSERT 0 246
emilyd=> 
emilyd=> -- Ny regiontabell:
emilyd=> 
emilyd=> CREATE TABLE IF NOT EXISTS Regioner (
emilyd(>   rid int NOT NULL, 
emilyd(>   rnavn varchar(30) NOT NULL,
emilyd(>   lkode char(2)  NOT NULL DEFAULT 'XX',
emilyd(>   PRIMARY KEY (rid)
emilyd(> );
CREATE TABLE
emilyd=> 
emilyd=> insert into Regioner
emilyd-> select S.id, S.name, C.sortname
emilyd-> from countries C join states S on C.id = S.country_id;
INSERT 0 4120
emilyd=> 
emilyd=> -- Ny bytabell:
emilyd=> 
emilyd=> CREATE TABLE IF NOT EXISTS Byer (
emilyd(>   bid int NOT NULL,
emilyd(>   bnavn varchar(30) NOT NULL,
emilyd(>   rid int NOT NULL, -- regionen (Regioner.id) byen ligger i
emilyd(>   PRIMARY KEY (bid) 
emilyd(> );
CREATE TABLE
emilyd=> 
emilyd=> insert into Byer
emilyd-> select C.id, C.name, S.id
emilyd-> from Cities C join States S 
emilyd->      on C.state_id = S.id
emilyd-> ;
INSERT 0 48313
emilyd=> 
emilyd=> 
emilyd=> -- Trenger ikke disse lenger
emilyd=> drop  TABLE IF EXISTS countries;
DROP TABLE
emilyd=> drop  TABLE IF EXISTS states;
DROP TABLE
emilyd=> drop  TABLE IF EXISTS cities;
DROP TABLE
emilyd=> select *
emilyd-> from Bydata
emilyd-> where kode = 'NO'
emilyd-> and not navn in (select bnavn from Byer);
     navn     |    ascii     |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso
3 |      region      
--------------+--------------+---------+---------+---------+--------+------+----
--+------------------
 Arendal      | Arendal      | 58.4648 |   8.766 |   30916 | Norway | NO   | NOR
  | Aust-Agder
 Vossavangen  | Vossavangen  |   60.63 |   6.441 |    5571 | Norway | NO   | NOR
  | Hordaland
 Leikanger    | Hermansverk  | 61.1833 |    6.85 |    1965 | Norway | NO   | NOR
  | Sogn og Fjordane
 Bærum        | Baerum       | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR
  | Akershus
 Finnsnes     | Finnsnes     | 69.2406 | 18.0086 |    3611 | Norway | NO   | NOR
  | Troms
 Gjøvik       | Gjovik       |    60.8 |    10.7 | 20157.5 | Norway | NO   | NOR
  | Oppland
 Rørvik       | Rorvik       |  64.868 | 11.2053 |    2615 | Norway | NO   | NOR
  | Nord-Trøndelag
 Ålesund      | Alesund      | 62.5454 | 6.38802 |   45377 | Norway | NO   | NOR
  | Møre og Romsdal
 Steinkjer    | Steinkjer    | 64.0171 |    11.5 | 11193.5 | Norway | NO   | NOR
  | Nord-Trøndelag
emilyd=> select *
from Bydata
where kode = 'NO'
and not navn in (select bnavn from Byer);
     navn     |    ascii     |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 |      region      
--------------+--------------+---------+---------+---------+--------+------+------+------------------
 Arendal      | Arendal      | 58.4648 |   8.766 |   30916 | Norway | NO   | NOR  | Aust-Agder
 Vossavangen  | Vossavangen  |   60.63 |   6.441 |    5571 | Norway | NO   | NOR  | Hordaland
 Leikanger    | Hermansverk  | 61.1833 |    6.85 |    1965 | Norway | NO   | NOR  | Sogn og Fjordane
 Bærum        | Baerum       | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 Finnsnes     | Finnsnes     | 69.2406 | 18.0086 |    3611 | Norway | NO   | NOR  | Troms
 Gjøvik       | Gjovik       |    60.8 |    10.7 | 20157.5 | Norway | NO   | NOR  | Oppland
 Rørvik       | Rorvik       |  64.868 | 11.2053 |    2615 | Norway | NO   | NOR  | Nord-Trøndelag
 Ålesund      | Alesund      | 62.5454 | 6.38802 |   45377 | Norway | NO   | NOR  | Møre og Romsdal
 Steinkjer    | Steinkjer    | 64.0171 |    11.5 | 11193.5 | Norway | NO   | NOR  | Nord-Trøndelag
 Svolvær      | Svolvaer     | 68.2333 | 14.5667 |    4197 | Norway | NO   | NOR  | Nordland
 Mo i Rana    | Mo i Rana    | 66.3166 | 14.1667 |   19131 | Norway | NO   | NOR  | Nordland
 Namsos       | Namsos       | 64.4833 |    11.5 |    9035 | Norway | NO   | NOR  | Nord-Trøndelag
 Alta         | Alta         | 69.9666 | 23.2417 |   12077 | Norway | NO   | NOR  | Finnmark
 Vadsø        | Vadso        | 70.0966 | 29.7657 |    5139 | Norway | NO   | NOR  | Finnmark
 Molde        | Molde        | 62.7483 | 7.18332 | 16171.5 | Norway | NO   | NOR  | Møre og Romsdal
 Kirkenes     | Kirkenes     |  69.725 | 30.0516 |    2728 | Norway | NO   | NOR  | Finnmark
 Kristiansand | Kristiansand | 58.1666 | 8.00002 |   58292 | Norway | NO   | NOR  | Vest-Agder
 Trondheim    | Trondheim    | 63.4167 | 10.4167 |  144336 | Norway | NO   | NOR  | Sør-Trøndelag
(18 rows)

select *
emilyd-> from Bydata B
emilyd-> where kode = 'NO'
emilyd->       and not exists ( select * from Byer BB
emilyd(>                     where B.navn = BB.bnavn );
     navn     |    ascii     |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 |      region      
--------------+--------------+---------+---------+---------+--------+------+------+------------------
 Arendal      | Arendal      | 58.4648 |   8.766 |   30916 | Norway | NO   | NOR  | Aust-Agder
 Vossavangen  | Vossavangen  |   60.63 |   6.441 |    5571 | Norway | NO   | NOR  | Hordaland
 Leikanger    | Hermansverk  | 61.1833 |    6.85 |    1965 | Norway | NO   | NOR  | Sogn og Fjordane
 Bærum        | Baerum       | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 Finnsnes     | Finnsnes     | 69.2406 | 18.0086 |    3611 | Norway | NO   | NOR  | Troms
 Gjøvik       | Gjovik       |    60.8 |    10.7 | 20157.5 | Norway | NO   | NOR  | Oppland
 Rørvik       | Rorvik       |  64.868 | 11.2053 |    2615 | Norway | NO   | NOR  | Nord-Trøndelag
 Ålesund      | Alesund      | 62.5454 | 6.38802 |   45377 | Norway | NO   | NOR  | Møre og Romsdal
 Steinkjer    | Steinkjer    | 64.0171 |    11.5 | 11193.5 | Norway | NO   | NOR  | Nord-Trøndelag
 Svolvær      | Svolvaer     | 68.2333 | 14.5667 |    4197 | Norway | NO   | NOR  | Nordland
 Mo i Rana    | Mo i Rana    | 66.3166 | 14.1667 |   19131 | Norway | NO   | NOR  | Nordland
 Namsos       | Namsos       | 64.4833 |    11.5 |    9035 | Norway | NO   | NOR  | Nord-Trøndelag
 Alta         | Alta         | 69.9666 | 23.2417 |   12077 | Norway | NO   | NOR  | Finnmark
 Vadsø        | Vadso        | 70.0966 | 29.7657 |    5139 | Norway | NO   | NOR  | Finnmark
 Molde        | Molde        | 62.7483 | 7.18332 | 16171.5 | Norway | NO   | NOR  | Møre og Romsdal
 Kirkenes     | Kirkenes     |  69.725 | 30.0516 |    2728 | Norway | NO   | NOR  | Finnmark
 Kristiansand | Kristiansand | 58.1666 | 8.00002 |   58292 | Norway | NO   | NOR  | Vest-Agder
 Trondheim    | Trondheim    | 63.4167 | 10.4167 |  144336 | Norway | NO   | NOR  | Sør-Trøndelag
(18 rows)

emilyd=> select R.rid, R.rnavn region, B.bnavn bynavn
emilyd-> from Regioner R natural join Byer B
emilyd-> where R.lkode='NO' or R.lkode ='SE' or ...
emilyd-> order by rnavn;
ERROR:  syntax error at or near ".."
LINE 3: where R.lkode='NO' or R.lkode ='SE' or ...
                                               ^
emilyd=> select L.lnavn, R.rid, R.rnavn region, B.bnavn bynavn
emilyd-> from Regioner R natural join Byer B natural join Land L
emilyd-> where R.lkode in ('DK', 'FI', 'IS', 'NO', 'SE')
emilyd-> order by rnavn;
  lnavn  | rid  |      region       |       bynavn       
---------+------+-------------------+--------------------
 Finland | 1151 | Ahvenanmaa        | Maarianhamina
 Norway  | 2690 | Akershus          | Sandvika
 Norway  | 2690 | Akershus          | Rud
 Norway  | 2690 | Akershus          | Lørenskog
 Norway  | 2690 | Akershus          | Lysaker
 Norway  | 2690 | Akershus          | Lorenskog
 Norway  | 2690 | Akershus          | Lillestrøm
 Norway  | 2690 | Akershus          | Kjeller
 Norway  | 2690 | Akershus          | Hosle
 Norway  | 2690 | Akershus          | Haslum
 Norway  | 2690 | Akershus          | Billingstad
 Norway  | 2690 | Akershus          | Strommen
 Norway  | 2690 | Akershus          | Asker
 Denmark |  941 | Arhus             | Hinnerup
 Denmark |  941 | Arhus             | Hjortshoj
 Denmark |  941 | Arhus             | Horning
 Denmark |  941 | Arhus             | Hornslet
 Denmark |  941 | Arhus             | Kolt
 Denmark |  941 | Arhus             | Langa
 Denmark |  941 | Arhus             | Logten
 Denmark |  941 | Arhus             | Lystrup
emilyd=> select *
emilyd-> from Bydata BD
emilyd->      join Byer B on BD.navn = B.bnavn
emilyd->      natural join Regioner
emilyd-> where BD.kode = 'NO';
 rid  |    navn     |    ascii    |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 |  region   |  bid  |    bnavn    |         rnavn          | lkode 
------+-------------+-------------+---------+---------+---------+--------+------+------+-----------+-------+-------------+------------------------+-------
 1381 | Bergen      | Bergen      |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland | 19314 | Bergen      | Mecklenburg-Vorpommern | DE
 1385 | Bergen      | Bergen      |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland | 19378 | Bergen      | Niedersachsen          | DE
 2592 | Bergen      | Bergen      |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland | 30035 | Bergen      | Limburg                | NL
 2594 | Bergen      | Bergen      |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland | 30186 | Bergen      | Noord-Holland          | NL
 2693 | Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud  | 31181 | Drammen     | Buskerud               | NO
 2694 | Hammerfest  | Hammerfest  | 70.6613 |  23.688 |    9967 | Norway | NO   | NOR  | Finnmark  | 31189 | Hammerfest  | Finnmark               | NO
 2695 | Hamar       | Hamar       |   60.82 |  11.069 |   29479 | Norway | NO   | NOR  | Hedmark   | 31192 | Hamar       | Hedmark                | NO
 2696 | Bergen      | Bergen      |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland | 31196 | Bergen      | Hordaland              | NO
 2699 | Bodø        | Bodo        | 67.2468 |  14.399 | 31383.5 | Norway | NO   | NOR  | Nordland  | 31202 | Bodø        | Nordland               | NO
 2699 | Narvik      | Narvik      | 68.3831 |   17.29 | 19236.5 | Norway | NO   | NOR  | Nordland  | 31204 | Narvik      | Nordland               | NO
 2700 | Moss        | Moss        |  59.437 | 10.6692 | 35696.5 | Norway | NO   | NOR  | Ãstfold   | 31213 | Moss        | Østfold                | NO
 2701 | Lillehammer | Lillehammer | 61.1333 |    10.5 |   19319 | Norway | NO   | NOR  | Oppland   | 31218 | Lillehammer | Oppland                | NO
 2702 | Oslo        | Oslo        | 59.9167 |   10.75 |  707500 | Norway | NO   | NOR  | Oslo      | 31219 | Oslo        | Oslo                   | NO
 2703 | Haugesund   | Haugesund   | 59.4119 |  5.2775 | 36219.5 | Norway | NO   | NOR  | Rogaland  | 31223 | Haugesund   | Rogaland               | NO
 2703 | Sandnes     | Sandnes     | 58.8454 | 5.69003 |   46911 | Norway | NO   | NOR  | Rogaland  | 31225 | Sandnes     | Rogaland               | NO
 2703 | Stavanger   | Stavanger   |   58.97 |    5.68 |  136999 | Norway | NO   | NOR  | Rogaland  | 31227 | Stavanger   | Rogaland               | NO
 2708 | Skien       | Skien       |    59.2 | 9.60002 |   73330 | Norway | NO   | NOR  | Telemark  | 31231 | Skien       | Telemark               | NO
 2709 | Harstad     | Harstad     | 68.7879 | 16.5156 |   19203 | Norway | NO   | NOR  | Troms     | 31232 | Harstad     | Troms                  | NO
 2709 | Tromsø      | Tromso      | 69.6351 |  18.992 | 48900.5 | Norway | NO   | NOR  | Troms     | 31234 | Tromsø      | Troms                  | NO
 2711 | Tønsberg    | Tonsberg    |  59.264 |  10.421 |   38914 | Norway | NO   | NOR  | Vestfold  | 31240 | Tønsberg    | Vestfold               | NO
(20 rows)

emilyd=> 
emilyd=> select *
emilyd-> from Bydata BD
emilyd->      join Byer B on BD.navn = B.bnavn
emilyd->      join Regioner R on B.rid = R.rid and R.lkode = 'NO'
emilyd-> where BD.kode = 'NO';
    navn     |    ascii    |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 |  region   |  bid  |    bnavn    | rid  | rid  |   rnavn   | lkode 
-------------+-------------+---------+---------+---------+--------+------+------+-----------+-------+-------------+------+------+-----------+-------
 Drammen     | Drammen     | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud  | 31181 | Drammen     | 2693 | 2693 | Buskerud  | NO
 Hammerfest  | Hammerfest  | 70.6613 |  23.688 |    9967 | Norway | NO   | NOR  | Finnmark  | 31189 | Hammerfest  | 2694 | 2694 | Finnmark  | NO
 Hamar       | Hamar       |   60.82 |  11.069 |   29479 | Norway | NO   | NOR  | Hedmark   | 31192 | Hamar       | 2695 | 2695 | Hedmark   | NO
 Bergen      | Bergen      |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland | 31196 | Bergen      | 2696 | 2696 | Hordaland | NO
 Bodø        | Bodo        | 67.2468 |  14.399 | 31383.5 | Norway | NO   | NOR  | Nordland  | 31202 | Bodø        | 2699 | 2699 | Nordland  | NO
 Narvik      | Narvik      | 68.3831 |   17.29 | 19236.5 | Norway | NO   | NOR  | Nordland  | 31204 | Narvik      | 2699 | 2699 | Nordland  | NO
 Moss        | Moss        |  59.437 | 10.6692 | 35696.5 | Norway | NO   | NOR  | Ãstfold   | 31213 | Moss        | 2700 | 2700 | Østfold   | NO
 Lillehammer | Lillehammer | 61.1333 |    10.5 |   19319 | Norway | NO   | NOR  | Oppland   | 31218 | Lillehammer | 2701 | 2701 | Oppland   | NO
 Oslo        | Oslo        | 59.9167 |   10.75 |  707500 | Norway | NO   | NOR  | Oslo      | 31219 | Oslo        | 2702 | 2702 | Oslo      | NO
 Haugesund   | Haugesund   | 59.4119 |  5.2775 | 36219.5 | Norway | NO   | NOR  | Rogaland  | 31223 | Haugesund   | 2703 | 2703 | Rogaland  | NO
 Sandnes     | Sandnes     | 58.8454 | 5.69003 |   46911 | Norway | NO   | NOR  | Rogaland  | 31225 | Sandnes     | 2703 | 2703 | Rogaland  | NO
 Stavanger   | Stavanger   |   58.97 |    5.68 |  136999 | Norway | NO   | NOR  | Rogaland  | 31227 | Stavanger   | 2703 | 2703 | Rogaland  | NO
 Skien       | Skien       |    59.2 | 9.60002 |   73330 | Norway | NO   | NOR  | Telemark  | 31231 | Skien       | 2708 | 2708 | Telemark  | NO
 Harstad     | Harstad     | 68.7879 | 16.5156 |   19203 | Norway | NO   | NOR  | Troms     | 31232 | Harstad     | 2709 | 2709 | Troms     | NO
 Tromsø      | Tromso      | 69.6351 |  18.992 | 48900.5 | Norway | NO   | NOR  | Troms     | 31234 | Tromsø      | 2709 | 2709 | Troms     | NO
 Tønsberg    | Tonsberg    |  59.264 |  10.421 |   38914 | Norway | NO   | NOR  | Vestfold  | 31240 | Tønsberg    | 2711 | 2711 | Vestfold  | NO
(16 rows)

emilyd=> select *
emilyd-> from Bydata BD
emilyd->      join Byer B on BD.navn = B.bnavn
emilyd->      join Regioner R on B.rid = R.rid and R.lkode = 'NO'
emilyd-> where BD.kode = 'NO'
emilyd->       and BD.region <> R.rnavn;
 navn | ascii | brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 | region  |  bid  | bnavn | rid  | rid  |  rnavn  | lkode 
------+-------+--------+---------+---------+--------+------+------+---------+-------+-------+------+------+---------+-------
 Moss | Moss  | 59.437 | 10.6692 | 35696.5 | Norway | NO   | NOR  | Ãstfold | 31213 | Moss  | 2700 | 2700 | Østfold | NO
(1 row)

emilyd=> select B.bnavn, BD.navn, R.rnavn, BD.region, R.lkode
emilyd-> from Bydata BD
emilyd->      join Byer B on BD.navn = B.bnavn
emilyd->      join Regioner R on B.rid = R.rid -- and R.lkode = 'NO'
emilyd-> where BD.region <> R.rnavn;
          bnavn          |          navn           |            rnavn            |                  region                   | lkode 
-------------------------+-------------------------+-----------------------------+-------------------------------------------+-------
 Port Blair              | Port Blair              | Andaman and Nicobar Islands | Andaman and Nicobar                       | IN
 Port Blair              | Port Blair              | Andhra Pradesh              | Andaman and Nicobar                       | IN
 Shar                    | Shar                    | Andhra Pradesh              | East Kazakhstan                           | IN
 Aurangabad              | Aurangabad              | Bihar                       | Maharashtra                               | IN
 Dhaka                   | Dhaka                   | Bihar                       | Dhaka                                     | IN
 Gaya                    | Gaya                    | Bihar                       | Dosso                                     | IN
 Jamalpur                | Jamalpur                | Bihar                       | Dhaka                                     | IN
 Kota                    | Kota                    | Chhattisgarh                | Rajasthan                                 | IN
 Daman                   | Daman                   | Daman and Diu               | Dadra and Nagar Haveli                    | IN
 Diu                     | Diu                     | Daman and Diu               | Dadra and Nagar Haveli                    | IN
 Ahmedabad               | Ahmedabad               | Gujarat                     | Dadra and Nagar Haveli                    | IN
 Bechar                  | Bechar                  | Gujarat                     | Béchar                                    | IN
 Bhavnagar               | Bhavnagar               | Gujarat                     | Dadra and Nagar Haveli                    | IN
 Bhuj                    | Bhuj                    | Gujarat                     | Dadra and Nagar Haveli                    | IN
 Gandhinagar             | Gandhinagar             | Gujarat                     | Dadra and Nagar Haveli                    | IN
 Mansa                   | Mansa                   | Gujarat                     | Luapula                                   | IN
 Navsari                 | Navsari                 | Gujarat                     | Dadra and Nagar Haveli                    | IN
 Okha                    | Okha                    | Gujarat                     | Sakhalin                                  | IN
 Pali                    | Pali                    | Gujarat                     | Rajasthan                                 | IN
 Porbandar               | Porbandar               | Gujarat                     | Dadra and Nagar Haveli                    | IN
emilyd=> select B.bnavn
emilyd-> from Bydata BD
emilyd->      join Byer B on BD.navn = B.bnavn
emilyd-> group by BD.navn, B.bnavn
emilyd-> having count(*) > 1;
       bnavn       
-------------------
 San Javier
 Same
 Groningen
 Alexandria
 Dundalk
 Irvine
 Rivera
 Dongguan
 Trenton
 Nimes
 Zhenjiang
 Matamoros
 Changping
 Wheeling
 Sirsa
 Bristol
 Hartford
 Williston
 Dublin
 Manzanillo
emilyd=> select B.bnavn, BD.navn, R.rnavn, BD.region, R.lkode
emilyd-> from Bydata BD
emilyd->      join Byer B on BD.navn = B.bnavn
emilyd->      join Regioner R on B.rid = R.rid -- and R.lkode = 'NO'
emilyd-> where BD.region <> R.rnavn
emilyd->       and B.bnavn not in ( select B.bnavn
emilyd(>                            from Bydata BD
emilyd(>                                 join Byer B on BD.navn = B.bnavn
emilyd(>                            group by BD.navn, B.bnavn
emilyd(>                            having count(*) > 1 );
          bnavn          |          navn           |          rnavn          |                  region                   | lkode 
-------------------------+-------------------------+-------------------------+-------------------------------------------+-------
 Shar                    | Shar                    | Andhra Pradesh          | East Kazakhstan                           | IN
 Daman                   | Daman                   | Daman and Diu           | Dadra and Nagar Haveli                    | IN
 Diu                     | Diu                     | Daman and Diu           | Dadra and Nagar Haveli                    | IN
 Bechar                  | Bechar                  | Gujarat                 | Béchar                                    | IN
 Bhavnagar               | Bhavnagar               | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Bhuj                    | Bhuj                    | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Gandhinagar             | Gandhinagar             | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Navsari                 | Navsari                 | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Okha                    | Okha                    | Gujarat                 | Sakhalin                                  | IN
 Porbandar               | Porbandar               | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Rajkot                  | Rajkot                  | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Surat                   | Surat                   | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Vadodara                | Vadodara                | Gujarat                 | Dadra and Nagar Haveli                    | IN
 Jawhar                  | Jawhar                  | Maharashtra             | Shabeellaha Dhexe                         | IN
 Brahmapur               | Brahmapur               | Odisha                  | Orissa                                    | IN
 Cuttack                 | Cuttack                 | Odisha                  | Orissa                                    | IN
 Puri                    | Puri                    | Odisha                  | Orissa                                    | IN
 Raurkela                | Raurkela                | Odisha                  | Orissa                                    | IN
 Sambalpur               | Sambalpur               | Odisha                  | Orissa                                    | IN
 Pondicherry             | Pondicherry             | Pondicherry             | Puducherry                                | IN
emilyd=> select B.bnavn, R.rnavn, count(*)
emilyd-> from Byer B natural join Regioner R
emilyd-> where R.lkode = 'US'
emilyd-> group by B.bnavn, R.rnavn
emilyd-> having count(*) > 1;
        bnavn        |   rnavn    | count 
---------------------+------------+-------
 Washington Township | New Jersey |     2
(1 row)

emilyd=> 
emilyd=> select B.bnavn bynavn, count(*) as antall
emilyd-> from Byer B natural join Regioner R
emilyd-> where R.lkode = 'US'
emilyd-> group by B.bnavn
emilyd-> having count(*) > 5
emilyd-> order by B.bnavn;

    bynavn    | antall 
--------------+--------
 Ashland      |      7
 Auburn       |      7
 Bedford      |      6
 Bristol      |      6
 Burlington   |      6
 Canton       |      8
 Clinton      |      6
 Columbus     |      6
 Fairfield    |      6
 Farmington   |      8
 Franklin     |      9
 Greenville   |      6
 Hudson       |      6
 Jackson      |      8
 Jacksonville |      6
 Jefferson    |      7
 Lebanon      |      8
 Madison      |     11
 Manchester   |      7
 Marion       |      7
 Middletown   |      7
 Milford      |      6
 Monroe       |      9
 Mount Vernon |      6
 Richmond     |      7
 Springfield  |     10
 Troy         |      7
 Washington   |      8
(28 rows)

emilyd=> 
emilyd=> 
emilyd=> select B.bnavn bynavn, R.rnavn
emilyd-> from Byer B natural join Regioner R
emilyd->      join ( select B.bnavn bynavn, count(*) as antall
emilyd(>             from Byer B natural join Regioner R
emilyd(>             where R.lkode = 'US'
emilyd(>             group by B.bnavn
emilyd(>             having count(*) > 9 ) as H -- for Hyppig forekommende
emilyd-> 
emilyd->      on B.bnavn = H.bynavn
emilyd-> where R.lkode = 'US'
emilyd-> order by H.antall desc, B.bnavn asc, R.rnavn;
   bynavn    |     rnavn     
-------------+---------------
 Madison     | Alabama
 Madison     | Connecticut
 Madison     | Florida
 Madison     | Georgia
 Madison     | Indiana
 Madison     | Mississippi
 Madison     | New Jersey
 Madison     | Ohio
 Madison     | South Dakota
 Madison     | Virginia
 Madison     | Wisconsin
 Springfield | Illinois
 Springfield | Massachusetts
 Springfield | Missouri
 Springfield | New Jersey
 Springfield | Ohio
 Springfield | Oregon
 Springfield | Pennsylvania
 Springfield | Tennessee
 Springfield | Vermont
 Springfield | Virginia
(21 rows)

emilyd=> select B.bnavn bynavn, R.rnavn, H.antall
emilyd-> from Byer B natural join Regioner R
emilyd->      join ( select B.bnavn bynavn, count(*) as antall
emilyd(>             from Byer B natural join Regioner R
emilyd(>             where R.lkode = 'US'
emilyd(>             group by B.bnavn
emilyd(>             having count(*) > 9 ) as H -- for Hyppig forekommende
emilyd-> 
emilyd->      on B.bnavn = H.bynavn
emilyd-> where R.lkode = 'US'
emilyd-> order by H.antall desc, B.bnavn asc, R.rnavn;
   bynavn    |     rnavn     | antall 
-------------+---------------+--------
 Madison     | Alabama       |     11
 Madison     | Connecticut   |     11
 Madison     | Florida       |     11
 Madison     | Georgia       |     11
 Madison     | Indiana       |     11
 Madison     | Mississippi   |     11
 Madison     | New Jersey    |     11
 Madison     | Ohio          |     11
 Madison     | South Dakota  |     11
 Madison     | Virginia      |     11
 Madison     | Wisconsin     |     11
 Springfield | Illinois      |     10
 Springfield | Massachusetts |     10
 Springfield | Missouri      |     10
 Springfield | New Jersey    |     10
 Springfield | Ohio          |     10
 Springfield | Oregon        |     10
 Springfield | Pennsylvania  |     10
 Springfield | Tennessee     |     10
 Springfield | Vermont       |     10
 Springfield | Virginia      |     10
(21 rows)

emilyd=> select B.bnavn bynavn, R.rnavn, H.antall
emilyd-> from Byer B natural join Regioner R
emilyd->      join ( select B.bnavn bynavn, count(*) as antall
emilyd(>             from Byer B natural join Regioner R
emilyd(>             where R.lkode = 'US'
emilyd(>             group by B.bnavn
emilyd(>             having count(*) > 7 ) as H -- for Hyppig forekommende
emilyd-> 
emilyd->      on B.bnavn = H.bynavn
emilyd-> where R.lkode = 'US'
emilyd-> order by H.antall desc, B.bnavn asc, R.rnavn;
   bynavn    |     rnavn      | antall 
-------------+----------------+--------
 Madison     | Alabama        |     11
 Madison     | Connecticut    |     11
 Madison     | Florida        |     11
 Madison     | Georgia        |     11
 Madison     | Indiana        |     11
 Madison     | Mississippi    |     11
 Madison     | New Jersey     |     11
 Madison     | Ohio           |     11
 Madison     | South Dakota   |     11
 Madison     | Virginia       |     11
 Madison     | Wisconsin      |     11
 Springfield | Illinois       |     10
 Springfield | Massachusetts  |     10
 Springfield | Missouri       |     10
 Springfield | New Jersey     |     10
 Springfield | Ohio           |     10
 Springfield | Oregon         |     10
 Springfield | Pennsylvania   |     10
 Springfield | Tennessee      |     10
 Springfield | Vermont        |     10
 Springfield | Virginia       |     10
 Franklin    | Indiana        |      9
 Franklin    | Louisiana      |      9
 Franklin    | Massachusetts  |      9
 Franklin    | New Hampshire  |      9
 Franklin    | New Jersey     |      9
 Franklin    | Pennsylvania   |      9
 Franklin    | Tennessee      |      9
 Franklin    | Virginia       |      9
 Franklin    | Wisconsin      |      9
 Monroe      | Connecticut    |      9
 Monroe      | Georgia        |      9
 Monroe      | Louisiana      |      9
 Monroe      | Michigan       |      9
 Monroe      | New Jersey     |      9
 Monroe      | New York       |      9
 Monroe      | North Carolina |      9
emilyd=> 
emilyd=> drop view if exists VanligeBynavn;
NOTICE:  view "vanligebynavn" does not exist, skipping
DROP VIEW
emilyd=> create view VanligeBynavn as (
emilyd(>             select B.bnavn bynavn, count(*) as antall
emilyd(>             from Byer B natural join Regioner R
emilyd(>             where R.lkode = 'US'
emilyd(>             group by B.bnavn
emilyd(>             having count(*) > 5 
emilyd(> );
CREATE VIEW
emilyd=> select * from VanligeBynavn;
    bynavn    | antall 
--------------+--------
 Bristol      |      6
 Jackson      |      8
 Auburn       |      7
 Hudson       |      6
 Manchester   |      7
 Richmond     |      7
 Ashland      |      7
 Troy         |      7
 Springfield  |     10
 Fairfield    |      6
 Canton       |      8
 Marion       |      7
 Greenville   |      6
 Lebanon      |      8
 Monroe       |      9
 Madison      |     11
 Washington   |      8
 Mount Vernon |      6
 Milford      |      6
 Clinton      |      6
 Farmington   |      8
 Burlington   |      6
 Bedford      |      6
 Columbus     |      6
 Jefferson    |      7
 Middletown   |      7
 Franklin     |      9
 Jacksonville |      6
(28 rows)

emilyd=> select B.bnavn bynavn, R.rnavn, H.antall
emilyd-> from Byer natural join Regioner R
emilyd->     join Vanligebynavn as H
emilyd->     on B.bnavn = H.bynavn
emilyd-> where R.lkode = 'US'
emilyd-> order by H.antall desc, B.bnavn asc, R.rnavn;
ERROR:  missing FROM-clause entry for table "b"
LINE 4:     on B.bnavn = H.bynavn
               ^
emilyd=> select B.bnavn, R.rnavn, H.antall, H.bynavn
emilyd-> from Byer B natural join Regioner R
emilyd->      join VanligeBnavn as H
emilyd->      on B.bnavn = H.bynavn
emilyd-> where R.lkode = 'US'
emilyd-> order by H.antall desc, B.bnavn asc, R.rnavn;
ERROR:  relation "vanligebnavn" does not exist
LINE 3:      join VanligeBnavn as H
                  ^
emilyd=> select B.bnavn, R.rnavn, H.antall, H.bynavn
emilyd-> from Byer B natural join Regioner R
emilyd->      join VanligeBynavn as H
emilyd->      on B.bnavn = H.bynavn
emilyd-> where R.lkode = 'US'
emilyd-> order by H.antall desc, B.bnavn asc, R.rnavn;
    bnavn     |     rnavn      | antall |    bynavn    
--------------+----------------+--------+--------------
 Madison      | Alabama        |     11 | Madison
 Madison      | Connecticut    |     11 | Madison
 Madison      | Florida        |     11 | Madison
 Madison      | Georgia        |     11 | Madison
 Madison      | Indiana        |     11 | Madison
 Madison      | Mississippi    |     11 | Madison
 Madison      | New Jersey     |     11 | Madison
 Madison      | Ohio           |     11 | Madison
 Madison      | South Dakota   |     11 | Madison
 Madison      | Virginia       |     11 | Madison
 Madison      | Wisconsin      |     11 | Madison
 Springfield  | Illinois       |     10 | Springfield
 Springfield  | Massachusetts  |     10 | Springfield
 Springfield  | Missouri       |     10 | Springfield
 Springfield  | New Jersey     |     10 | Springfield
 Springfield  | Ohio           |     10 | Springfield
 Springfield  | Oregon         |     10 | Springfield
 Springfield  | Pennsylvania   |     10 | Springfield
 Springfield  | Tennessee      |     10 | Springfield
 Springfield  | Vermont        |     10 | Springfield
 Springfield  | Virginia       |     10 | Springfield
 Franklin     | Indiana        |      9 | Franklin
 Franklin     | Louisiana      |      9 | Franklin
 Franklin     | Massachusetts  |      9 | Franklin
 Franklin     | New Hampshire  |      9 | Franklin
 Franklin     | New Jersey     |      9 | Franklin
 Franklin     | Pennsylvania   |      9 | Franklin
 Franklin     | Tennessee      |      9 | Franklin
 Franklin     | Virginia       |      9 | Franklin
 Franklin     | Wisconsin      |      9 | Franklin
 Monroe       | Connecticut    |      9 | Monroe
 Monroe       | Georgia        |      9 | Monroe
 Monroe       | Louisiana      |      9 | Monroe
 Monroe       | Michigan       |      9 | Monroe
 Monroe       | New Jersey     |      9 | Monroe
 Monroe       | New York       |      9 | Monroe
 Monroe       | North Carolina |      9 | Monroe

 
