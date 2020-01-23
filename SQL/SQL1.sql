
emilyd=> help
You are using psql, the command-line interface to PostgreSQL.
Type:  \copyright for distribution terms
       \h for help with SQL commands
       \? for help with psql commands
       \g or terminate with semicolon to execute query
       \q to quit

	   
emilyd=> drop table if exists emne;
NOTICE:  table "emne" does not exist, skipping
DROP TABLE
emilyd=> create table emne(emnekode varchar(12) not null primary key, enavn varchar(70), fsem char(6));
CREATE TABLE
emilyd=> \d emne
             Table "public.emne"
  Column  |         Type          | Modifiers
----------+-----------------------+-----------
 emnekode | character varying(12) | not null
 enavn    | character varying(70) |
 fsem     | character(6)          |
Indexes:
    "emne_pkey" PRIMARY KEY, btree (emnekode)

	

insert into emne values 
    ('inf1000', 'Grunnkurs i objektorientert programmering', '2003-2'),
	('inf1010', 'Objektorientert programmering', '2004-1'),
	('inf1050', 'Systemutvikling', '2004-1'),
	('inf1060', 'Introduksjon til operativsystemer og datakommunikasjon', '2004-2'),
	('inf1080', 'Logiske metoder og informatikk', '2010-2'),
	('inf1100', 'Grunnkurs i programmering for naturvitenskapelige anvendelser', '2007-2'),
	('inf1300', 'Introduksjon til databaser', '2007-2'),
	('inf1400', 'Digital teknologi', '2007-2'),
	('inf1411', 'Elektroniske systemer', '2010-1'),
	('inf1500', 'Introduksjon til design, bruk, interaksjon', '2010-2'),
	('inf1510', 'Bruksorientert design', '2011-1'),
	('inf1820', 'Introduksjon til språk- og kommunikasjonsteknologi', '2011-1'),
	('inf2080', 'Logikk of beregninger', '2012-1'),
	('inf2100', 'Prosjektoppgave i programmering', '2004-2'),
	('inf2140', 'Modeling and programming parallel systems', '2012-1'),
	('inf2220', 'Algoritmer og datastrukturer', '2007-2'),
	('inf2260', 'Interaksjonsdesign', '2011-2'),
	('inf2270', 'Datamaskinarkitektur', '2007-1'),
	('inf2310', 'Digital bildebehandling', '2004-1'),
	('inf2810', 'Funksjonell programmering', '2008-1'),
	('inf2820', 'Datalingvistikk', '2008-1'),
	('inf3100', 'Databasesystemer', '2004-1');

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select emnekode, enavn, fsem
emilyd-> from Emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
 inf1400  | Digital teknologi                                             | 2003-2
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


emilyd=> select enavn, emnekode, fsem
emilyd-> from Emne;
                             enavn                             | emnekode |  fsem
---------------------------------------------------------------+----------+--------
 Grunnkurs i objektorientert programmering                     | inf1000  | 2003-2
 Objektorientert programmering                                 | inf1010  | 2004-1
 Systemutvikling                                               | inf1050  | 2004-1
 Introduksjon til operativsystemer og datakommunikasjon        | inf1060  | 2004-2
 Logiske metoder og informatikk                                | inf1080  | 2010-2
 Grunnkurs i programmering for naturvitenskapelige anvendelser | inf1100  | 2007-2
 Introduksjon til databaser                                    | inf1300  | 2007-2
 Elektroniske systemer                                         | inf1411  | 2010-1
 Introduksjon til design, bruk, interaksjon                    | inf1500  | 2010-2
 Bruksorientert design                                         | inf1510  | 2011-1
 Introduksjon til språk- og kommunikasjonsteknologi            | inf1820  | 2011-1
 Logikk of beregninger                                         | inf2080  | 2012-1
 Prosjektoppgave i programmering                               | inf2100  | 2004-2
 Modeling and programming parallel systems                     | inf2140  | 2012-1
 Algoritmer og datastrukturer                                  | inf2220  | 2007-2
 Interaksjonsdesign                                            | inf2260  | 2011-2
 Datamaskinarkitektur                                          | inf2270  | 2007-1
 Digital bildebehandling                                       | inf2310  | 2004-1
 Funksjonell programmering                                     | inf2810  | 2008-1
 Datalingvistikk                                               | inf2820  | 2008-1
 Databasesystemer                                              | inf3100  | 2004-1
 Digital teknologi                                             | inf1400  | 2003-2
