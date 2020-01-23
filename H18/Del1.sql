-- Eksempler på create
-- ANsatt(Ald, Navn, Tittel, Fdato, Pnr, AnsDato)

drop table if exists Ansatt;

create table Ansatt (
Ald int primary key, -- vi ønsker ikke at to ansatte skal ha samme Ald
Navn varchar(49) not null,
Tittel varchar(15) not null,
Fdato char(6) not null,
Pnr char(5) not null,
AnsDato date,
unique (Fdato,Pnr) -- to personer kan aldri ha samme fødselsnr = Fdato + Pnr
);

-- Ald er unik og kan ikke gjentas
-- (Fdato, Pnr) er unik og kan ikke gjentas
-- dermed er både Ald og (Fdato, Pnr) kandidatnøkler
-- vi velger Ald som primærnøkkel og markerer (Fdato, Pnr) som kanditatnøkkel


-- \i Del1.sql


-- Et eks. fra filmdatabasen

create table filmparticipation (
    partid int primary key,
    persoind int not null references person (personid),
    filmid int not null references filmitem (filmid),
    parttype text not null
);
