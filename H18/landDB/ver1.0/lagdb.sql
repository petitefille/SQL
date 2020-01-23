/*
 *
 *        kjøres i psql med kommandoen  
 *        \i lagDB.sql
 *	  psql må startes i samme mappe som lagDB.sql
 *        og de andre filene ligger i samme mappe som eksempler.sql
 *        
 */

-- lager et eget skjema for landdatabasen

-- gir feilmedling fra 2. gangs kjøring og bør kommenteres vekk
create schema landdb; 
-- denne og resten bør stå uforandret
set search_path to landdb;
-- lager databasen

drop view if exists Antbyer;
drop table if exists Land;
drop table if exists TallForLand;
drop table if exists Bydata;
drop table if exists Landtlfkode;
drop table if exists Afrikaland;

create table Land (
       kode char(2) primary key, -- landkode 2 bokstaver
       navn text unique,
       pref varchar(20), -- unique,
       iso3 char(3) unique -- landkode 3 bokstaver
);

create table TallForLand ( 
       kode char(2) primary key,
       pop  integer,
       km2  integer,
       bnp  text
);

create table Bydata (
       navn text,
       ascii text,
       brdgr real,
       lnggr real,
       pop real,
       lnavn text,
       kode char(2),
       iso3 char(3),
       region text
);

create table LandTlfkode (
       navn text primary key,
       pref varchar(20)
);

-- pass på STORE og små bokstaver i filnavn:

\copy  Land from 'landkoder.txt' with delimiter '|' null ''
\copy  TallForLand from 'popogbnp.txt' with delimiter '|' null ''
\copy  Bydata from 'bydata.csv' with delimiter ',' null ''
\copy  Landtlfkode from 'telefonprfafrika' with delimiter '|' null ''

-- skriver ut (\Describe:) tabellene (og view-ene) vi har laga
\d