(22 rows)
	

	emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


emilyd=> update emne
emilyd-> set fsem = '2003-2'
emilyd-> where emnekode = 'inf1400';
UPDATE 1

	
emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
 inf1400  | Digital teknologi                                             | 2003-2

 emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)

 
emilyd=> select emnekode
emilyd-> from Emne;
 emnekode
----------
 inf1000
 inf1010
 inf1050
 inf1060
 inf1080
 inf1100
 inf1300
 inf1411
 inf1500
 inf1510
 inf1820
 inf2080
 inf2100
 inf2140
 inf2220
 inf2260
 inf2270
 inf2310
 inf2810
 inf2820
 inf3100
 inf1400
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


emilyd=> select fsem
emilyd-> from Emne;
  fsem
--------
 2003-2
 2004-1
 2004-1
 2004-2
 2010-2
 2007-2
 2007-2
 2010-1
 2010-2
 2011-1
 2011-1
 2012-1
 2004-2
 2012-1
 2007-2
 2011-2
 2007-1
 2004-1
 2008-1
 2008-1
 2004-1
 2003-2
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select fsem
emilyd-> from Emne
emilyd-> order by enavn;
  fsem
--------
 2007-2
 2011-1
 2004-1
 2008-1
 2007-1
 2004-1
 2003-2
 2010-1
 2008-1
 2003-2
 2007-2
 2011-2
 2007-2
 2010-2
 2004-2
 2011-1
 2012-1
 2010-2
 2012-1
 2004-1
 2004-2
 2004-1
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


emilyd=> select fsem
emilyd-> from Emne
emilyd-> order by fsem;
  fsem
--------
 2003-2
 2003-2
 2004-1
 2004-1
 2004-1
 2004-1
 2004-2
 2004-2
 2007-1
 2007-2
 2007-2
 2007-2
 2008-1
 2008-1
 2010-1
 2010-2
 2010-2
 2011-1
 2011-1
 2011-2
 2012-1
 2012-1
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select fsem
emilyd-> from Emne
emilyd-> order by fsem desc;
  fsem
--------
 2012-1
 2012-1
 2011-2
 2011-1
 2011-1
 2010-2
 2010-2
 2010-1
 2008-1
 2008-1
 2007-2
 2007-2
 2007-2
 2007-1
 2004-2
 2004-2
 2004-1
 2004-1
 2004-1
 2004-1
 2003-2
 2003-2
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select distinct fsem
emilyd-> from Emne
emilyd-> order by fsem desc;
  fsem
--------
 2012-1
 2011-2
 2011-1
 2010-2
 2010-1
 2008-1
 2007-2
 2007-1
 2004-2
 2004-1
 2003-2
(11 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select distinct fsem, enavn
from Emne
order by fsem desc;
  fsem  |                             enavn
--------+---------------------------------------------------------------
 2012-1 | Logikk of beregninger
 2012-1 | Modeling and programming parallel systems
 2011-2 | Interaksjonsdesign
 2011-1 | Bruksorientert design
 2011-1 | Introduksjon til språk- og kommunikasjonsteknologi
 2010-2 | Introduksjon til design, bruk, interaksjon
 2010-2 | Logiske metoder og informatikk
 2010-1 | Elektroniske systemer
 2008-1 | Datalingvistikk
 2008-1 | Funksjonell programmering
 2007-2 | Introduksjon til databaser
 2007-2 | Algoritmer og datastrukturer
 2007-2 | Grunnkurs i programmering for naturvitenskapelige anvendelser
 2007-1 | Datamaskinarkitektur
 2004-2 | Prosjektoppgave i programmering
 2004-2 | Introduksjon til operativsystemer og datakommunikasjon
 2004-1 | Objektorientert programmering
 2004-1 | Systemutvikling
 2004-1 | Databasesystemer
 2004-1 | Digital bildebehandling
 2003-2 | Grunnkurs i objektorientert programmering
 2003-2 | Digital teknologi
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)




