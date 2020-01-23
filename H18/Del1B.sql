-- Datatyper i PostgreSQL

SQL DDL - Data Definition Language

create table: Opprette tabell/ relasjon
drop table: fjerne tabell
alter table: Endre tabell, herunder:

  _Legge til eller fjerne kolonner
  _ Legge til, fjerne eller endre integritetsregler (constraints)



create table





datatype           forklaring

integer            heltall
int                heltall
bigint             store heltall (8 byte)
real               flyttall
numeric(n, d)      n desimal sifre, d etter desimalpunktum
char(n)            tekst med fast lengde
varchar(n)         tekst med variable lengde
text               tekst med ubegrenset lengde
boolean            boolsk verdi
date               dato
time               klokkeslett
timestamp          dato og klokkeslett
bit(n)             bitstreng med fast lengde
bit varying(n)     bitstreng med variable lengde


Nøkler og nøkkelattributer


En kandidatnøkkel er et eller flere attributer som bare kan ha unike verdier
F. eks. (fødselsdato, personnr), eller (brukernavn), eller (filmid), eller (brukernavn, emnekode,semester)

Supernøkkel
En kombinasjon (delmengde) X av attributtene {A1, A2, ..., AN} som er slik at hvis t og u er to tupler hvor t!= u,
så er t(X) != u(X). ALtså hvis to tupler er forskjellige, er de også forskjellige når vi bare ser på attributtene som er i X.

Eks:
Attributtene i Ansatt tabellen: AId, Navn, Tittel, Fdato, Pnr, AnsDato


Kandidatnøkkel: En minimal supernøkkel
Dvs: Fjerning av et hvilket som helst attributt fører til at de gjenværende attributtene ikke lenger utgjør en supernøkkel.
Eks: AId, (Fdato, Pnr)


Primærnøkkel: Et utvalg blant kandidatnøklene. I relasjonsmodellenskal alle relasjoner ha nøyaktig en primærnøkkel. Primærnøkkelen
 blir markert med 1 strek, og primærnøkkelen med to.

 Nøkkelattributt: Attributt som er med i (minst en kandidatnøkkel)

Sammenlign kandidatnøkler og entydighesskranker i ORM: Begge angir at forekomster under skranken bare kan forekomme en gang.