emilyd=> select enavn
emilyd-> from Emne
emilyd-> where emnekode = 'inf1300';
           enavn
----------------------------
 Introduksjon til databaser
(1 row)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select emnekode, enavn
emilyd-> from Emne
emilyd-> where emnekode = 'inf1300';
 emnekode |           enavn
----------+----------------------------
 inf1300  | Introduksjon til databaser
(1 row)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select emnekode, enavn
emilyd-> from Emne
emilyd-> where emnekode > 'inf1300';
 emnekode |                       enavn
----------+----------------------------------------------------
 inf1411  | Elektroniske systemer
 inf1500  | Introduksjon til design, bruk, interaksjon
 inf1510  | Bruksorientert design
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi
 inf2080  | Logikk of beregninger
 inf2100  | Prosjektoppgave i programmering
 inf2140  | Modeling and programming parallel systems
 inf2220  | Algoritmer og datastrukturer
 inf2260  | Interaksjonsdesign
 inf2270  | Datamaskinarkitektur
 inf2310  | Digital bildebehandling
 inf2810  | Funksjonell programmering
 inf2820  | Datalingvistikk
 inf3100  | Databasesystemer
 inf1400  | Digital teknologi
(15 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select emnekode, enavn
emilyd-> from Emne
emilyd-> where emnekode < 'inf1300';
 emnekode |                             enavn
----------+---------------------------------------------------------------
 inf1000  | Grunnkurs i objektorientert programmering
 inf1010  | Objektorientert programmering
 inf1050  | Systemutvikling
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon
 inf1080  | Logiske metoder og informatikk
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser
(6 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)




emilyd=> select emnekode, enavn
emilyd-> from Emne
emilyd-> where emnekode <> 'inf1300';
 emnekode |                             enavn
----------+---------------------------------------------------------------
 inf1000  | Grunnkurs i objektorientert programmering
 inf1010  | Objektorientert programmering
 inf1050  | Systemutvikling
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon
 inf1080  | Logiske metoder og informatikk
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser
 inf1411  | Elektroniske systemer
 inf1500  | Introduksjon til design, bruk, interaksjon
 inf1510  | Bruksorientert design
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi
 inf2080  | Logikk of beregninger
 inf2100  | Prosjektoppgave i programmering
 inf2140  | Modeling and programming parallel systems
 inf2220  | Algoritmer og datastrukturer
 inf2260  | Interaksjonsdesign
 inf2270  | Datamaskinarkitektur
 inf2310  | Digital bildebehandling
 inf2810  | Funksjonell programmering
 inf2820  | Datalingvistikk
 inf3100  | Databasesystemer
 inf1400  | Digital teknologi
(21 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select emnekode, enavn
emilyd-> from Emne
emilyd-> where NOT emnekode = 'inf1300';
 emnekode |                             enavn
----------+---------------------------------------------------------------
 inf1000  | Grunnkurs i objektorientert programmering
 inf1010  | Objektorientert programmering
 inf1050  | Systemutvikling
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon
 inf1080  | Logiske metoder og informatikk
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser
 inf1411  | Elektroniske systemer
 inf1500  | Introduksjon til design, bruk, interaksjon
 inf1510  | Bruksorientert design
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi
 inf2080  | Logikk of beregninger
 inf2100  | Prosjektoppgave i programmering
 inf2140  | Modeling and programming parallel systems
 inf2220  | Algoritmer og datastrukturer
 inf2260  | Interaksjonsdesign
 inf2270  | Datamaskinarkitektur
 inf2310  | Digital bildebehandling
 inf2810  | Funksjonell programmering
 inf2820  | Datalingvistikk
 inf3100  | Databasesystemer
 inf1400  | Digital teknologi
(21 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select emnekode, enavn
emilyd-> from Emne
emilyd-> where fsem < '2008';
 emnekode |                             enavn
----------+---------------------------------------------------------------
 inf1000  | Grunnkurs i objektorientert programmering
 inf1010  | Objektorientert programmering
 inf1050  | Systemutvikling
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser
 inf1300  | Introduksjon til databaser
 inf2100  | Prosjektoppgave i programmering
 inf2220  | Algoritmer og datastrukturer
 inf2270  | Datamaskinarkitektur
 inf2310  | Digital bildebehandling
 inf3100  | Databasesystemer
 inf1400  | Digital teknologi
(12 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select fsem, emnekode, enavn
emilyd-> from Emne
emilyd-> where fsem > '2008';
  fsem  | emnekode |                       enavn
--------+----------+----------------------------------------------------
 2010-2 | inf1080  | Logiske metoder og informatikk
 2010-1 | inf1411  | Elektroniske systemer
 2010-2 | inf1500  | Introduksjon til design, bruk, interaksjon
 2011-1 | inf1510  | Bruksorientert design
 2011-1 | inf1820  | Introduksjon til språk- og kommunikasjonsteknologi
 2012-1 | inf2080  | Logikk of beregninger
 2012-1 | inf2140  | Modeling and programming parallel systems
 2011-2 | inf2260  | Interaksjonsdesign
 2008-1 | inf2810  | Funksjonell programmering
 2008-1 | inf2820  | Datalingvistikk
(10 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)




emilyd=> select * from Emne
emilyd-> where fsem < '2004' OR fsem > '2011';
 emnekode |                       enavn                        |  fsem
----------+----------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering          | 2003-2
 inf1510  | Bruksorientert design                              | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi | 2011-1
 inf2080  | Logikk of beregninger                              | 2012-1
 inf2140  | Modeling and programming parallel systems          | 2012-1
 inf2260  | Interaksjonsdesign                                 | 2011-2
 inf1400  | Digital teknologi                                  | 2003-2
(7 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select * from Emne
emilyd-> where fsem < '2004' AND fsem > '2011';
 emnekode | enavn | fsem
----------+-------+------
(0 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


emilyd=> select fsem, emnekode, enavn
emilyd-> from Emne;
  fsem  | emnekode |                             enavn
--------+----------+---------------------------------------------------------------
 2003-2 | inf1000  | Grunnkurs i objektorientert programmering
 2004-1 | inf1010  | Objektorientert programmering
 2004-1 | inf1050  | Systemutvikling
 2004-2 | inf1060  | Introduksjon til operativsystemer og datakommunikasjon
 2010-2 | inf1080  | Logiske metoder og informatikk
 2007-2 | inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser
 2007-2 | inf1300  | Introduksjon til databaser
 2010-1 | inf1411  | Elektroniske systemer
 2010-2 | inf1500  | Introduksjon til design, bruk, interaksjon
 2011-1 | inf1510  | Bruksorientert design
 2011-1 | inf1820  | Introduksjon til språk- og kommunikasjonsteknologi
 2012-1 | inf2080  | Logikk of beregninger
 2004-2 | inf2100  | Prosjektoppgave i programmering
 2012-1 | inf2140  | Modeling and programming parallel systems
 2007-2 | inf2220  | Algoritmer og datastrukturer
 2011-2 | inf2260  | Interaksjonsdesign
 2007-1 | inf2270  | Datamaskinarkitektur
 2004-1 | inf2310  | Digital bildebehandling
 2008-1 | inf2810  | Funksjonell programmering
 2008-1 | inf2820  | Datalingvistikk
 2004-1 | inf3100  | Databasesystemer
 2003-2 | inf1400  | Digital teknologi
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select fsem, emnekode, enavn
from Emne order by fsem;
  fsem  | emnekode |                             enavn
--------+----------+---------------------------------------------------------------
 2003-2 | inf1000  | Grunnkurs i objektorientert programmering
 2003-2 | inf1400  | Digital teknologi
 2004-1 | inf1050  | Systemutvikling
 2004-1 | inf2310  | Digital bildebehandling
 2004-1 | inf3100  | Databasesystemer
 2004-1 | inf1010  | Objektorientert programmering
 2004-2 | inf2100  | Prosjektoppgave i programmering
 2004-2 | inf1060  | Introduksjon til operativsystemer og datakommunikasjon
 2007-1 | inf2270  | Datamaskinarkitektur
 2007-2 | inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser
 2007-2 | inf2220  | Algoritmer og datastrukturer
 2007-2 | inf1300  | Introduksjon til databaser
 2008-1 | inf2820  | Datalingvistikk
 2008-1 | inf2810  | Funksjonell programmering
 2010-1 | inf1411  | Elektroniske systemer
 2010-2 | inf1080  | Logiske metoder og informatikk
 2010-2 | inf1500  | Introduksjon til design, bruk, interaksjon
 2011-1 | inf1510  | Bruksorientert design
 2011-1 | inf1820  | Introduksjon til språk- og kommunikasjonsteknologi
 2011-2 | inf2260  | Interaksjonsdesign
 2012-1 | inf2140  | Modeling and programming parallel systems
 2012-1 | inf2080  | Logikk of beregninger
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select * from Emne
emilyd-> where fsem BETWEEN '2011' AND '2005'
emilyd-> order by fsem;
 emnekode | enavn | fsem
----------+-------+------
(0 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select * from Emne
emilyd-> where fsem < '2011' AND fsem > '2005' OR emnekode = 'inf1000'
emilyd-> order by fsem;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf2820  | Datalingvistikk                                               | 2008-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
(10 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)




emilyd=> select * from Emne
emilyd-> where (fsem < '2011' AND fsem > '2005') OR emnekode = 'inf1000'
emilyd-> order by fsem;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf2820  | Datalingvistikk                                               | 2008-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
(10 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)




emilyd=> select * from Emne
emilyd-> where fsem < '2011' AND fsem > '2005';
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
(9 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select * from Emne
emilyd-> where fsem < '2011' AND (fsem > '2005' OR emnekode = 'inf1000')
emilyd-> order by fsem;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf2820  | Datalingvistikk                                               | 2008-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
(10 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)




emilyd=> select * from Emne
emilyd-> where (fsem > '2011' OR fsem < '2005' ) AND emnekode = 'inf1000'
emilyd-> order by fsem;
 emnekode |                   enavn                   |  fsem
----------+-------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering | 2003-2
(1 row)
emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)



emilyd=> select * from Emne
where fsem <> '2004'
order by fsem;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1400  | Digital teknologi                                             | 2003-2
 inf1050  | Systemutvikling                                               | 2004-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf3100  | Databasesystemer                                              | 2004-1
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf2820  | Datalingvistikk                                               | 2008-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2080  | Logikk of beregninger                                         | 2012-1
(22 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


emilyd=> select * from Emne
where fsem <> '2004-1'
order by fsem;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1400  | Digital teknologi                                             | 2003-2
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf1510  | Bruksorientert design                                         | 2011-1
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2080  | Logikk of beregninger                                         | 2012-1
(18 rows)

emilyd=> select * from emne;
 emnekode |                             enavn                             |  fsem
----------+---------------------------------------------------------------+--------
 inf1000  | Grunnkurs i objektorientert programmering                     | 2003-2
 inf1010  | Objektorientert programmering                                 | 2004-1
 inf1050  | Systemutvikling                                               | 2004-1
 inf1060  | Introduksjon til operativsystemer og datakommunikasjon        | 2004-2
 inf1080  | Logiske metoder og informatikk                                | 2010-2
 inf1100  | Grunnkurs i programmering for naturvitenskapelige anvendelser | 2007-2
 inf1300  | Introduksjon til databaser                                    | 2007-2
 inf1400  | Digital teknologi                                             | 2007-2
 inf1411  | Elektroniske systemer                                         | 2010-1
 inf1500  | Introduksjon til design, bruk, interaksjon                    | 2010-2
 inf1510  | Bruksorientert design                                         | 2011-1
 inf1820  | Introduksjon til språk- og kommunikasjonsteknologi            | 2011-1
 inf2080  | Logikk of beregninger                                         | 2012-1
 inf2100  | Prosjektoppgave i programmering                               | 2004-2
 inf2140  | Modeling and programming parallel systems                     | 2012-1
 inf2220  | Algoritmer og datastrukturer                                  | 2007-2
 inf2260  | Interaksjonsdesign                                            | 2011-2
 inf2270  | Datamaskinarkitektur                                          | 2007-1
 inf2310  | Digital bildebehandling                                       | 2004-1
 inf2810  | Funksjonell programmering                                     | 2008-1
 inf2820  | Datalingvistikk                                               | 2008-1
 inf3100  | Databasesystemer                                              | 2004-1
(22 rows)


