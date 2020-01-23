
emilyd=> -------------------------------------------------------------------------------------------------------------------------
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> select kode || ' er koden for ' || navn as Afrikaland 
emilyd-> from Afrikaland
emilyd-> order by kode;
                    afrikaland                    
--------------------------------------------------
 AO er koden for Angola
 BF er koden for Burkina Faso
 BI er koden for Burundi
 BJ er koden for Benin
 BW er koden for Botswana
 CD er koden for Democratic Republic of the Congo
 CF er koden for Central African Republic
 CG er koden for Republic of the Congo
 CI er koden for Ivory Coast
 CM er koden for Cameroon
 CV er koden for Cape Verde
 DJ er koden for Djibouti
 DZ er koden for Algeria
 EG er koden for Egypt
 EH er koden for Western Sahara
 ER er koden for Eritrea
 ET er koden for Ethiopia
 GA er koden for Gabon
 GH er koden for Ghana
 GM er koden for Gambia
 GN er koden for Guinea
 GQ er koden for Equatorial Guinea
 GW er koden for Guinea-Bissau
 KE er koden for Kenya
 KM er koden for Comoros
 LR er koden for Liberia
 LS er koden for Lesotho
 LY er koden for Libya
 MA er koden for Morocco
 MG er koden for Madagascar
 ML er koden for Mali
 MR er koden for Mauritania
 MU er koden for Mauritius
 MW er koden for Malawi
 MZ er koden for Mozambique
 NA er koden for Namibia
 NE er koden for Niger
 NG er koden for Nigeria
 RE er koden for Reunion
 RW er koden for Rwanda
 SC er koden for Seychelles
 SD er koden for Sudan
 SH er koden for Saint Helena
 SL er koden for Sierra Leone
 SN er koden for Senegal
 SO er koden for Somalia
 ST er koden for Sao Tome and Principe
 SZ er koden for Swaziland
 TD er koden for Chad
 TG er koden for Togo
 TN er koden for Tunisia
 TZ er koden for Tanzania
 UG er koden for Uganda
 YT er koden for Mayotte
 ZA er koden for South Africa
 ZM er koden for Zambia
 ZW er koden for Zimbabwe
(57 rows)

emilyd=> 
emilyd=> 
emilyd=> select 2*3;
 ?column? 
----------
        6
(1 row)

emilyd=> select 2*3+52 as femtito_pluss_2x3;
 femtito_pluss_2x3 
-------------------
                58
(1 row)

emilyd=> select 7 sju_x1, 7*2 x2, 7*3 x3, 7*4 x4, 7*5 x5, 7*6 x6, 7*7 x7, 7*8 x8, 7*9 x9;
 sju_x1 | x2 | x3 | x4 | x5 | x6 | x7 | x8 | x9 
--------+----+----+----+----+----+----+----+----
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63
(1 row)

emilyd=> select 7 sju_x1, 7*2 x2, 7*3 x3, 7*4 x4, 7*5 x5, 7*6 x6, 7*7 x7, 7*8 x8, 7*9 x9,
emilyd->        kode
emilyd-> from afrikaland;
 sju_x1 | x2 | x3 | x4 | x5 | x6 | x7 | x8 | x9 | kode 
--------+----+----+----+----+----+----+----+----+------
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | DZ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | AO
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | BJ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | BW
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | BF
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | BI
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | CM
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | CV
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | CF
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | TD
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | KM
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | CD
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | DJ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | EG
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | GQ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ER
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ET
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | GA
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | GM
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | GH
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | GN
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | GW
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | CI
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | KE
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | LS
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | LR
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | LY
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | MG
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | MW
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ML
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | MR
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | MU
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | YT
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | MA
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | MZ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | NA
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | NE
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | NG
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | CG
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | RE
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | RW
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SH
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ST
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SN
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SC
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SL
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SO
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ZA
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SD
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | SZ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | TZ
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | TG
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | TN
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | UG
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | EH
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ZM
      7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 | ZW
(57 rows)

emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> select count(*) from afrikaland;
 count 
-------
    57
(1 row)

emilyd=> select * from bydata
emilyd-> where kode = 'NO'
emilyd-> order by region, navn;
     navn     |    ascii     |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso3 |      region      
--------------+--------------+---------+---------+---------+--------+------+------+------------------
 Bærum        | Baerum       | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR  | Akershus
 Arendal      | Arendal      | 58.4648 |   8.766 |   30916 | Norway | NO   | NOR  | Aust-Agder
 Drammen      | Drammen      | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR  | Buskerud
 Alta         | Alta         | 69.9666 | 23.2417 |   12077 | Norway | NO   | NOR  | Finnmark
 Hammerfest   | Hammerfest   | 70.6613 |  23.688 |    9967 | Norway | NO   | NOR  | Finnmark
 Kirkenes     | Kirkenes     |  69.725 | 30.0516 |    2728 | Norway | NO   | NOR  | Finnmark
 Vadsø        | Vadso        | 70.0966 | 29.7657 |    5139 | Norway | NO   | NOR  | Finnmark
 Hamar        | Hamar        |   60.82 |  11.069 |   29479 | Norway | NO   | NOR  | Hedmark
 Bergen       | Bergen       |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR  | Hordaland
 Vossavangen  | Vossavangen  |   60.63 |   6.441 |    5571 | Norway | NO   | NOR  | Hordaland
 Molde        | Molde        | 62.7483 | 7.18332 | 16171.5 | Norway | NO   | NOR  | Møre og Romsdal
 Ålesund      | Alesund      | 62.5454 | 6.38802 |   45377 | Norway | NO   | NOR  | Møre og Romsdal
 Namsos       | Namsos       | 64.4833 |    11.5 |    9035 | Norway | NO   | NOR  | Nord-Trøndelag
 Rørvik       | Rorvik       |  64.868 | 11.2053 |    2615 | Norway | NO   | NOR  | Nord-Trøndelag
 Steinkjer    | Steinkjer    | 64.0171 |    11.5 | 11193.5 | Norway | NO   | NOR  | Nord-Trøndelag
 Bodø         | Bodo         | 67.2468 |  14.399 | 31383.5 | Norway | NO   | NOR  | Nordland
 Mo i Rana    | Mo i Rana    | 66.3166 | 14.1667 |   19131 | Norway | NO   | NOR  | Nordland
 Narvik       | Narvik       | 68.3831 |   17.29 | 19236.5 | Norway | NO   | NOR  | Nordland
 Svolvær      | Svolvaer     | 68.2333 | 14.5667 |    4197 | Norway | NO   | NOR  | Nordland
 Gjøvik       | Gjovik       |    60.8 |    10.7 | 20157.5 | Norway | NO   | NOR  | Oppland
 Lillehammer  | Lillehammer  | 61.1333 |    10.5 |   19319 | Norway | NO   | NOR  | Oppland
 Oslo         | Oslo         | 59.9167 |   10.75 |  707500 | Norway | NO   | NOR  | Oslo
 Haugesund    | Haugesund    | 59.4119 |  5.2775 | 36219.5 | Norway | NO   | NOR  | Rogaland
 Sandnes      | Sandnes      | 58.8454 | 5.69003 |   46911 | Norway | NO   | NOR  | Rogaland
 Stavanger    | Stavanger    |   58.97 |    5.68 |  136999 | Norway | NO   | NOR  | Rogaland
 Leikanger    | Hermansverk  | 61.1833 |    6.85 |    1965 | Norway | NO   | NOR  | Sogn og Fjordane
 Trondheim    | Trondheim    | 63.4167 | 10.4167 |  144336 | Norway | NO   | NOR  | Sør-Trøndelag
 Skien        | Skien        |    59.2 | 9.60002 |   73330 | Norway | NO   | NOR  | Telemark
 Finnsnes     | Finnsnes     | 69.2406 | 18.0086 |    3611 | Norway | NO   | NOR  | Troms
 Harstad      | Harstad      | 68.7879 | 16.5156 |   19203 | Norway | NO   | NOR  | Troms
 Tromsø       | Tromso       | 69.6351 |  18.992 | 48900.5 | Norway | NO   | NOR  | Troms
 Kristiansand | Kristiansand | 58.1666 | 8.00002 |   58292 | Norway | NO   | NOR  | Vest-Agder
 Tønsberg     | Tonsberg     |  59.264 |  10.421 |   38914 | Norway | NO   | NOR  | Vestfold
 Moss         | Moss         |  59.437 | 10.6692 | 35696.5 | Norway | NO   | NOR  | Østfold
(34 rows)

emilyd=> select sum(pop)
emilyd-> from bydata
emilyd-> where kode = 'NO';
     sum     
-------------
 2.04506e+06
(1 row)

emilyd=> select L.kode, pop
emilyd-> from Land L natural join TallForLand T
emilyd-> where L.kode = 'NO';
 kode |   pop   
------+---------
 NO   | 5009150
(1 row)

emilyd=> \d land
            Table "landdb.land"
 Column |         Type          | Modifiers 
--------+-----------------------+-----------
 kode   | character(2)          | not null
 navn   | text                  | 
 pref   | character varying(20) | 
 iso3   | character(3)          | 
Indexes:
    "land_pkey" PRIMARY KEY, btree (kode)
    "land_iso3_key" UNIQUE CONSTRAINT, btree (iso3)
    "land_navn_key" UNIQUE CONSTRAINT, btree (navn)

emilyd=> \d tallforland
    Table "landdb.tallforland"
 Column |     Type     | Modifiers 
--------+--------------+-----------
 kode   | character(2) | not null
 pop    | integer      | 
 km2    | integer      | 
 bnp    | text         | 
Indexes:
    "tallforland_pkey" PRIMARY KEY, btree (kode)

emilyd=> select B.navn, B.pop, L.kode, T.pop
emilyd-> from Land L natural join TallForLand T
emilyd->      join Bydata B on B.kode = L.kode
emilyd-> where L.kode = 'NO';
     navn     |   pop   | kode |   pop   
--------------+---------+------+---------
 Arendal      |   30916 | NO   | 5009150
 Vossavangen  |    5571 | NO   | 5009150
 Leikanger    |    1965 | NO   | 5009150
 Bærum        |  113659 | NO   | 5009150
 Hamar        |   29479 | NO   | 5009150
 Tønsberg     |   38914 | NO   | 5009150
 Finnsnes     |    3611 | NO   | 5009150
 Gjøvik       | 20157.5 | NO   | 5009150
 Rørvik       |    2615 | NO   | 5009150
 Harstad      |   19203 | NO   | 5009150
 Ålesund      |   45377 | NO   | 5009150
 Sandnes      |   46911 | NO   | 5009150
 Drammen      | 85437.5 | NO   | 5009150
 Steinkjer    | 11193.5 | NO   | 5009150
 Svolvær      |    4197 | NO   | 5009150
 Mo i Rana    |   19131 | NO   | 5009150
 Narvik       | 19236.5 | NO   | 5009150
 Bodø         | 31383.5 | NO   | 5009150
 Haugesund    | 36219.5 | NO   | 5009150
 Stavanger    |  136999 | NO   | 5009150
 Skien        |   73330 | NO   | 5009150
 Namsos       |    9035 | NO   | 5009150
 Alta         |   12077 | NO   | 5009150
 Vadsø        |    5139 | NO   | 5009150
 Molde        | 16171.5 | NO   | 5009150
 Lillehammer  |   19319 | NO   | 5009150
 Kirkenes     |    2728 | NO   | 5009150
 Kristiansand |   58292 | NO   | 5009150
 Hammerfest   |    9967 | NO   | 5009150
 Tromsø       | 48900.5 | NO   | 5009150
 Trondheim    |  144336 | NO   | 5009150
 Bergen       |  200390 | NO   | 5009150
 Oslo         |  707500 | NO   | 5009150
 Moss         | 35696.5 | NO   | 5009150
(34 rows)

emilyd=> select max(T.pop) - sum(B.pop)
emilyd-> from Land L natural join TallForLand T
emilyd->      join Bydata B on B.kode = L.kode
emilyd-> where L.kode = 'NO';
 ?column? 
----------
  2964093
(1 row)

emilyd=> select 2045060 + 2964093;
 ?column? 
----------
  5009153
(1 row)

emilyd=> select navn
emilyd-> from Bydata
emilyd-> where kode = 'BE';
   navn    
-----------
 Mons
 Hasselt
 Arlon
 Gent
 Liege
 Brugge
 Namur
 Charleroi
 Antwerpen
 Brussels
(10 rows)

emilyd=> select B.*
emilyd-> from bydata B natural join Afrikaland A;
   navn   |  ascii   | brdgr  | lnggr  |  pop   |  lnavn   | kode | iso3 |  region  
----------+----------+--------+--------+--------+----------+------+------+----------
 Djibouti | Djibouti | 11.595 | 43.148 | 763506 | Djibouti | DJ   | DJI  | Djibouti
(1 row)

emilyd=> \d bydata
       Table "landdb.bydata"
 Column |     Type     | Modifiers 
--------+--------------+-----------
 navn   | text         | 
 ascii  | text         | 
 brdgr  | real         | 
 lnggr  | real         | 
 pop    | real         | 
 lnavn  | text         | 
 kode   | character(2) | 
 iso3   | character(3) | 
 region | text         | 

emilyd=> \d land
            Table "landdb.land"
 Column |         Type          | Modifiers 
--------+-----------------------+-----------
 kode   | character(2)          | not null
 navn   | text                  | 
 pref   | character varying(20) | 
 iso3   | character(3)          | 
Indexes:
    "land_pkey" PRIMARY KEY, btree (kode)
    "land_iso3_key" UNIQUE CONSTRAINT, btree (iso3)
    "land_navn_key" UNIQUE CONSTRAINT, btree (navn)

emilyd=> select B.*
emilyd-> from bydata B inner join Afrikaland A on B.kode=A.kode;
        navn        |       ascii        |    brdgr    |   lnggr    |     pop     |          lnavn           | kode | iso3 |                region
                
--------------------+--------------------+-------------+------------+-------------+--------------------------+------+------+----------------------
----------------
 Jijel              | Jijel              |      36.822 |      5.766 |      148000 | Algeria                  | DZ   | DZA  | Jijel
 Tizi-Ouzou         | Tizi-Ouzou         |        36.8 |    4.03333 |      144000 | Algeria                  | DZ   | DZA  | Tizi Ouzou
 Bordj Bou Arreridj | Bordj Bou Arreridj |      36.059 |       4.63 |      134500 | Algeria                  | DZ   | DZA  | Bordj Bou Arréridj
 M'sila             | M'sila             |        35.7 |      4.545 |      125000 | Algeria                  | DZ   | DZA  | M'Sila
 Guelma             | Guelma             |      36.466 |      7.428 |      123590 | Algeria                  | DZ   | DZA  | Guelma
 Oum el Bouaghi     | Oum el Bouaghi     |       35.85 |       7.15 |      100821 | Algeria                  | DZ   | DZA  | Oum el Bouaghi
 Timimoun           | Timimoun           |     29.2365 |   0.269999 |       26568 | Algeria                  | DZ   | DZA  | Adrar
 Sidi bel Abbes     | Sidi bel Abbes     |     35.1903 |  -0.639972 |      200186 | Algeria                  | DZ   | DZA  | Sidi Bel Abbès
 Tlimcen            | Tlimcen            |     34.8904 |   -1.32001 |      181059 | Algeria                  | DZ   | DZA  | Tlemcen
 Beni Ounif         | Beni Ounif         |     32.0493 |   -1.25138 |        5628 | Algeria                  | DZ   | DZA  | Béchar
 Abadla             | Abadla             |     31.0171 |   -2.73331 |       14364 | Algeria                  | DZ   | DZA  | Béchar
 Sefra              | Sefra              |     32.7604 |  -0.579949 |       51118 | Algeria                  | DZ   | DZA  | Naâma
 Skikda             | Skikda             |     36.8804 |    6.89998 |      193942 | Algeria                  | DZ   | DZA  | Skikda
 Djanet             | Djanet             |     24.5529 |    9.48225 |         666 | Algeria                  | DZ   | DZA  | Illizi
 I-n-Amenas         | I-n-Amenas         |     28.0503 |       9.55 |         216 | Algeria                  | DZ   | DZA  | Illizi
 In Amguel          | In Amguel          |     23.6939 |    5.16474 |        3030 | Algeria                  | DZ   | DZA  | Tamanghasset
 El Bayadh          | El Bayadh          |     33.6904 |    1.00995 |       67413 | Algeria                  | DZ   | DZA  | El Bayadh
 El Oued            | El Oued            |     33.3704 |    6.85998 |      177497 | Algeria                  | DZ   | DZA  | Biskra
 Hassi Messaoud     | Hassi Messaoud     |     31.7023 |    6.05445 |       18124 | Algeria                  | DZ   | DZA  | Ouargla
 Chlef              | Chlef              |     36.1704 |    1.31996 |      449167 | Algeria                  | DZ   | DZA  | Chlef
 Mascara            | Mascara            |     35.4004 |   0.140033 |      108230 | Algeria                  | DZ   | DZA  | Mascara
 Mostaganem         | Mostaganem         |     35.9404 |  0.0899839 |      159177 | Algeria                  | DZ   | DZA  | Mostaganem
 Saida              | Saida              |     34.8404 |   0.140033 |      134855 | Algeria                  | DZ   | DZA  | Saïda
 Tiarat             | Tiarat             |     35.3804 |    1.31996 |      184195 | Algeria                  | DZ   | DZA  | Tiaret
 Bejaia             | Bejaia             |     36.7604 |    5.07002 |      274520 | Algeria                  | DZ   | DZA  | Béjaïa
 Blida              | Blida              |     36.4203 |       2.83 |      388174 | Algeria                  | DZ   | DZA  | Blida
 Bouira             | Bouira             |     36.3805 |    3.90001 |      110144 | Algeria                  | DZ   | DZA  | Bouira
 Medea              | Medea              |     36.2704 |       2.77 |      145864 | Algeria                  | DZ   | DZA  | Médéa
 Souk Ahras         | Souk Ahras         |     36.2904 |       7.95 |      134947 | Algeria                  | DZ   | DZA  | Souk Ahras
 Tebessa            | Tebessa            |     35.4104 |    8.12001 |      171742 | Algeria                  | DZ   | DZA  | Tébessa
 Adrar              | Adrar              |       27.87 |  -0.289967 |       56910 | Algeria                  | DZ   | DZA  | Adrar
 Reggane            | Reggane            |        26.7 |   0.166646 |     22351.5 | Algeria                  | DZ   | DZA  | Adrar
 Bechar             | Bechar             |     31.6111 |      -2.23 |      142416 | Algeria                  | DZ   | DZA  | Béchar
 Tindouf            | Tindouf            |     27.6742 |   -8.14778 |       18270 | Algeria                  | DZ   | DZA  | Tindouf
 Illizi             | Illizi             |     26.4834 |     8.4666 |        7293 | Algeria                  | DZ   | DZA  | Illizi
 Arak               | Arak               |       25.28 |    3.74999 |      423251 | Algeria                  | DZ   | DZA  | Tamanghasset
 I-n-Salah          | I-n-Salah          |     27.2166 |    2.46661 |       28632 | Algeria                  | DZ   | DZA  | Tamanghasset
 El Golea           | El Golea           |     30.5666 |    2.88333 |       32049 | Algeria                  | DZ   | DZA  | Ghardaïa
 Laghouat           | Laghouat           |       33.81 |    2.88002 |      108279 | Algeria                  | DZ   | DZA  | Laghouat
 Touggourt          | Touggourt          |        33.1 |    6.05998 |       91499 | Algeria                  | DZ   | DZA  | Ouargla
 Ouargla            | Ouargla            |       31.97 |    5.34002 |      176271 | Algeria                  | DZ   | DZA  | Ouargla
 Biskra             | Biskra             |       34.86 |    5.73003 |      202103 | Algeria                  | DZ   | DZA  | Biskra
 Djelfa             | Djelfa             |       34.68 |    3.25002 |      170901 | Algeria                  | DZ   | DZA  | Djelfa
 Setif              | Setif              |       36.18 |    5.39997 |      274744 | Algeria                  | DZ   | DZA  | Sétif
 Batna              | Batna              |       35.57 |       6.17 |      269467 | Algeria                  | DZ   | DZA  | Batna
 Annaba             | Annaba             |       36.92 |    7.75998 |      355047 | Algeria                  | DZ   | DZA  | Annaba
 Constantine        | Constantine        |       36.36 |    6.59995 |      527638 | Algeria                  | DZ   | DZA  | Constantine
 Oran               | Oran               |       35.71 |  -0.619973 |      721992 | Algeria                  | DZ   | DZA  | Oran
 Tamanrasset        | Tamanrasset        |      22.785 |     5.5228 |       71808 | Algeria                  | DZ   | DZA  | Tamanghasset
 Ghardaia           | Ghardaia           |       32.49 |       3.67 |      125480 | Algeria                  | DZ   | DZA  | Ghardaïa
 Algiers            | Algiers            |     36.7631 |    3.05055 | 2.66583e+06 | Algeria                  | DZ   | DZA  | Alger
 Mucusso            | Mucusso            |    -18.0195 |      21.43 |         100 | Angola                   | AO   | AGO  | Cuando Cubango
 Lucapa             | Lucapa             |     -8.4196 |      20.74 |       25578 | Angola                   | AO   | AGO  | Lunda Norte
 Capenda-Camulemba  | Capenda-Camulemba  |    -9.41959 |      18.43 |     79842.5 | Angola                   | AO   | AGO  | Lunda Norte
 Saurimo            | Saurimo            |    -9.65958 |      20.39 |       40907 | Angola                   | AO   | AGO  | Lunda Sul
 Muconda            | Muconda            |    -10.5996 |      21.32 |        2324 | Angola                   | AO   | AGO  | Lunda Sul
 Cacolo             | Cacolo             |    -10.1496 |      19.26 |         984 | Angola                   | AO   | AGO  | Lunda Sul
 Caxito             | Caxito             |    -8.57954 |      13.66 |     15665.5 | Angola                   | AO   | AGO  | Bengo
 Camabatela         | Camabatela         |    -8.18959 |      15.37 |       12731 | Angola                   | AO   | AGO  | Cuanza Norte
 Ndalatando         | Ndalatando         |    -9.29955 |      14.91 |        8144 | Angola                   | AO   | AGO  | Cuanza Norte
 Quibala            | Quibala            |    -10.7296 |      14.98 |      5248.5 | Angola                   | AO   | AGO  | Cuanza Sul
 Calulo             | Calulo             |    -9.99961 |       14.9 |         795 | Angola                   | AO   | AGO  | Cuanza Sul
 Waku Kungo         | Waku Kungo         |    -11.3595 |      15.12 |     11519.5 | Angola                   | AO   | AGO  | Cuanza Sul
 Songo              | Songo              |    -7.34959 |      14.85 |       10579 | Angola                   | AO   | AGO  | Uíge
 Mbanza-Congo       | Mbanza-Congo       |    -6.26961 |      14.24 |       42201 | Angola                   | AO   | AGO  | Zaire
 Nzeto              | Nzeto              |     -7.2296 |      12.86 |     19705.5 | Angola                   | AO   | AGO  | Zaire
 Soyo               | Soyo               |    -6.12961 |      12.37 |       65329 | Angola                   | AO   | AGO  | Zaire
 Cabinda            | Cabinda            |    -5.55962 |      12.19 |     78905.5 | Angola                   | AO   | AGO  | Cabinda
 Calucinga          | Calucinga          |    -11.3196 |       16.2 |         531 | Angola                   | AO   | AGO  | Bié
 Camacupa           | Camacupa           |    -12.0196 |      17.47 |       19489 | Angola                   | AO   | AGO  | Bié
 Cubal              | Cubal              |    -13.0396 |      14.24 |        4837 | Angola                   | AO   | AGO  | Benguela
 Mavinga            | Mavinga            |    -15.7895 |      20.36 |       30000 | Angola                   | AO   | AGO  | Cuando Cubango
 Cuito Caunavale    | Cuito Caunavale    |    -15.1596 |      19.17 |         149 | Angola                   | AO   | AGO  | Cuando Cubango
 Luiana             | Luiana             |    -17.3695 |         23 |         150 | Angola                   | AO   | AGO  | Cuando Cubango
 Ondjiva            | Ondjiva            |    -17.0696 |      15.73 |        8748 | Angola                   | AO   | AGO  | Cunene
 Chitado            | Chitado            |    -17.3196 |      13.92 |       468.5 | Angola                   | AO   | AGO  | Cunene
 Chibemba           | Chibemba           |    -15.7496 |      14.08 |        1502 | Angola                   | AO   | AGO  | Huíla
 Chibia             | Chibia             |    -15.1896 |      13.69 |        1411 | Angola                   | AO   | AGO  | Huíla
 Quipungo           | Quipungo           |    -14.8295 |      14.55 |         186 | Angola                   | AO   | AGO  | Huíla
 Luau               | Luau               |    -10.7095 |      22.23 |        9964 | Angola                   | AO   | AGO  | Moxico
 Cangamba           | Cangamba           |    -13.6996 |      19.86 |        1307 | Angola                   | AO   | AGO  | Moxico
 Lumbala Nguimbo    | Lumbala Nguimbo    |    -14.0996 |      21.44 |          25 | Angola                   | AO   | AGO  | Moxico
 Cazombo            | Cazombo            |    -11.8896 |       22.9 |         298 | Angola                   | AO   | AGO  | Moxico
 Dundo              | Dundo              |    -7.38003 |      20.83 |       11985 | Angola                   | AO   | AGO  | Lunda Norte
 Ambriz             | Ambriz             |    -7.85499 |     13.125 |       17000 | Angola                   | AO   | AGO  | Bengo
 Dondo              | Dondo              |    -9.69002 |      14.43 |        2353 | Angola                   | AO   | AGO  | Cuanza Norte
 Sumbe              | Sumbe              |      -11.21 |      13.85 |     29638.5 | Angola                   | AO   | AGO  | Cuanza Sul
 Uige               | Uige               |    -7.62001 |      15.05 |     56787.5 | Angola                   | AO   | AGO  | Uíge
 Kuito              | Kuito              |      -12.38 |      16.94 |      113955 | Angola                   | AO   | AGO  | Bié
 Lobito             | Lobito             |      -12.37 |    13.5412 |      170733 | Angola                   | AO   | AGO  | Benguela
 Xangongo           | Xangongo           |      -16.74 |      14.97 |         447 | Angola                   | AO   | AGO  | Cunene
 Luena              | Luena              |      -11.79 |       19.9 |     17276.5 | Angola                   | AO   | AGO  | Moxico
 Tômbua             | Tombua             |       -15.8 |      11.86 |       40000 | Angola                   | AO   | AGO  | Namibe
 Malanje            | Malanje            |       -9.54 |      16.34 |      106451 | Angola                   | AO   | AGO  | Malanje
 Benguela           | Benguela           |    -12.5783 |    13.4072 |      142017 | Angola                   | AO   | AGO  | Benguela
 Lubango            | Lubango            |      -14.91 |      13.49 |      114086 | Angola                   | AO   | AGO  | Huíla
 Namibe             | Namibe             |      -15.19 |      12.16 |      128130 | Angola                   | AO   | AGO  | Namibe
 Menongue           | Menongue           |    -14.6666 |       17.7 |       13030 | Angola                   | AO   | AGO  | Cuando Cubango
 Huambo             | Huambo             |      -12.75 |      15.76 |      986000 | Angola                   | AO   | AGO  | Huambo
 Luanda             | Luanda             |    -8.83829 |    13.2344 | 3.56209e+06 | Angola                   | AO   | AGO  | Luanda
 Lokossa            | Lokossa            |       6.615 |      1.715 |       86971 | Benin                    | BJ   | BEN  | Mono
 Kandi              | Kandi              |     11.1304 |    2.94002 |       73483 | Benin                    | BJ   | BEN  | Alibori
 Ouidah             | Ouidah             |     6.36037 |    2.08999 |       83503 | Benin                    | BJ   | BEN  | Atlantique
 Abomey             | Abomey             |      7.1904 |       1.99 |       82154 | Benin                    | BJ   | BEN  | Zou
 Natitingou         | Natitingou         |     10.3204 |    1.38998 |     65356.5 | Benin                    | BJ   | BEN  | Atakora
 Djougou            | Djougou            |     9.70043 |    1.68004 |      152708 | Benin                    | BJ   | BEN  | Donga
 Parakou            | Parakou            |     9.34001 |    2.62004 |      176303 | Benin                    | BJ   | BEN  | Borgou
 Porto-Novo         | Porto-Novo         |     6.48331 |    2.61663 |      267084 | Benin                    | BJ   | BEN  | Ouémé
 Cotonou            | Cotonou            |     6.40001 |    2.51999 |      726292 | Benin                    | BJ   | BEN  | Ouémé
 Mochudi            | Mochudi            |     -24.377 |     26.152 |       39700 | Botswana                 | BW   | BWA  | Kgatleng
 Ghanzi             | Ghanzi             |    -21.6996 |      21.64 |        6306 | Botswana                 | BW   | BWA  | Ghanzi
 Lokhwabe           | Lokhwabe           |    -24.1696 |      21.83 |        1473 | Botswana                 | BW   | BWA  | Kgalagadi
 Lehututu           | Lehututu           |    -23.9696 |      21.87 |        1942 | Botswana                 | BW   | BWA  | Kgalagadi
 Tshabong           | Tshabong           |    -26.0095 |       22.4 |        9679 | Botswana                 | BW   | BWA  | Kgalagadi
 Tsau               | Tsau               |    -20.1596 |      22.46 |        1409 | Botswana                 | BW   | BWA  | North-West
 Nokaneng           | Nokaneng           |    -19.6696 |      22.27 |        1763 | Botswana                 | BW   | BWA  | North-West
 Mohembo            | Mohembo            |    -18.2996 |       21.8 |         757 | Botswana                 | BW   | BWA  | North-West
 Maun               | Maun               |    -19.9896 |      23.42 |       47059 | Botswana                 | BW   | BWA  | North-West
 Kasane             | Kasane             |    -17.8096 |      25.15 |      7774.5 | Botswana                 | BW   | BWA  | North-West
 Nata               | Nata               |    -20.2095 |      26.19 |      2492.5 | Botswana                 | BW   | BWA  | Central
 Mopipi             | Mopipi             |    -21.1795 |      24.88 |        3301 | Botswana                 | BW   | BWA  | Central
 Palapye            | Palapye            |    -22.5596 |      27.13 |       27179 | Botswana                 | BW   | BWA  | Central
 Lobatse            | Lobatse            |    -25.2196 |      25.68 |     50343.5 | Botswana                 | BW   | BWA  | South-East
 Kanye              | Kanye              |    -24.9696 |      25.34 |     45773.5 | Botswana                 | BW   | BWA  | Southern
 Molepolole         | Molepolole         |       -24.4 |      25.51 |       57713 | Botswana                 | BW   | BWA  | Kweneng
 Francistown        | Francistown        |      -21.17 |       27.5 |     89179.5 | Botswana                 | BW   | BWA  | Central
 Mahalapye          | Mahalapye          |       -23.1 |      26.82 |     47607.5 | Botswana                 | BW   | BWA  | Central
 Serowe             | Serowe             |      -22.39 |      26.71 |       47996 | Botswana                 | BW   | BWA  | Central
 Gaborone           | Gaborone           |    -24.6463 |    25.9119 |      183827 | Botswana                 | BW   | BWA  | South-East
 Fada Ngourma       | Fada Ngourma       |      12.055 |   0.360999 |       33910 | Burkina Faso             | BF   | BFA  | Gourma
 Orodara            | Orodara            |      10.974 |     -4.908 |       18632 | Burkina Faso             | BF   | BFA  | Kénédougou
 Solenzo            | Solenzo            |     12.1833 |   -4.08333 |       10385 | Burkina Faso             | BF   | BFA  | Banwa
 Nouna              | Nouna              |      12.729 |      -3.86 |       29048 | Burkina Faso             | BF   | BFA  | Kossi
 Dedougou           | Dedougou           |      12.455 |     -3.464 |       45341 | Burkina Faso             | BF   | BFA  | Mou Houn
 Gorom Gorom        | Gorom Gorom        |       14.45 |  -0.233298 |        6691 | Burkina Faso             | BF   | BFA  | Oudalan
 Djibo              | Djibo              |      14.099 |     -1.627 |       22223 | Burkina Faso             | BF   | BFA  | Soum
 Tougan             | Tougan             |      13.069 |      -3.07 |       17590 | Burkina Faso             | BF   | BFA  | Sourou
 Kombissiri         | Kombissiri         |      12.064 |     -1.334 |       30137 | Burkina Faso             | BF   | BFA  | Bazéga
 Ziniare            | Ziniare            |      12.577 |     -1.293 |       12703 | Burkina Faso             | BF   | BFA  | Oubritenga
 Yako               | Yako               |      12.954 |     -2.263 |       22904 | Burkina Faso             | BF   | BFA  | Passoré
 Reo                | Reo                |     12.3335 |   -2.46694 |       37535 | Burkina Faso             | BF   | BFA  | Sanguié
 Leo                | Leo                |      11.094 |     -2.098 |       26884 | Burkina Faso             | BF   | BFA  | Sissili
 Sapouy             | Sapouy             |     11.5544 |   -1.77361 |        3837 | Burkina Faso             | BF   | BFA  | Ziro
 Boulsa             | Boulsa             |      12.657 |  -0.568998 |       17489 | Burkina Faso             | BF   | BFA  | Namentenga
 Zorgo              | Zorgo              |      12.243 |     -0.611 |       23892 | Burkina Faso             | BF   | BFA  | Ganzourgou
 Koupela            | Koupela            |      12.177 |  -0.356004 |       32052 | Burkina Faso             | BF   | BFA  | Kouritenga
 Po                 | Po                 |      11.169 |     -1.135 |       17924 | Burkina Faso             | BF   | BFA  | Nahouri
 Manga              | Manga              |      11.662 |     -1.065 |       15173 | Burkina Faso             | BF   | BFA  | Zoundwéogo
 Diebougou          | Diebougou          |      10.952 |     -3.248 |       12732 | Burkina Faso             | BF   | BFA  | Bougouriba
 Gaoua              | Gaoua              |      10.325 |     -3.174 |       28023 | Burkina Faso             | BF   | BFA  | Poni
 Bogande            | Bogande            |      12.969 |  -0.137996 |        9854 | Burkina Faso             | BF   | BFA  | Gnagna
 Dori               | Dori               |      14.034 | -0.0279985 |       37806 | Burkina Faso             | BF   | BFA  | Séno
 Sebba              | Sebba              |     13.4364 |   0.530443 |        3273 | Burkina Faso             | BF   | BFA  | Yagha
 Diapaga            | Diapaga            |      12.077 |      1.796 |       26013 | Burkina Faso             | BF   | BFA  | Tapoa
 Koudougou          | Koudougou          |     12.2505 |      -2.37 |       85339 | Burkina Faso             | BF   | BFA  | Boulkiemdé
 Ouahigouya         | Ouahigouya         |     13.5704 |   -2.41999 |       70300 | Burkina Faso             | BF   | BFA  | Yatenga
 Kaya               | Kaya               |     13.0904 |   -1.09005 |       39623 | Burkina Faso             | BF   | BFA  | Sanmatenga
 Tenkodogo          | Tenkodogo          |     11.7804 |  -0.369704 |       37883 | Burkina Faso             | BF   | BFA  | Boulgou
 Banfora            | Banfora            |     10.6304 |      -4.76 |     45903.5 | Burkina Faso             | BF   | BFA  | Komoé
 Bobo Dioulasso     | Bobo Dioulasso     |       11.18 |   -4.28998 |      346035 | Burkina Faso             | BF   | BFA  | Houet
 Ouagadougou        | Ouagadougou        |     12.3703 |   -1.52472 |      992228 | Burkina Faso             | BF   | BFA  | Kadiogo
 Cankuzo            | Cankuzo            |     -3.1667 |    30.5167 |        6585 | Burundi                  | BI   | BDI  | Cankuzo
 Karusi             | Karusi             |        -3.1 |     30.163 |       10705 | Burundi                  | BI   | BDI  | Karuzi
 Rutana             | Rutana             |      -3.931 |     29.993 |       20893 | Burundi                  | BI   | BDI  | Rutana
 Ruyigi             | Ruyigi             |      -3.481 |     30.244 |       38458 | Burundi                  | BI   | BDI  | Ruyigi
 Bubanza            | Bubanza            |     -3.0833 |    29.3667 |       12728 | Burundi                  | BI   | BDI  | Bubanza
 Kayanza            | Kayanza            |        -2.9 |    29.5667 |       19443 | Burundi                  | BI   | BDI  | Kayanza
 Makamba            | Makamba            |     -4.1333 |       29.8 |       19642 | Burundi                  | BI   | BDI  | Makamba
 Ngozi              | Ngozi              |      -2.912 |     29.825 |       21506 | Burundi                  | BI   | BDI  | Ngozi
 Kirundo            | Kirundo            |    -2.58472 |    30.0972 |        6083 | Burundi                  | BI   | BDI  | Kirundo
 Muramvya           | Muramvya           |      -3.261 |     29.612 |       18041 | Burundi                  | BI   | BDI  | Muramvya
 Bururi             | Bururi             |    -3.95073 |    29.6166 |     20066.5 | Burundi                  | BI   | BDI  | Bururi
 Muyinga            | Muyinga            |    -2.85235 |    30.3173 |       71076 | Burundi                  | BI   | BDI  | Muyinga
 Gitega             | Gitega             |    -3.42601 |    29.8436 |       23167 | Burundi                  | BI   | BDI  | Muramvya
 Bujumbura          | Bujumbura          |    -3.37609 |      29.36 |      331700 | Burundi                  | BI   | BDI  | Bujumbura Mairie
 Buea               | Buea               |       4.155 |      9.231 |       90088 | Cameroon                 | CM   | CMR  | Sud-Ouest
 Bafang             | Bafang             |     5.17039 |      10.18 |     86916.5 | Cameroon                 | CM   | CMR  | Ouest
 Foumban            | Foumban            |     5.73039 |       10.9 |       64399 | Cameroon                 | CM   | CMR  | Ouest
 Bafoussam          | Bafoussam          |     5.49043 |    10.4099 |      290768 | Cameroon                 | CM   | CMR  | Ouest
 Kumba              | Kumba              |     4.64037 |    9.43998 |      131122 | Cameroon                 | CM   | CMR  | Sud-Ouest
 Eyumojok           | Eyumojok           |     5.75036 |    8.98332 |        5798 | Cameroon                 | CM   | CMR  | Sud-Ouest
 Limbe              | Limbe              |     4.03039 |    9.19002 |      142290 | Cameroon                 | CM   | CMR  | Sud-Ouest
 Kribi              | Kribi              |     2.94043 |    9.91003 |       31473 | Cameroon                 | CM   | CMR  | Sud
 Nkongsamba         | Nkongsamba         |     4.96041 |       9.94 |      105069 | Cameroon                 | CM   | CMR  | Littoral
 Edea               | Edea               |     3.80048 |      10.12 |      109506 | Cameroon                 | CM   | CMR  | Littoral
 Wum                | Wum                |     6.40042 |      10.07 |       42601 | Cameroon                 | CM   | CMR  | Nord-Ouest
 Kumbo              | Kumbo              |     6.22038 |      10.68 |       89728 | Cameroon                 | CM   | CMR  | Nord-Ouest
 Bafia              | Bafia              |     4.75039 |      11.23 |       41201 | Cameroon                 | CM   | CMR  | Centre
 Mbalmayo           | Mbalmayo           |     3.52039 |       11.5 |     53501.5 | Cameroon                 | CM   | CMR  | Centre
 Eseka              | Eseka              |     3.65041 |    10.7666 |       14102 | Cameroon                 | CM   | CMR  | Centre
 Bertoua            | Bertoua            |     4.58043 |      13.68 |      153286 | Cameroon                 | CM   | CMR  | Est
 Abong Mbang        | Abong Mbang        |      3.9837 |    13.1833 |        7698 | Cameroon                 | CM   | CMR  | Est
 Batouri            | Batouri            |     4.43369 |    14.3666 |       42271 | Cameroon                 | CM   | CMR  | Est
 Belabo             | Belabo             |     4.93369 |       13.3 |     11455.5 | Cameroon                 | CM   | CMR  | Est
 Meiganga           | Meiganga           |     6.52049 |      14.29 |     54864.5 | Cameroon                 | CM   | CMR  | Adamaoua
 Ngaoundere         | Ngaoundere         |     7.32037 |      13.58 |      134322 | Cameroon                 | CM   | CMR  | Adamaoua
 Tibati             | Tibati             |     6.46698 |    12.6333 |       22096 | Cameroon                 | CM   | CMR  | Adamaoua
 Kontcha            | Kontcha            |     7.96702 |    12.2333 |        5846 | Cameroon                 | CM   | CMR  | Adamaoua
 Guider             | Guider             |     9.93039 |      13.94 |       83319 | Cameroon                 | CM   | CMR  | Nord
 Mbe                | Mbe                |     7.85044 |       13.6 |        3950 | Cameroon                 | CM   | CMR  | Nord
 Douala             | Douala             |     4.06041 |    9.70999 | 1.62204e+06 | Cameroon                 | CM   | CMR  | Littoral
 Ebolowa            | Ebolowa            |     2.90002 |      11.15 |     83687.5 | Cameroon                 | CM   | CMR  | Sud
 Bamenda            | Bamenda            |     5.95998 |      10.15 |      419567 | Cameroon                 | CM   | CMR  | Nord-Ouest
 Garoua             | Garoua             |     9.30001 |      13.39 |      365436 | Cameroon                 | CM   | CMR  | Nord
 Maroua             | Maroua             |     10.5956 |    14.3247 |      260656 | Cameroon                 | CM   | CMR  | Extrême-Nord
 Yaounde            | Yaounde            |      3.8667 |    11.5167 | 1.33579e+06 | Cameroon                 | CM   | CMR  | Centre
 Mindelo            | Mindelo            |     16.8838 |        -25 |       62962 | Cape Verde               | CV   | CPV  | 
 Praia              | Praia              |     14.9167 |   -23.5167 |      101112 | Cape Verde               | CV   | CPV  | 
 Mobaye             | Mobaye             |        4.32 |      21.18 |       19431 | Central African Republic | CF   | CAF  | Basse-Kotto
 Mbaiki             | Mbaiki             |     3.87042 |         18 |       43566 | Central African Republic | CF   | CAF  | Lobaye
 Carnot             | Carnot             |     4.93369 |    15.8666 |       32298 | Central African Republic | CF   | CAF  | Mambéré-Kadéï
 Bozoum             | Bozoum             |     6.31699 |    16.3833 |     25440.5 | Central African Republic | CF   | CAF  | Ouham-Pendé
 Kaga Bandoro       | Kaga Bandoro       |     6.98039 |      19.18 |     42673.5 | Central African Republic | CF   | CAF  | Nana-Grébizi
 Zemio              | Zemio              |     5.03366 |    25.1333 |       19239 | Central African Republic | CF   | CAF  | Haut-Mbomou
 Yakossi            | Yakossi            |     5.61701 |    23.3167 |       409.5 | Central African Republic | CF   | CAF  | Mbomou
 Nola               | Nola               |      3.5337 |    16.0666 |       25301 | Central African Republic | CF   | CAF  | Sangha-Mbaéré
 Sibut              | Sibut              |     5.73377 |    19.0833 |     26304.5 | Central African Republic | CF   | CAF  | Kémo
 Bossangoa          | Bossangoa          |     6.48372 |      17.45 |       45246 | Central African Republic | CF   | CAF  | Ouham
 Birao              | Birao              |     10.2837 |    22.7833 |        5641 | Central African Republic | CF   | CAF  | Vakaga
 Ouadda             | Ouadda             |     8.06709 |       22.4 |      3424.5 | Central African Republic | CF   | CAF  | Haute-Kotto
 Bangassou          | Bangassou          |     4.73375 |    22.8166 |       28601 | Central African Republic | CF   | CAF  | Mbomou
 Bossembele         | Bossembele         |       5.267 |      17.65 |        7287 | Central African Republic | CF   | CAF  | Bangui
 Berberati          | Berberati          |     4.24996 |      15.78 |       60605 | Central African Republic | CF   | CAF  | Mambéré-Kadéï
 Bria               | Bria               |     6.53331 |    21.9833 |     24985.5 | Central African Republic | CF   | CAF  | Haute-Kotto
 Bouar              | Bouar              |     5.95001 |       15.6 |     31476.5 | Central African Republic | CF   | CAF  | Nana-Mambéré
 Bambari            | Bambari            |     5.76196 |    20.6672 |     47322.5 | Central African Republic | CF   | CAF  | Ouaka
 Ndele              | Ndele              |     8.40914 |     20.653 |      7355.5 | Central African Republic | CF   | CAF  | Bamingui-Bangoran
 Obo                | Obo                |     5.39999 |       26.5 |       12837 | Central African Republic | CF   | CAF  | Haut-Mbomou
 Bangui             | Bangui             |     4.36664 |    18.5583 |      727348 | Central African Republic | CF   | CAF  | Bangui
 Lai                | Lai                |       9.395 |     16.305 |       19382 | Chad                     | TD   | TCD  | Tandjilé
 Zouar              | Zouar              |     20.4587 |    16.5278 |         204 | Chad                     | TD   | TCD  | Bet
 Bol                | Bol                |      13.459 |    14.7147 |        3303 | Chad                     | TD   | TCD  | Lac
 Ati                | Ati                |     13.2171 |    18.3333 |     24723.5 | Chad                     | TD   | TCD  | Batha
 Oum Hadjer         | Oum Hadjer         |     13.3004 |    19.6833 |     11582.5 | Chad                     | TD   | TCD  | Batha
 Mongo              | Mongo              |     12.1837 |       18.7 |       27763 | Chad                     | TD   | TCD  | Guéra
 Doba               | Doba               |     8.65044 |      16.85 |     26966.5 | Chad                     | TD   | TCD  | Logone Oriental
 Pala               | Pala               |     9.35042 |    14.9666 |       17835 | Chad                     | TD   | TCD  | Mayo-Kebbi Est
 Bongor             | Bongor             |     10.2859 |    15.3872 |      112230 | Chad                     | TD   | TCD  | Mayo-Kebbi Est
 Kelo               | Kelo               |     9.31707 |       15.8 |     69378.5 | Chad                     | TD   | TCD  | Tandjilé
 Fada               | Fada               |     17.1847 |    21.5902 |         448 | Chad                     | TD   | TCD  | Bet
 Faya Largeau       | Faya Largeau       |     17.9167 |    19.1167 |       13400 | Chad                     | TD   | TCD  | Bet
 Mao                | Mao                |     14.1194 |    15.3133 |       15040 | Chad                     | TD   | TCD  | Kanem
 Biltine            | Biltine            |     14.5333 |    20.9167 |      6682.5 | Chad                     | TD   | TCD  | Wadi Fira
 Sarh               | Sarh               |     9.14997 |      18.39 |      135862 | Chad                     | TD   | TCD  | Mandoul
 Am Timan           | Am Timan           |     11.0333 |    20.2833 |       29664 | Chad                     | TD   | TCD  | Salamat
 Moundou            | Moundou            |     8.54998 |      16.09 |      145936 | Chad                     | TD   | TCD  | Logone Oriental
 Ndjamena           | Ndjamena           |     12.1131 |    15.0491 |      835194 | Chad                     | TD   | TCD  | Hadjer-Lamis
 Abeche             | Abeche             |       13.84 |      20.83 |      116252 | Chad                     | TD   | TCD  | Ouaddaï
 Moroni             | Moroni             |    -11.7042 |    43.2402 |       85785 | Comoros                  | KM   | COM  | 
 Madingou           | Madingou           |      -4.164 |     13.554 |       22760 | Congo (Brazzaville)      | CG   | COG  | Bouenza
 Kinkala            | Kinkala            |      -4.356 |     14.762 |       13882 | Congo (Brazzaville)      | CG   | COG  | Pool
 Ewo                | Ewo                |   -0.879599 |      14.82 |      7786.5 | Congo (Brazzaville)      | CG   | COG  | Cuvette-Ouest
 Impfondo           | Impfondo           |     1.64038 |      18.04 |       20859 | Congo (Brazzaville)      | CG   | COG  | Likouala
 Sembe              | Sembe              |     1.64038 |      14.58 |        6396 | Congo (Brazzaville)      | CG   | COG  | Sangha
 Moloundou          | Moloundou          |     2.03374 |    15.2167 |       12244 | Congo (Brazzaville)      | CG   | COG  | Sangha
 Owando             | Owando             |   -0.479623 |      15.92 |       29011 | Congo (Brazzaville)      | CG   | COG  | Cuvette
 Makoua             | Makoua             | -0.00957436 |      15.64 |       10335 | Congo (Brazzaville)      | CG   | COG  | Cuvette
 Sibiti             | Sibiti             |    -3.68961 |      13.35 |       20950 | Congo (Brazzaville)      | CG   | COG  | Lékoumou
 Mossendjo          | Mossendjo          |    -2.93963 |      12.72 |     24583.5 | Congo (Brazzaville)      | CG   | COG  | Niari
 Loubomo            | Loubomo            |     -4.1796 |      12.67 |     97929.5 | Congo (Brazzaville)      | CG   | COG  | Niari
 Gamboma            | Gamboma            |    -1.87949 |      15.85 |       20877 | Congo (Brazzaville)      | CG   | COG  | Plateaux
 Djambala           | Djambala           |     -2.5396 |      14.75 |      9650.5 | Congo (Brazzaville)      | CG   | COG  | Plateaux
 Ouesso             | Ouesso             |     1.60999 |      16.05 |     26117.5 | Congo (Brazzaville)      | CG   | COG  | Sangha
 Kayes              | Kayes              |    -4.18002 |      13.28 |       60629 | Congo (Brazzaville)      | CG   | COG  | Bouenza
 Pointe-Noire       | Pointe-Noire       |    -4.77001 |      11.88 |      602440 | Congo (Brazzaville)      | CG   | COG  | Kouilou
 Brazzaville        | Brazzaville        |    -4.25919 |    15.2847 | 1.25944e+06 | Congo (Brazzaville)      | CG   | COG  | Pool
 Buluko             | Buluko             |   -0.756999 |     28.528 |        1192 | Congo (Kinshasa)         | CD   | COD  | Nord-Kivu
 Zongo              | Zongo              |     4.33034 |     18.615 |       17667 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Libenge            | Libenge            |     3.66043 |      18.62 |       17402 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Bongandanga        | Bongandanga        |     1.51036 |      21.05 |        2896 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Ikela              | Ikela              |    -1.18294 |    23.2666 |         291 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Binga              | Binga              |     2.38341 |      20.42 |       64639 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Basankusu          | Basankusu          |     1.23371 |       19.8 |       52216 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Boende             | Boende             |   -0.219587 |      20.86 |     24679.5 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Gbadolite          | Gbadolite          |     4.29037 |    21.0199 |       35197 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Businga            | Businga            |     3.34038 |      20.87 |       31583 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Bosobolo           | Bosobolo           |     4.19038 |      19.88 |      8968.5 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Yangambi           | Yangambi           |    0.770378 |      24.43 |     18035.5 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Aketi              | Aketi              |     2.74046 |      23.78 |       46881 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Mongbwalu          | Mongbwalu          |     1.95044 |    30.0333 |        2819 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Bafwasende         | Bafwasende         |     1.08385 |    27.2666 |         149 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Bunia              | Bunia              |     1.56041 |      30.24 |       61537 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Wamba              | Wamba              |     2.14042 |      27.99 |       82122 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Basoko             | Basoko             |     1.24043 |      23.59 |       22953 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Kenge              | Kenge              |    -4.82959 |    16.8999 |         241 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Bolobo             | Bolobo             |    -2.15952 |      16.24 |     22605.5 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Kahemba            | Kahemba            |    -7.28293 |         19 |     45644.5 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Bulungu            | Bulungu            |    -4.54961 |       18.6 |     42310.5 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Lusanga            | Lusanga            |    -5.58293 |    16.5167 |         177 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Mangai             | Mangai             |    -4.03961 |      19.53 |       19946 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Kasongo-Lunda      | Kasongo-Lunda      |    -6.47962 |      16.83 |       18748 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Mushie             | Mushie             |    -3.01962 |      16.92 |     24013.5 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Dibaya             | Dibaya             |    -6.50954 |      22.87 |         603 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Mweka              | Mweka              |    -4.83962 |      21.57 |       45222 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Luebo              | Luebo              |    -5.34951 |      21.41 |     17682.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Demba              | Demba              |     -5.5096 |      22.26 |     17008.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Ilebo              | Ilebo              |     -4.3196 |      20.61 |     71125.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Moanda             | Moanda             |    -5.92291 |     12.355 |      153915 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Kimpese            | Kimpese            |     -5.5496 |    14.4333 |       10578 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Kasangulu          | Kasangulu          |    -4.57958 |      15.18 |       22645 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Mbanza-Ngungu      | Mbanza-Ngungu      |    -5.24962 |      14.86 |      141950 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Tshela             | Tshela             |    -4.96958 |      12.93 |       19896 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Mwenga             | Mwenga             |    -3.03823 |    28.4325 |        2216 | Congo (Kinshasa)         | CD   | COD  | Sud-Kivu
 Kampene            | Kampene            |    -3.59954 |      26.67 |     19719.5 | Congo (Kinshasa)         | CD   | COD  | Maniema
 Kalima             | Kalima             |    -2.50958 |      26.43 |         194 | Congo (Kinshasa)         | CD   | COD  | Maniema
 Lubutu             | Lubutu             |   -0.732889 |    26.5833 |        1313 | Congo (Kinshasa)         | CD   | COD  | Maniema
 Kabinda            | Kabinda            |    -6.12961 |      24.48 |       37366 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Lubao              | Lubao              |    -5.38956 |      25.75 |     26142.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Lusambo            | Lusambo            |    -4.96958 |      23.43 |       26803 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Gandajika          | Gandajika          |     -6.7396 |      23.96 |      105770 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Lodja              | Lodja              |    -3.48962 |      23.42 |       68244 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Dilolo             | Dilolo             |    -10.6996 |    22.3333 |        7854 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Nyunzu             | Nyunzu             |    -5.94957 |    28.0167 |       15397 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kasaji             | Kasaji             |    -10.3662 |      23.45 |       11969 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Luanza             | Luanza             |    -8.69959 |       28.7 |         861 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Moba               | Moba               |    -7.05958 |      29.72 |       10006 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Bukama             | Bukama             |    -9.20958 |      25.84 |     20900.5 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kaniama            | Kaniama            |    -7.56963 |      24.17 |     32946.5 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kipushi            | Kipushi            |    -11.7596 |      27.25 |     87839.5 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kambove            | Kambove            |    -10.8696 |       26.6 |     18934.5 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kongolo            | Kongolo            |    -5.37948 |      26.98 |     68572.5 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kabalo             | Kabalo             |    -6.04962 |      26.91 |       21851 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Beni               | Beni               |    0.490447 |      29.45 |      211276 | Congo (Kinshasa)         | CD   | COD  | Nord-Kivu
 Lisala             | Lisala             |     2.14001 |      21.51 |       64270 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Gemena             | Gemena             |     3.26002 |      19.77 |      157848 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Buta               | Buta               |     2.81999 |      24.74 |       44195 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Watsa              | Watsa              |     3.04001 |      29.53 |     17721.5 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Isiro              | Isiro              |     2.75997 |      27.62 |      142136 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Bondo              | Bondo              |     3.80996 |      23.67 |     20688.5 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Inongo             | Inongo             |       -1.94 |      18.28 |       30181 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Tshikapa           | Tshikapa           |    -6.40996 |      20.77 |      201256 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Boma               | Boma               |    -5.82999 |      13.05 |      178638 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Bukavu             | Bukavu             |    -2.50999 |      28.84 |      331084 | Congo (Kinshasa)         | CD   | COD  | Sud-Kivu
 Uvira              | Uvira              |    -3.36999 |      29.14 |      164353 | Congo (Kinshasa)         | CD   | COD  | Sud-Kivu
 Kindu              | Kindu              |    -2.96392 |      25.91 |      199306 | Congo (Kinshasa)         | CD   | COD  | Maniema
 Mwene-Ditu         | Mwene-Ditu         |          -7 |      23.44 |      153328 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Likasi             | Likasi             |      -10.97 |      26.78 |      428411 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Manono             | Manono             |    -7.30003 |      27.45 |       46111 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kamina             | Kamina             |    -8.73002 |      25.01 |      101180 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Mbandaka           | Mbandaka           |    0.040035 |      18.26 |      229590 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Kisangani          | Kisangani          |    0.520006 |      25.22 |      558814 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Bandundu           | Bandundu           |    -3.30999 |      17.38 |      107998 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Kananga            | Kananga            |    -5.89004 |       22.4 |      614273 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Kasongo            | Kasongo            |    -4.45003 |      26.66 |       59059 | Congo (Kinshasa)         | CD   | COD  | Maniema
 Mbuji-Mayi         | Mbuji-Mayi         |    -6.15003 |       23.6 | 1.08488e+06 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Kalemie            | Kalemie            |     -5.9333 |       29.2 |      176616 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Butembo            | Butembo            |    0.130004 |      29.28 |      220512 | Congo (Kinshasa)         | CD   | COD  | Nord-Kivu
 Goma               | Goma               |     -1.6788 |    29.2218 |      144124 | Congo (Kinshasa)         | CD   | COD  | Nord-Kivu
 Bumba              | Bumba              |     2.18998 |      22.46 |      128030 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Kikwit             | Kikwit             |    -5.03004 |      18.85 |      465973 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Matadi             | Matadi             |    -5.81661 |      13.45 |      212986 | Congo (Kinshasa)         | CD   | COD  | Bas-Congo
 Kolwezi            | Kolwezi            |    -10.7167 |    25.4724 |      418000 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Lubumbashi         | Lubumbashi         |      -11.68 |      27.48 | 1.11432e+06 | Congo (Kinshasa)         | CD   | COD  | Katanga
 Kinshasa           | Kinshasa           |    -4.32972 |     15.315 | 6.70435e+06 | Congo (Kinshasa)         | CD   | COD  | Kinshasa City
 Dikhil             | Dikhil             |      11.104 |     42.372 |       12043 | Djibouti                 | DJ   | DJI  | Dikhil
 Tadjoura           | Tadjoura           |     11.7833 |       42.9 |       22193 | Djibouti                 | DJ   | DJI  | Tadjourah
 Ali Sabih          | Ali Sabih          |     11.1562 |    42.7125 |     32165.5 | Djibouti                 | DJ   | DJI  | Ali Sabieh
 Obock              | Obock              |     11.9734 |    43.2856 |       13142 | Djibouti                 | DJ   | DJI  | Obock
 Djibouti           | Djibouti           |      11.595 |     43.148 |      763506 | Djibouti                 | DJ   | DJI  | Djibouti
 Shibin el Kom      | Shibin el Kom      |      30.592 |       30.9 |      182900 | Egypt                    | EG   | EGY  | Al Minufiyah
 Benha              | Benha              |     30.4667 |    31.1833 |      167029 | Egypt                    | EG   | EGY  | Al Qalyubiyah
 Zagazig            | Zagazig            |     30.5833 |    31.5167 |      285097 | Egypt                    | EG   | EGY  | Ash Sharqiyah
 Kafr el Sheikh     | Kafr el Sheikh     |      31.109 |     30.936 |      143970 | Egypt                    | EG   | EGY  | Kafr ash Shaykh
 Tanta              | Tanta              |     30.7904 |         31 |      404901 | Egypt                    | EG   | EGY  | Al Gharbiyah
 Ismailia           | Ismailia           |     30.5903 |      32.26 |      470474 | Egypt                    | EG   | EGY  | Al Isma`iliyah
 El Mansura         | El Mansura         |     31.0504 |      31.38 |      540247 | Egypt                    | EG   | EGY  | Ad Daqahliyah
 Dumyat             | Dumyat             |     31.4204 |      31.82 |      188149 | Egypt                    | EG   | EGY  | Dumyat
 Matruh             | Matruh             |     31.3504 |      27.23 |       82756 | Egypt                    | EG   | EGY  | Matruh
 El Alamein         | El Alamein         |     30.8171 |      28.95 |        4938 | Egypt                    | EG   | EGY  | Matruh
 El Daba            | El Daba            |     31.0338 |    28.4333 |       14212 | Egypt                    | EG   | EGY  | Matruh
 Salum              | Salum              |      31.567 |      25.15 |        7330 | Egypt                    | EG   | EGY  | Matruh
 Damanhûr           | Damanhur           |     31.0504 |      30.47 |      371350 | Egypt                    | EG   | EGY  | Al Buhayrah
 Samalut            | Samalut            |     28.3004 |      30.71 |      121281 | Egypt                    | EG   | EGY  | Al Minya
 Mallawi            | Mallawi            |     27.7304 |      30.84 |      179934 | Egypt                    | EG   | EGY  | Al Minya
 Beni Mazar         | Beni Mazar         |     28.4904 |      30.81 |       68853 | Egypt                    | EG   | EGY  | Al Minya
 Beni Suef          | Beni Suef          |     29.0804 |      31.09 |      339537 | Egypt                    | EG   | EGY  | Bani Suwayf
 Rashid             | Rashid             |     31.4604 |      30.39 |      128970 | Egypt                    | EG   | EGY  | Kafr ash Shaykh
 Qasr Farafra       | Qasr Farafra       |     27.0671 |    27.9666 |        5000 | Egypt                    | EG   | EGY  | Al Wadi at Jadid
 El Qasr            | El Qasr            |     25.7004 |    28.8833 |        1716 | Egypt                    | EG   | EGY  | Al Wadi at Jadid
 Isna               | Isna               |     25.2904 |    32.5499 |     84667.5 | Egypt                    | EG   | EGY  | Qina
 Qena               | Qena               |     26.1505 |      32.72 |      268694 | Egypt                    | EG   | EGY  | Qina
 Girga              | Girga              |     26.3304 |      31.88 |      115476 | Egypt                    | EG   | EGY  | Suhaj
 Sohag              | Sohag              |     26.5504 |       31.7 |      404710 | Egypt                    | EG   | EGY  | Suhaj
 Berenice           | Berenice           |      23.946 |    35.4842 |          10 | Egypt                    | EG   | EGY  | Al Bahr al Ahmar
 Bur Safaga         | Bur Safaga         |     26.7337 |    33.9333 |     21035.5 | Egypt                    | EG   | EGY  | Al Bahr al Ahmar
 El Tur             | El Tur             |     28.2394 |    33.6148 |       21300 | Egypt                    | EG   | EGY  | Janub Sina'
 El Arish           | El Arish           |     31.1249 |    33.8006 |      153753 | Egypt                    | EG   | EGY  | Shamal Sina'
 El Giza            | El Giza            |       30.01 |      31.19 | 2.68186e+06 | Egypt                    | EG   | EGY  | Al Jizah
 Siwa               | Siwa               |        29.2 |    25.5167 |       23080 | Egypt                    | EG   | EGY  | Matruh
 El Minya           | El Minya           |       28.09 |      30.75 |      363575 | Egypt                    | EG   | EGY  | Al Minya
 Kom Ombo           | Kom Ombo           |       24.47 |      32.95 |      181874 | Egypt                    | EG   | EGY  | Aswan
 El Kharga          | El Kharga          |       25.44 |      30.55 |       49991 | Egypt                    | EG   | EGY  | Al Wadi at Jadid
 Hurghada           | Hurghada           |       27.23 |      33.83 |      157204 | Egypt                    | EG   | EGY  | Al Bahr al Ahmar
 Suez               | Suez               |      30.005 |    32.5499 |      498230 | Egypt                    | EG   | EGY  | As Suways
 Bur Said           | Bur Said           |       31.26 |      32.29 |      561932 | Egypt                    | EG   | EGY  | Bur Sa`id
 El Faiyum          | El Faiyum          |       29.31 |      30.84 |      311582 | Egypt                    | EG   | EGY  | Al Fayyum
 Aswan              | Aswan              |     24.0875 |    32.8989 |      277352 | Egypt                    | EG   | EGY  | Aswan
 Asyut              | Asyut              |       27.19 |    31.1799 |      420585 | Egypt                    | EG   | EGY  | Asyut
 Luxor              | Luxor              |        25.7 |      32.65 |      548572 | Egypt                    | EG   | EGY  | Qina
 Alexandria         | Alexandria         |        31.2 |      29.95 | 3.98826e+06 | Egypt                    | EG   | EGY  | Al Iskandariyah
 Cairo              | Cairo              |       30.05 |      31.25 | 9.81381e+06 | Egypt                    | EG   | EGY  | Al Qahirah
 Evinayong          | Evinayong          |        1.45 |    10.5667 |        8462 | Equatorial Guinea        | GQ   | GNQ  | Centro Sur
 Luba               | Luba               |        3.45 |       8.55 |        8655 | Equatorial Guinea        | GQ   | GNQ  | Bioko Sur
 Calatrava          | Calatrava          |      1.1164 |    9.41859 |         628 | Equatorial Guinea        | GQ   | GNQ  | Litoral
 Mongomo            | Mongomo            |     1.63368 |    11.3166 |      6476.5 | Equatorial Guinea        | GQ   | GNQ  | Wele-Nzás
 Bata               | Bata               |        1.87 |    9.76999 |      135944 | Equatorial Guinea        | GQ   | GNQ  | Litoral
 Malabo             | Malabo             |     3.75002 |    8.78328 |      155963 | Equatorial Guinea        | GQ   | GNQ  | Bioko Norte
 Tessenei           | Tessenei           |     15.1104 |    36.6575 |        9504 | Eritrea                  | ER   | ERI  | Gash Barka
 Agordat            | Agordat            |      15.549 |    37.8867 |     18728.5 | Eritrea                  | ER   | ERI  | Gash Barka
 Massawa            | Massawa            |     15.6101 |      39.45 |      142564 | Eritrea                  | ER   | ERI  | Debub
 Keren              | Keren              |     15.6804 |      38.45 |      148242 | Eritrea                  | ER   | ERI  | Semenawi Keyih Bahri
 Mendefera          | Adi Ugri           |      14.886 |    38.8163 |      137586 | Eritrea                  | ER   | ERI  | Maekel
 Assab              | Assab              |       13.01 |      42.73 |      105496 | Eritrea                  | ER   | ERI  | Debubawi Keyih Bahri
 Asmara             | Asmara             |     15.3333 |    38.9333 |      592366 | Eritrea                  | ER   | ERI  | Anseba
 Awasa              | Awasa              |        7.06 |     38.477 |      133097 | Ethiopia                 | ET   | ETH  | 
 Gore               | Gore               |       8.149 |     35.537 |        9352 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Debre Birhan       | Debre Birhan       |     9.68038 |      39.53 |       61509 | Ethiopia                 | ET   | ETH  | Amhara
 Bati               | Bati               |     11.1837 |    40.0166 |     12826.5 | Ethiopia                 | ET   | ETH  | Amhara
 Adigrat            | Adigrat            |     14.2804 |      39.47 |      104021 | Ethiopia                 | ET   | ETH  | Tigray
 Aksum              | Aksum              |     14.1304 |      38.72 |       44368 | Ethiopia                 | ET   | ETH  | Tigray
 Yirga Alem         | Yirga Alem         |     6.75043 |      38.41 |       36292 | Ethiopia                 | ET   | ETH  | 
 Hosaina            | Hosaina            |     7.55038 |      37.85 |       89300 | Ethiopia                 | ET   | ETH  | 
 Dila               | Dila               |     6.41042 |      38.31 |       47021 | Ethiopia                 | ET   | ETH  | 
 Giyon              | Giyon              |     8.53042 |      37.97 |       76464 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Hagere Hiywet      | Hagere Hiywet      |     8.98039 |      37.85 |     39412.5 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Nekemte            | Nekemte            |     9.09046 |      36.53 |       73018 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Asela              | Asela              |     7.95041 |    39.1399 |       82240 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Shashemene         | Shashemene         |      7.2004 |      38.59 |      100110 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Dembi Dolo         | Dembi Dolo         |     8.53373 |       34.8 |       27264 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Gimbi              | Gimbi              |     9.16702 |    35.8333 |     22423.5 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Asosa              | Asosa              |      10.067 |    34.5333 |       24192 | Ethiopia                 | ET   | ETH  | Benshangul-Gumaz
 Jijiga             | Jijiga             |     9.35042 |      42.79 |     52507.5 | Ethiopia                 | ET   | ETH  | Somali
 Debre Markos       | Debre Markos       |       10.34 |      37.72 |       65339 | Ethiopia                 | ET   | ETH  | Amhara
 Dese               | Dese               |       11.13 |      39.63 |      159929 | Ethiopia                 | ET   | ETH  | Amhara
 Sodo               | Sodo               |         6.9 |      37.75 |       65737 | Ethiopia                 | ET   | ETH  | 
 Arba Minch         | Arba Minch         |        6.04 |      37.55 |     54343.5 | Ethiopia                 | ET   | ETH  | 
 Harar              | Harar              |     9.31996 |      42.15 |      161150 | Ethiopia                 | ET   | ETH  | Harari
 Goba               | Goba               |     7.01002 |      39.97 |       33197 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Jima               | Jima               |     7.67998 |      36.83 |      128306 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Nazret             | Nazret             |     8.54998 |      39.27 |      345444 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Nagele             | Nagele             |     5.31661 |    39.5833 |       11772 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Gode               | Gode               |     5.95001 |      43.45 |       71671 | Ethiopia                 | ET   | ETH  | Somali
 Dolo Bay           | Dolo Bay           |     4.18335 |    42.0833 |       11810 | Ethiopia                 | ET   | ETH  | Somali
 Bahir Dar          | Bahir Dar          |     11.6001 |    37.3833 |      187824 | Ethiopia                 | ET   | ETH  | Amhara
 Mekele             | Mekele             |        13.5 |      39.47 |       95856 | Ethiopia                 | ET   | ETH  | Tigray
 Dire Dawa          | Dire Dawa          |     9.58999 |      41.86 |      250326 | Ethiopia                 | ET   | ETH  | Dire Dawa
 Gonder             | Gonder             |       12.61 |      37.46 |      155072 | Ethiopia                 | ET   | ETH  | Amhara
 Addis Ababa        | Addis Ababa        |     9.03331 |       38.7 | 2.92886e+06 | Ethiopia                 | ET   | ETH  | Addis Ababa
 St.-Benoit         | St.-Benoit         |    -21.0335 |    55.7128 |       23979 | France                   | RE   | FRA  | La Réunion
 Dzaoudzi           | Dzaoudzi           |    -12.7871 |     45.275 |       23099 | France                   | YT   | FRA  | Moyotte
 St.-Denis          | St.-Denis          |    -20.8789 |    55.4481 |      163621 | France                   | RE   | FRA  | La Réunion
 Ebebiyin           | Ebebiyin           |       2.153 |      11.33 |       24831 | Gabon                    | GA   | GAB  | Wouleu-Ntem
 Tchibanga          | Tchibanga          |      -2.857 |     11.027 |       19365 | Gabon                    | GA   | GAB  | Nyanga
 Mekambo            | Mekambo            |     1.01708 |    13.9333 |        3170 | Gabon                    | GA   | GAB  | Ogooué-Ivindo
 Makokou            | Makokou            |    0.567083 |    12.8666 |     15320.5 | Gabon                    | GA   | GAB  | Ogooué-Ivindo
 Mitzik             | Mitzik             |    0.783711 |    11.5666 |      3998.5 | Gabon                    | GA   | GAB  | Wouleu-Ntem
 Bitam              | Bitam              |     2.08366 |    11.4834 |       13967 | Gabon                    | GA   | GAB  | Wouleu-Ntem
 Lambarene          | Lambarene          |    -0.69961 |    10.2166 |       23012 | Gabon                    | GA   | GAB  | Moyen-Ogooué
 Bifoum             | Bifoum             |   -0.332914 |    10.3832 |         134 | Gabon                    | GA   | GAB  | Moyen-Ogooué
 Ndende             | Ndende             |    -2.38292 |    11.3833 |        4101 | Gabon                    | GA   | GAB  | Ngounié
 Mouila             | Mouila             |    -1.86615 |    11.0167 |     25234.5 | Gabon                    | GA   | GAB  | Ngounié
 Omboue             | Omboue             |    -1.56622 |    9.24997 |        1667 | Gabon                    | GA   | GAB  | Ogooué-Maritime
 Moanda             | Moanda             |     -1.5655 |       13.2 |       28633 | Gabon                    | GA   | GAB  | Haut-Ogooué
 Okandja            | Okandja            |   -0.682918 |    13.7833 |        7155 | Gabon                    | GA   | GAB  | Haut-Ogooué
 Koulamoutou        | Koulamoutou        |    -1.13292 |    12.4833 |     14343.5 | Gabon                    | GA   | GAB  | Ogooué-Lolo
 Oyem               | Oyem               |     1.61663 |    11.5833 |     37146.5 | Gabon                    | GA   | GAB  | Wouleu-Ntem
 Mayumba            | Mayumba            |     -3.4166 |      10.65 |        3996 | Gabon                    | GA   | GAB  | Nyanga
 Gamba              | Gamba              |    -2.65003 |         10 |      7230.5 | Gabon                    | GA   | GAB  | Ogooué-Maritime
 Franceville        | Franceville        |     -1.6333 |    13.5833 |       41056 | Gabon                    | GA   | GAB  | Haut-Ogooué
 Libreville         | Libreville         |    0.385389 |    9.45796 |      530756 | Gabon                    | GA   | GAB  | Estuaire
 Port-Gentil        | Port-Gentil        |   -0.720022 |    8.78002 |      113000 | Gabon                    | GA   | GAB  | Ogooué-Maritime
 Sunyani            | Sunyani            |       7.336 |     -2.336 |       70299 | Ghana                    | GH   | GHA  | Brong Ahafo
 Tamale             | Tamale             |     9.40042 |  -0.839985 |      342871 | Ghana                    | GH   | GHA  | Northern
 Yendi              | Yendi              |     9.43373 | -0.0166504 |     30841.5 | Ghana                    | GH   | GHA  | Northern
 Bolgatanga         | Bolgatanga         |     10.7904 |  -0.849985 |     68303.5 | Ghana                    | GH   | GHA  | Upper East
 Bawku              | Bawku              |     11.0604 |  -0.239996 |       65212 | Ghana                    | GH   | GHA  | Upper East
 Wa                 | Wa                 |     10.0604 |   -2.50001 |     76891.5 | Ghana                    | GH   | GHA  | Upper West
 Obuasi             | Obuasi             |     6.19041 |   -1.65999 |      158986 | Ghana                    | GH   | GHA  | Ashanti
 Berekum            | Berekum            |     7.45038 |   -2.59001 |     36484.5 | Ghana                    | GH   | GHA  | Brong Ahafo
 Winneba            | Winneba            |     5.35043 |   -0.63005 |       41911 | Ghana                    | GH   | GHA  | Central
 Cape Coast         | Cape Coast         |     5.11037 |   -1.24999 |      139266 | Ghana                    | GH   | GHA  | Central
 Nkawkaw            | Nkawkaw            |     6.55046 |  -0.780015 |     54914.5 | Ghana                    | GH   | GHA  | Eastern
 Koforidua          | Koforidua          |     6.09042 |  -0.260021 |      126460 | Ghana                    | GH   | GHA  | Eastern
 Tema               | Tema               |     5.64037 |  0.0100146 |      184970 | Ghana                    | GH   | GHA  | Greater Accra
 Ho                 | Ho                 |     6.60041 |   0.469987 |       81521 | Ghana                    | GH   | GHA  | Volta
 Kumasi             | Kumasi             |     6.68999 |   -1.63001 | 1.46858e+06 | Ghana                    | GH   | GHA  | Ashanti
 Sekondi            | Sekondi            |     4.94328 |   -1.70402 |      212560 | Ghana                    | GH   | GHA  | Western
 Accra              | Accra              |     5.55003 |  -0.216716 | 2.04213e+06 | Ghana                    | GH   | GHA  | Greater Accra
 Mali               | Mali               |      12.084 |    -12.301 |        5479 | Guinea                   | GN   | GIN  | Labe
 Tongue             | Tongue             |       11.44 |     -11.67 |       25531 | Guinea                   | GN   | GIN  | Labe
 Kouroussa          | Kouroussa          |      10.653 |     -9.892 |       14223 | Guinea                   | GN   | GIN  | Kankan
 Pita               | Pita               |       11.08 |    -12.401 |       20052 | Guinea                   | GN   | GIN  | Mamou
 Dalaba             | Dalaba             |      10.656 |    -12.272 |        6349 | Guinea                   | GN   | GIN  | Mamou
 Boffa              | Boffa              |      10.185 |    -14.043 |        2332 | Guinea                   | GN   | GIN  | Boke
 Koundara           | Koundara           |       12.48 |    -13.296 |       13990 | Guinea                   | GN   | GIN  | Boke
 Gaoual             | Gaoual             |      11.754 |    -13.213 |        7461 | Guinea                   | GN   | GIN  | Boke
 Telimele           | Telimele           |      10.905 |    -13.043 |       30311 | Guinea                   | GN   | GIN  | Kindia
 Forecariah         | Forecariah         |        9.43 |    -13.098 |       12358 | Guinea                   | GN   | GIN  | Kindia
 Beyla              | Beyla              |       8.687 |     -8.657 |       13204 | Guinea                   | GN   | GIN  | Nzerekore
 Gueckedou          | Gueckedou          |       8.554 |    -10.151 |      221715 | Guinea                   | GN   | GIN  | Nzerekore
 Dinguiraye         | Dinguiraye         |      11.299 |    -10.726 |        6062 | Guinea                   | GN   | GIN  | Faranah
 Dabola             | Dabola             |      10.748 |    -11.109 |       13057 | Guinea                   | GN   | GIN  | Faranah
 Kerouane           | Kerouane           |     9.27038 |   -9.01998 |       11317 | Guinea                   | GN   | GIN  | Kankan
 Siguiri            | Siguiri            |     11.4171 |   -9.16663 |       46880 | Guinea                   | GN   | GIN  | Kankan
 Mamou              | Mamou              |     10.3804 |      -12.1 |       56386 | Guinea                   | GN   | GIN  | Mamou
 Kamsar             | Kamsar             |     10.6854 |    -14.605 |       34973 | Guinea                   | GN   | GIN  | Boke
 Fria               | Fria               |     10.3804 |     -13.55 |       23729 | Guinea                   | GN   | GIN  | Boke
 Macenta            | Macenta            |     8.55037 |      -9.48 |     42167.5 | Guinea                   | GN   | GIN  | Nzerekore
 Yomou              | Yomou              |     7.57043 |   -9.26999 |      2607.5 | Guinea                   | GN   | GIN  | Nzerekore
 Faranah            | Faranah            |     10.0404 |     -10.75 |     14409.5 | Guinea                   | GN   | GIN  | Faranah
 Kissidougou        | Kissidougou        |     9.19046 |     -10.12 |       56957 | Guinea                   | GN   | GIN  | Faranah
 Labe               | Labe               |       11.32 |      -12.3 |       99612 | Guinea                   | GN   | GIN  | Labe
 Boke               | Boke               |       10.94 |      -14.3 |      116270 | Guinea                   | GN   | GIN  | Boke
 Kindia             | Kindia             |       10.06 |     -12.87 |       93511 | Guinea                   | GN   | GIN  | Kindia
 Kankan             | Kankan             |       10.39 |   -9.31001 |      110458 | Guinea                   | GN   | GIN  | Kankan
 Nzerekore          | Nzerekore          |        7.76 |   -8.82999 |      150424 | Guinea                   | GN   | GIN  | Nzerekore
 Conakry            | Conakry            |     9.53152 |   -13.6802 |   1.494e+06 | Guinea                   | GN   | GIN  | Conakry
 Cacheu             | Cacheu             |      12.269 |    -16.165 |       10490 | Guinea Bissau            | GW   | GNB  | Cacheu
 Farim              | Farim              |      12.493 |    -15.227 |        6792 | Guinea Bissau            | GW   | GNB  | Oio
 Fulacunda          | Fulacunda          |      11.773 |    -15.195 |        1311 | Guinea Bissau            | GW   | GNB  | Quinara
 Gabu               | Gabu               |       12.28 |    -14.234 |       14430 | Guinea Bissau            | GW   | GNB  | Gabú
 Catio              | Catio              |     11.2167 |   -15.1667 |        9898 | Guinea Bissau            | GW   | GNB  | Tombali
 Bolama             | Bolama             |      11.583 |   -15.4828 |        9179 | Guinea Bissau            | GW   | GNB  | Bolama
 Bafata             | Bafata             |      12.167 |    -14.666 |     26112.5 | Guinea Bissau            | GW   | GNB  | Bafatá
 Bissau             | Bissau             |      11.865 |   -15.5984 |      395684 | Guinea Bissau            | GW   | GNB  | Bissau
 Touba              | Touba              |        8.28 |     -7.684 |       27504 | Ivory Coast              | CI   | CIV  | Bafing
 Bouafle            | Bouafle            |       6.978 |     -5.748 |       60962 | Ivory Coast              | CI   | CIV  | Marahoué
 Divo               | Divo               |       5.839 |      -5.36 |      127867 | Ivory Coast              | CI   | CIV  | Sud-Bandama
 Toumodi            | Toumodi            |       6.552 |     -5.019 |       39005 | Ivory Coast              | CI   | CIV  | Lacs
 Aboisso            | Aboisso            |      5.4667 |       -3.2 |       37654 | Ivory Coast              | CI   | CIV  | Sud-Comoé
 Ferkessedougou     | Ferkessedougou     |     9.60041 |   -5.20003 |       57410 | Ivory Coast              | CI   | CIV  | Savanes
 Odienne            | Odienne            |     9.51041 |   -7.58001 |       34488 | Ivory Coast              | CI   | CIV  | Denguélé
 Man                | Man                |     7.40041 |   -7.54999 |      143158 | Ivory Coast              | CI   | CIV  | Dix-Huit Montagnes
 Seguela            | Seguela            |     7.95041 |   -6.67002 |       31880 | Ivory Coast              | CI   | CIV  | Worodougou
 Gagnoa             | Gagnoa             |     6.15041 |   -5.87999 |      111188 | Ivory Coast              | CI   | CIV  | Fromager
 Soubre             | Soubre             |     5.79041 |   -6.61002 |     83712.5 | Ivory Coast              | CI   | CIV  | Bas-Sassandra
 San-Pedro          | San-Pedro          |     4.77042 |   -6.63997 |      203512 | Ivory Coast              | CI   | CIV  | Bas-Sassandra
 Sassandra          | Sassandra          |     4.95038 |   -6.08328 |     30842.5 | Ivory Coast              | CI   | CIV  | Bas-Sassandra
 Bondoukou          | Bondoukou          |     8.03043 |   -2.80002 |     38501.5 | Ivory Coast              | CI   | CIV  | Zanzan
 Agboville          | Agboville          |     5.94035 |   -4.28003 |     73027.5 | Ivory Coast              | CI   | CIV  | Agnéby
 Dimbokro           | Dimbokro           |     6.65046 |   -4.71001 |     46467.5 | Ivory Coast              | CI   | CIV  | N'zi-Comoé
 Grand Bassam       | Grand Bassam       |     5.20039 |   -3.74999 |     61226.5 | Ivory Coast              | CI   | CIV  | Lagunes
 Dabou              | Dabou              |     5.32036 |   -4.38995 |       71287 | Ivory Coast              | CI   | CIV  | Lagunes
 Guiglo             | Guiglo             |     6.55046 |   -7.48997 |       37490 | Ivory Coast              | CI   | CIV  | Moyen-Cavally
 Abengourou         | Abengourou         |     6.73038 |      -3.49 |       87809 | Ivory Coast              | CI   | CIV  | Moyen-Comoe
 Korhogo            | Korhogo            |     9.45998 |   -5.63995 |      172535 | Ivory Coast              | CI   | CIV  | Savanes
 Daloa              | Daloa              |     6.88998 |      -6.45 |      235410 | Ivory Coast              | CI   | CIV  | Haut-Sassandra
 Bouake             | Bouake             |     7.68998 |   -5.03001 |      511151 | Ivory Coast              | CI   | CIV  | Vallée du Bandama
 Yamoussoukro       | Yamoussoukro       |     6.81838 |    -5.2755 |      200514 | Ivory Coast              | CI   | CIV  | Lacs
 Abidjan            | Abidjan            |        5.32 |   -4.04005 |  3.4962e+06 | Ivory Coast              | CI   | CIV  | Lagunes
 Nyeri              | Nyeri              |   -0.416997 |     36.951 |       51084 | Kenya                    | KE   | KEN  | Central
 Mwingi             | Mwingi             |    -0.92957 |      38.07 |      9546.5 | Kenya                    | KE   | KEN  | Eastern
 Embu               | Embu               |   -0.519569 |      37.45 |       46771 | Kenya                    | KE   | KEN  | Eastern
 Machakos           | Machakos           |    -1.50953 |      37.26 |       88448 | Kenya                    | KE   | KEN  | Eastern
 Nanyuki            | Nanyuki            |    0.020398 |      37.06 |       34342 | Kenya                    | KE   | KEN  | Rift Valley
 Maralal            | Maralal            |     1.11046 |      36.68 |       20841 | Kenya                    | KE   | KEN  | Rift Valley
 Konza              | Konza              |    -1.74962 |      37.12 |        2004 | Kenya                    | KE   | KEN  | Rift Valley
 Lodwar             | Lodwar             |     3.13039 |      35.57 |     17089.5 | Kenya                    | KE   | KEN  | Rift Valley
 Eldama Ravine      | Eldama Ravine      |   0.0503703 |      35.72 |     15052.5 | Kenya                    | KE   | KEN  | Rift Valley
 Sotik              | Sotik              |   -0.679559 |      35.12 |     36942.5 | Kenya                    | KE   | KEN  | Rift Valley
 Namanga            | Namanga            |     -2.5396 |       36.8 |      7664.5 | Kenya                    | KE   | KEN  | Rift Valley
 Naivasha           | Naivasha           |   -0.709583 |      36.43 |     41174.5 | Kenya                    | KE   | KEN  | Rift Valley
 Kericho            | Kericho            |   -0.359579 |      35.28 |       67300 | Kenya                    | KE   | KEN  | Rift Valley
 Kitale             | Kitale             |     1.03047 |    34.9899 |      112809 | Kenya                    | KE   | KEN  | Rift Valley
 Bungoma            | Bungoma            |     0.57039 |      34.56 |       55962 | Kenya                    | KE   | KEN  | Western
 Kakamega           | Kakamega           |    0.290407 |      34.73 |       63426 | Kenya                    | KE   | KEN  | Western
 Wajir              | Wajir              |     1.75037 |      40.05 |       40240 | Kenya                    | KE   | KEN  | North-Eastern
 Garissa            | Garissa            |   -0.439626 |      39.67 |       65948 | Kenya                    | KE   | KEN  | North-Eastern
 Witu               | Witu               |    -2.37961 |      40.43 |        3945 | Kenya                    | KE   | KEN  | Coast
 Tsavo              | Tsavo              |    -2.98278 |    38.4666 |         414 | Kenya                    | KE   | KEN  | Coast
 Voi                | Voi                |    -3.36958 |      38.57 |     28055.5 | Kenya                    | KE   | KEN  | Coast
 Kilifi             | Kilifi             |    -3.60961 |      39.85 |     63228.5 | Kenya                    | KE   | KEN  | Coast
 Thika              | Thika              |    -1.03959 |      37.09 |     93571.5 | Kenya                    | KE   | KEN  | Central
 Kendu Bay          | Kendu Bay          |   -0.359579 |      34.64 |       91248 | Kenya                    | KE   | KEN  | Nyanza
 Karungu            | Karungu            |   -0.849626 |      34.15 |        2376 | Kenya                    | KE   | KEN  | Nyanza
 Kisii              | Kisii              |   -0.669586 |      34.76 |       28547 | Kenya                    | KE   | KEN  | Nyanza
 Marsabit           | Marsabit           |        2.33 |      37.98 |     15910.5 | Kenya                    | KE   | KEN  | Eastern
 Moyale             | Moyale             |     3.51998 |      39.05 |       20540 | Kenya                    | KE   | KEN  | Eastern
 Nakuru             | Nakuru             |   -0.279997 |      36.07 |      312315 | Kenya                    | KE   | KEN  | Rift Valley
 Lamu               | Lamu               |    -2.26204 |    40.9197 |       17435 | Kenya                    | KE   | KEN  | Coast
 Malindi            | Malindi            |       -3.21 |       40.1 |       81160 | Kenya                    | KE   | KEN  | Coast
 Kisumu             | Kisumu             |  -0.0900346 |      34.75 |      306047 | Kenya                    | KE   | KEN  | Nyanza
 Meru               | Meru               |   0.0599821 |      37.64 |       47226 | Kenya                    | KE   | KEN  | Eastern
 Eldoret            | Eldoret            |    0.520006 |      35.27 |      285914 | Kenya                    | KE   | KEN  | Rift Valley
 Mombasa            | Mombasa            |    -4.04003 |    39.6899 |      840834 | Kenya                    | KE   | KEN  | Coast
 Nairobi            | Nairobi            |    -1.28335 |    36.8167 | 2.88027e+06 | Kenya                    | KE   | KEN  | Nairobi
 Teyateyaneng       | Teyateyaneng       |     -29.153 |     27.753 |        5115 | Lesotho                  | LS   | LSO  | Berea
 Mohales Hoek       | Mohales Hoek       |     -30.159 |      27.48 |       24992 | Lesotho                  | LS   | LSO  | Mohale's Hoek
 Moyeni             | Moyeni             |     -30.411 |     27.716 |       24130 | Lesotho                  | LS   | LSO  | Quthing
 Hlotse             | Hlotse             |     -28.878 |     28.056 |       47675 | Lesotho                  | LS   | LSO  | Leribe
 Butha-Buthe        | Butha-Buthe        |      -28.75 |      28.25 |       16330 | Lesotho                  | LS   | LSO  | Leribe
 Mokhotlong         | Mokhotlong         |     -29.291 |     29.078 |        8809 | Lesotho                  | LS   | LSO  | Mokhotlong
 Mafetang           | Mafetang           |    -29.8166 |      27.25 |     54708.5 | Lesotho                  | LS   | LSO  | Mafeteng
 Maseru             | Maseru             |    -29.3167 |    27.4833 |      239840 | Lesotho                  | LS   | LSO  | Maseru
 Barclayville       | Barclayville       |         4.8 |    -8.1667 |        2733 | Liberia                  | LR   | LBR  | GrandKru
 Voinjama           | Voinjama           |      8.4167 |      -9.75 |       26594 | Liberia                  | LR   | LBR  | Lofa
 Bensonville        | Bentol             |      6.4333 |      -10.6 |        4089 | Liberia                  | LR   | LBR  | Montserrado
 Kakata             | Kakata             |       6.526 |    -10.349 |       33945 | Liberia                  | LR   | LBR  | Margibi
 Sanniquellie       | Sanniquellie       |       7.371 |     -8.685 |       11415 | Liberia                  | LR   | LBR  | Nimba
 Rivercess          | Rivercess          |       5.465 |     -9.578 |        2578 | Liberia                  | LR   | LBR  | River Cess
 Harper             | Harper             |     4.37538 |   -7.71698 |       25249 | Liberia                  | LR   | LBR  | Maryland
 Gbarnga            | Gbarnga            |     7.01041 |      -9.49 |     31856.5 | Liberia                  | LR   | LBR  | Bong
 Zwedru             | Zwedru             |     6.07039 |      -8.13 |     19459.5 | Liberia                  | LR   | LBR  | GrandGedeh
 Greenville         | Greenville         |     5.01113 |   -9.03881 |       10374 | Liberia                  | LR   | LBR  | Sinoe
 Buchanan           | Buchanan           |     5.91608 |   -10.0525 |       37023 | Liberia                  | LR   | LBR  | Grand Bassa
 Robertsport        | Robertsport        |     6.75332 |   -11.3686 |        7951 | Liberia                  | LR   | LBR  | Grand Cape Mount
 Monrovia           | Monrovia           |     6.31056 |   -10.8048 |      913331 | Liberia                  | LR   | LBR  | Montserrado
 Dirj               | Dirj               |     30.1679 |    10.4567 |         931 | Libya                    | LY   | LBY  | Ghadamis
 Nalut              | Nalut              |     31.8804 |      10.97 |     66418.5 | Libya                    | LY   | LBY  | Ghadamis
 Zillah             | Zillah             |     28.5504 |    17.5834 |          10 | Libya                    | LY   | LBY  | Al Jufrah
 Al Khums           | Al Khums           |     32.6604 |      14.26 |      192502 | Libya                    | LY   | LBY  | Al Marqab
 Tajarhi            | Tajarhi            |     24.3704 |    14.4708 |        1498 | Libya                    | LY   | LBY  | Murzuq
 Umm al Abid        | Umm al Abid        |      27.517 |    15.0333 |         299 | Libya                    | LY   | LBY  | Sabha
 Az Zawiyah         | Az Zawiyah         |     32.7604 |      12.72 |      193062 | Libya                    | LY   | LBY  | Az Zawiyah
 Gharyan            | Gharyan            |     32.1704 |      13.02 |      116014 | Libya                    | LY   | LBY  | Mizdah
 Mizdah             | Mizdah             |     31.4337 |    12.9833 |     16379.5 | Libya                    | LY   | LBY  | Mizdah
 Bani Walid         | Bani Walid         |     31.7704 |      13.99 |       55871 | Libya                    | LY   | LBY  | Bani Walid
 Al Marj            | Al Marj            |     32.5005 |      20.83 |      127428 | Libya                    | LY   | LBY  | Al Hizam Al Akhdar
 Al Bayda           | Al Bayda           |     32.7604 |      21.62 |        1794 | Libya                    | LY   | LBY  | Al Jabal al Akhdar
 Shahhat            | Shahhat            |     32.8281 |    21.8622 |       44188 | Libya                    | LY   | LBY  | Al Jabal al Akhdar
 El Agheila         | El Agheila         |      30.257 |       19.2 |         100 | Libya                    | LY   | LBY  | Ajdabiya
 Maradah            | Maradah            |     29.2337 |    19.2166 |      2364.5 | Libya                    | LY   | LBY  | Ajdabiya
 Qaminis            | Qaminis            |     31.6606 |    20.0155 |        5348 | Libya                    | LY   | LBY  | Benghazi
 As Sidr            | As Sidr            |     30.6704 |    18.2666 |          50 | Libya                    | LY   | LBY  | Surt
 Al Jaghbub         | Al Jaghbub         |     29.7504 |    24.5166 |        1744 | Libya                    | LY   | LBY  | Al Butnan
 Ghadamis           | Ghadamis           |     30.1333 |    9.50003 |        6623 | Libya                    | LY   | LBY  | Ghadamis
 Hun                | Hun                |     29.1167 |    15.9333 |       17352 | Libya                    | LY   | LBY  | Al Jufrah
 Birak              | Birak              |     27.5333 |    14.2834 |     42432.5 | Libya                    | LY   | LBY  | Ash Shati'
 Ghat               | Ghat               |     24.9647 |    10.1728 |       22006 | Libya                    | LY   | LBY  | Ghat
 Marzuq             | Marzuq             |     25.9044 |    13.8972 |     49401.5 | Libya                    | LY   | LBY  | Murzuq
 Ajdabiya           | Ajdabiya           |       30.77 |      20.22 |      139096 | Libya                    | LY   | LBY  | Ajdabiya
 Awjilah            | Awjilah            |      29.108 |    21.2869 |        6610 | Libya                    | LY   | LBY  | Ajdabiya
 Surt               | Surt               |       31.21 |      16.59 |      110756 | Libya                    | LY   | LBY  | Surt
 Darnah             | Darnah             |     32.7648 |    22.6391 |      103378 | Libya                    | LY   | LBY  | Al Qubbah
 Tubruq             | Tubruq             |       32.08 |      23.96 |      192290 | Libya                    | LY   | LBY  | Al Butnan
 Al Jawf            | Al Jawf            |        24.2 |      23.29 |       24132 | Libya                    | LY   | LBY  | Al Kufrah
 Tmassah            | Tmassah            |     26.3666 |       15.8 |         350 | Libya                    | LY   | LBY  | Murzuq
 Misratah           | Misratah           |       32.38 |       15.1 |      301160 | Libya                    | LY   | LBY  | Misratah
 Zuwarah            | Zuwarah            |     32.9344 |    12.0791 |      123848 | Libya                    | LY   | LBY  | An Nuqat al Khams
 Sabha              | Sabha              |     27.0333 |    14.4333 |      100249 | Libya                    | LY   | LBY  | Sabha
 Banghazi           | Banghazi           |     32.1167 |    20.0667 |      881187 | Libya                    | LY   | LBY  | Benghazi
 Tripoli            | Tripoli            |     32.8925 |      13.18 |  1.2092e+06 | Libya                    | LY   | LBY  | Tajura' wa an Nawahi al Arba
 Sambava            | Sambava            |    -14.2662 |    50.1666 |     37493.5 | Madagascar               | MG   | MDG  | Antsiranana
 Ambanja            | Ambanja            |    -13.6829 |      48.45 |     26231.5 | Madagascar               | MG   | MDG  | Antsiranana
 Ihosy              | Ihosy              |    -22.3996 |    46.1167 |       13902 | Madagascar               | MG   | MDG  | Fianarantsoa
 Mandritsara        | Mandritsara        |    -15.8328 |    48.8166 |        9705 | Madagascar               | MG   | MDG  | Mahajanga
 Besalampy          | Besalampy          |    -16.7495 |    44.4833 |        1022 | Madagascar               | MG   | MDG  | Mahajanga
 Marovoay           | Marovoay           |    -16.0995 |    46.6333 |       16513 | Madagascar               | MG   | MDG  | Mahajanga
 Antsohihy          | Antsohihy          |    -14.8661 |    47.9834 |     15258.5 | Madagascar               | MG   | MDG  | Mahajanga
 Ambatondrazaka     | Ambatondrazaka     |    -17.8329 |    48.4167 |       41843 | Madagascar               | MG   | MDG  | Toamasina
 Bekiy              | Bekiy              |    -24.2162 |    45.3166 |        4286 | Madagascar               | MG   | MDG  | Toliary
 Manja              | Manja              |    -21.4329 |    44.3333 |        1536 | Madagascar               | MG   | MDG  | Toliary
 Miandrivazo        | Miandrivazo        |    -19.5162 |    45.4666 |     11893.5 | Madagascar               | MG   | MDG  | Toliary
 Antsirabe          | Antsirabe          |      -19.85 |    47.0333 |      307921 | Madagascar               | MG   | MDG  | Antananarivo
 Antalaha           | Antalaha           |    -14.8833 |    50.2833 |       40668 | Madagascar               | MG   | MDG  | Antsiranana
 Andoany            | Andoany            |       -13.4 |    48.2666 |     20535.5 | Madagascar               | MG   | MDG  | Antsiranana
 Farafangana        | Farafangana        |    -22.8166 |    47.8332 |     14992.5 | Madagascar               | MG   | MDG  | Fianarantsoa
 Mananjary          | Mananjary          |    -21.2167 |    48.3333 |       19841 | Madagascar               | MG   | MDG  | Fianarantsoa
 Maintirano         | Maintirano         |    -18.0666 |    44.0167 |        5925 | Madagascar               | MG   | MDG  | Mahajanga
 Toamasina          | Toamasina          |    -18.1818 |     49.405 |      208300 | Madagascar               | MG   | MDG  | Toamasina
 Maroantsetra       | Maroantsetra       |    -15.4333 |    49.7333 |     30952.5 | Madagascar               | MG   | MDG  | Toamasina
 Tolanaro           | Tolanaro           |    -25.0268 |      46.99 |       16818 | Madagascar               | MG   | MDG  | Toliary
 Morombe            | Morombe            |    -21.7391 |    43.3657 |       16727 | Madagascar               | MG   | MDG  | Toliary
 Androka            | Androka            |    -25.0219 |    44.0749 |         174 | Madagascar               | MG   | MDG  | Toliary
 Morondava          | Morondava          |    -20.2833 |    44.2833 |     20018.5 | Madagascar               | MG   | MDG  | Toliary
 Antsiranana        | Antsiranana        |    -12.2765 |    49.3115 |       76312 | Madagascar               | MG   | MDG  | Antsiranana
 Fianarantsoa       | Fianarantsoa       |    -21.4333 |    47.0833 |      175706 | Madagascar               | MG   | MDG  | Fianarantsoa
 Mahajanga          | Mahajanga          |      -15.67 |     46.345 |      145158 | Madagascar               | MG   | MDG  | Mahajanga
 Toliara            | Toliara            |    -23.3568 |      43.69 |      106278 | Madagascar               | MG   | MDG  | Toliary
 Antananarivo       | Antananarivo       |    -18.9166 |    47.5166 | 1.54422e+06 | Madagascar               | MG   | MDG  | Antananarivo
 Mzimba             | Mzimba             |       -11.9 |       33.6 |       19308 | Malawi                   | MW   | MWI  | Mzimba
 Machinga           | Machinga           |    -14.9667 |    35.5167 |        1418 | Malawi                   | MW   | MWI  | Machinga
 Dedza              | Dedza              |    -14.3667 |    34.3333 |       15608 | Malawi                   | MW   | MWI  | Dedza
 Mchinji            | Mchinji            |       -13.8 |       32.9 |       18305 | Malawi                   | MW   | MWI  | Mchinji
 Ntcheu             | Ntcheu             |    -14.8167 |    34.6333 |       10445 | Malawi                   | MW   | MWI  | Ntcheu
 Chiradzulu         | Chiradzulu         |       -15.7 |    35.1833 |        1580 | Malawi                   | MW   | MWI  | Chiradzulu
 Nsanje             | Nsanje             |    -16.9167 |    35.2667 |       21774 | Malawi                   | MW   | MWI  | Nsanje
 Mwanza             | Mwanza             |    -15.6167 |    34.5167 |       11379 | Malawi                   | MW   | MWI  | Mwanza
 Mulanje            | Mulanje            |    -16.0333 |       35.5 |       16483 | Malawi                   | MW   | MWI  | Mulanje
 Karonga            | Karonga            |     -9.9329 |    33.9333 |     33325.5 | Malawi                   | MW   | MWI  | Chitipa
 Chitipa            | Chitipa            |    -9.71622 |    33.2666 |       11118 | Malawi                   | MW   | MWI  | Chitipa
 Nkhata Bay         | Nkhata Bay         |    -11.5996 |       34.3 |     16914.5 | Malawi                   | MW   | MWI  | Nkhata Bay
 Nkhotakota         | Nkhotakota         |    -12.9163 |       34.3 |     42359.5 | Malawi                   | MW   | MWI  | Nkhotakota
 Mangochi           | Mangochi           |    -14.4596 |      35.27 |     68973.5 | Malawi                   | MW   | MWI  | Mangochi
 Salima             | Salima             |    -13.7829 |    34.4333 |     50616.5 | Malawi                   | MW   | MWI  | Salima
 Chiromo            | Chiromo            |      -16.55 |    35.1332 |       25235 | Malawi                   | MW   | MWI  | Nsanje
 Zomba              | Zomba              |      -15.39 |      35.31 |       80932 | Malawi                   | MW   | MWI  | Zomba
 Mzuzu              | Mzuzu              |      -11.46 |      34.02 |      110201 | Malawi                   | MW   | MWI  | Mzimba
 Blantyre           | Blantyre           |      -15.79 |    34.9899 |      584877 | Malawi                   | MW   | MWI  | Blantyre
 Lilongwe           | Lilongwe           |    -13.9833 |    33.7833 |      646750 | Malawi                   | MW   | MWI  | Lilongwe
 Goundam            | Goundam            |      16.417 |   -3.66658 |      6217.5 | Mali                     | ML   | MLI  | Timbuktu
 Aguelhok           | Aguelhok           |     19.4549 |   0.856371 |        8540 | Mali                     | ML   | MLI  | Kidal
 Bourem             | Bourem             |     16.9004 |  -0.349989 |       28743 | Mali                     | ML   | MLI  | Gao
 Kati               | Kati               |     12.7504 |   -8.08001 |     54908.5 | Mali                     | ML   | MLI  | Bamako
 Banamba            | Banamba            |     13.5504 |      -7.45 |       18312 | Mali                     | ML   | MLI  | Bamako
 Kangaba            | Kangaba            |     11.9404 |   -8.44001 |       17232 | Mali                     | ML   | MLI  | Bamako
 Nioro du Sahel     | Nioro du Sahel     |     15.2304 |   -9.58997 |       14421 | Mali                     | ML   | MLI  | Kayes
 Bafoulabe          | Bafoulabe          |     13.8004 |     -10.82 |       26823 | Mali                     | ML   | MLI  | Kayes
 Satadougou         | Satadougou         |      12.617 |   -11.4066 |         706 | Mali                     | ML   | MLI  | Kayes
 Yelimane           | Yelimane           |     15.1337 |   -10.5666 |         988 | Mali                     | ML   | MLI  | Kayes
 Kita               | Kita               |     13.0504 |   -9.48331 |       26102 | Mali                     | ML   | MLI  | Kayes
 Koutiala           | Koutiala           |     12.3904 |   -5.46999 |      102140 | Mali                     | ML   | MLI  | Sikasso
 Sikasso            | Sikasso            |     11.3204 |      -5.68 |      185270 | Mali                     | ML   | MLI  | Sikasso
 Bougouni           | Bougouni           |     11.4204 |   -7.48997 |       30547 | Mali                     | ML   | MLI  | Sikasso
 Markala            | Markala            |     13.6704 |   -6.06995 |     46161.5 | Mali                     | ML   | MLI  | Ségou
 Sokolo             | Sokolo             |     14.7337 |   -6.13331 |        4251 | Mali                     | ML   | MLI  | Ségou
 San                | San                |     13.3004 |   -4.90005 |     33098.5 | Mali                     | ML   | MLI  | Ségou
 Taoudenni          | Taoudenni          |     22.6666 |   -3.98336 |        3019 | Mali                     | ML   | MLI  | Timbuktu
 Araouane           | Araouane           |        18.9 |   -3.52995 |        4026 | Mali                     | ML   | MLI  | Timbuktu
 Tessalit           | Tessalit           |     20.2014 |    1.08881 |      5869.5 | Mali                     | ML   | MLI  | Kidal
 Menaka             | Menaka             |     15.9167 |        2.4 |        9110 | Mali                     | ML   | MLI  | Gao
 Nara               | Nara               |       15.18 |   -7.27998 |       18459 | Mali                     | ML   | MLI  | Bamako
 Koulikoro          | Koulikoro          |     12.8833 |   -7.54999 |     13408.5 | Mali                     | ML   | MLI  | Bamako
 Mopti              | Mopti              |       14.49 |   -4.18004 |     93269.5 | Mali                     | ML   | MLI  | Mopti
 Gao                | Gao                |     16.2666 | -0.0500076 |     87472.5 | Mali                     | ML   | MLI  | Gao
 Kayes              | Kayes              |       14.45 |     -11.44 |       77207 | Mali                     | ML   | MLI  | Kayes
 Segou              | Segou              |       13.44 |   -6.26002 |      107752 | Mali                     | ML   | MLI  | Ségou
 Timbuktu           | Timbuktu           |     16.7666 |    -3.0166 |       68872 | Mali                     | ML   | MLI  | Timbuktu
 Bamako             | Bamako             |       12.65 |   -8.00004 | 1.39564e+06 | Mali                     | ML   | MLI  | Bamako
 Djenne             | Djenne             |        13.9 |   -4.54999 |       27663 | Mali                     | ML   | MLI  | Mopti
 Fderik             | Fderik             |      22.679 |    -12.707 |        5760 | Mauritania               | MR   | MRT  | Tiris Zemmour
 Aleg               | Aleg               |      17.058 |    -13.909 |        8388 | Mauritania               | MR   | MRT  | Brakna
 Akjoujt            | Akjoujt            |      19.747 |    -14.391 |         370 | Mauritania               | MR   | MRT  | Inchiri
 Zouirat            | Zouirat            |     22.7304 |   -12.4833 |       56345 | Mauritania               | MR   | MRT  | Tiris Zemmour
 Chegga             | Chegga             |     25.3804 |   -5.77997 |          10 | Mauritania               | MR   | MRT  | Tiris Zemmour
 Magta Lajar        | Magta Lajar        |     17.0004 |      -13.5 |          10 | Mauritania               | MR   | MRT  | Brakna
 Bogue              | Bogue              |     16.5904 |     -14.27 |       10415 | Mauritania               | MR   | MRT  | Brakna
 Boutilimit         | Boutilimit         |     17.5504 |      -14.7 |       14142 | Mauritania               | MR   | MRT  | Trarza
 Selibaby           | Selibaby           |      15.167 |   -12.1833 |         460 | Mauritania               | MR   | MRT  | Guidimaka
 Timbedra           | Timbedra           |     16.2504 |   -8.16662 |         245 | Mauritania               | MR   | MRT  | Hodh ech Chargui
 Nema               | Nema               |     16.6171 |   -7.25001 |      127500 | Mauritania               | MR   | MRT  | Hodh ech Chargui
 Saint-Louis        | Saint-Louis        |       16.02 |     -16.51 |      198396 | Mauritania               | MR   | MRT  | Trarza
 Tidjikdja          | Tidjikdja          |       18.55 |   -11.4166 |       19981 | Mauritania               | MR   | MRT  | Tagant
 Bir Mogrein        | Bir Mogrein        |     25.2333 |   -11.5833 |          10 | Mauritania               | MR   | MRT  | Tiris Zemmour
 Rosso              | Rosso              |      16.524 |   -15.8127 |       47203 | Mauritania               | MR   | MRT  | Trarza
 Kiffa              | Kiffa              |       16.62 |      -11.4 |       73930 | Mauritania               | MR   | MRT  | Assaba
 Nouadhibou         | Nouadhibou         |        20.9 |    -17.056 |       86738 | Mauritania               | MR   | MRT  | Dakhlet Nouadhibou
 Ayoun el Atrous    | Ayoun el Atrous    |     16.6666 |   -9.61666 |        1423 | Mauritania               | MR   | MRT  | Hodh el Gharbi
 Nouakchott         | Nouakchott         |     18.0864 |   -15.9753 |      701772 | Mauritania               | MR   | MRT  | Nouakchott
 Atar               | Atar               |     20.5166 |     -13.05 |       44265 | Mauritania               | MR   | MRT  | Adrar
 Curepipe           | Curepipe           |    -20.3162 |    57.5166 |      192088 | Mauritius                | MU   | MUS  | 
 Port Louis         | Port Louis         |    -20.1666 |       57.5 |      371954 | Mauritius                | MU   | MUS  | 
 Ksar El Kebir      | Ksar El Kebir      |     35.0204 |   -5.90999 |      207676 | Morocco                  | MA   | MAR  | Tanger - Tétouan
 Larache            | Larache            |     35.2004 |   -6.16002 |      114688 | Morocco                  | MA   | MAR  | Tanger - Tétouan
 Taza               | Taza               |     34.2204 |   -4.01997 |      170762 | Morocco                  | MA   | MAR  | Taza - Al Hoceima - Taounate
 Ouezzane           | Ouezzane           |     34.8103 |   -5.57001 |       64171 | Morocco                  | MA   | MAR  | Gharb - Chrarda - Béni Hssen
 Kenitra            | Kenitra            |     34.2704 |      -6.58 |      459178 | Morocco                  | MA   | MAR  | Gharb - Chrarda - Béni Hssen
 Settat             | Settat             |     33.0104 |   -7.62001 |      140415 | Morocco                  | MA   | MAR  | Chaouia - Ouardigha
 Er Rachidia        | Er Rachidia        |     31.9404 |   -4.44997 |      228489 | Morocco                  | MA   | MAR  | Meknès - Tafilalet
 Meknes             | Meknes             |     33.9004 |   -5.55998 |      621666 | Morocco                  | MA   | MAR  | Meknès - Tafilalet
 Tiznit             | Tiznit             |     29.7104 |   -9.73998 |     56398.5 | Morocco                  | MA   | MAR  | Souss - Massa - Draâ
 El Jadida          | El Jadida          |     33.2604 |   -8.50998 |      164010 | Morocco                  | MA   | MAR  | Doukkala - Abda
 Dawra              | Dawra              |     27.4629 |   -12.9922 |          10 | Morocco                  | MA   | MAR  | Laâyoune - Boujdour - Sakia El Hamra
 Lemsid             | Lemsid             |     26.5482 |   -13.8482 |         100 | Morocco                  | MA   | MAR  | Laâyoune - Boujdour - Sakia El Hamra
 Tan Tan            | Tan Tan            |     28.4304 |      -11.1 |       63396 | Morocco                  | MA   | MAR  | Guelmim - Es-Semara
 Bir Anzarane       | Bir Anzarane       |     23.8837 |   -14.5333 |        6597 | Morocco                  | MA   | MAR  | Oued el Dahab
 Tangier            | Tangier            |     35.7473 |    -5.8327 |      719208 | Morocco                  | MA   | MAR  | Tanger - Tétouan
 Agadir             | Agadir             |       30.44 |   -9.62004 |      752032 | Morocco                  | MA   | MAR  | Souss - Massa - Draâ
 Goulimine          | Goulimine          |       28.98 |     -10.07 |      106748 | Morocco                  | MA   | MAR  | Guelmim - Es-Semara
 Smara              | Smara              |     26.7333 |   -11.6833 |       48149 | Morocco                  | MA   | MAR  | Guelmim - Es-Semara
 Ad Dakhla          | Ad Dakhla          |     23.7141 |   -15.9368 |       82146 | Morocco                  | MA   | MAR  | Oued el Dahab
 Oujda              | Oujda              |       34.69 |   -1.90997 |      407322 | Morocco                  | MA   | MAR  | Oriental
 Safi               | Safi               |       32.32 |   -9.23999 |      320820 | Morocco                  | MA   | MAR  | Doukkala - Abda
 Laayoune           | Laayoune           |       27.15 |      -13.2 |      182224 | Morocco                  | MA   | MAR  | Laâyoune - Boujdour - Sakia El Hamra
 Fez                | Fez                |     34.0546 |   -5.00038 |      983446 | Morocco                  | MA   | MAR  | Fès - Boulemane
 Rabat              | Rabat              |     34.0253 |   -6.83613 | 1.68038e+06 | Morocco                  | MA   | MAR  | Rabat - Salé - Zemmour - Zaer
 Marrakesh          | Marrakesh          |       31.63 |   -7.99999 |      855648 | Morocco                  | MA   | MAR  | Marrakech - Tensift - Al Haouz
 Casablanca         | Casablanca         |        33.6 |   -7.61637 | 3.16295e+06 | Morocco                  | MA   | MAR  | Grand Casablanca
 Moatize            | Moatize            |    -16.0995 |      33.95 |     40536.5 | Mozambique               | MZ   | MOZ  | Tete
 Luangwa            | Luangwa            |    -15.6196 |      30.41 |        3065 | Mozambique               | MZ   | MOZ  | Tete
 Manica             | Manica             |    -18.9696 |      32.88 |      3713.5 | Mozambique               | MZ   | MOZ  | Manica
 Espungabera        | Espungabera        |    -20.4501 |      32.77 |         393 | Mozambique               | MZ   | MOZ  | Manica
 Montepuez          | Montepuez          |    -13.1196 |         39 |       49041 | Mozambique               | MZ   | MOZ  | Cabo Delgado
 Mocimboa           | Mocimboa           |    -11.3196 |      40.35 |       27909 | Mozambique               | MZ   | MOZ  | Cabo Delgado
 Marrupa            | Marrupa            |    -13.1984 |    37.4995 |        8762 | Mozambique               | MZ   | MOZ  | Nassa
 Cuamba             | Cuamba             |    -14.7896 |      36.54 |     68204.5 | Mozambique               | MZ   | MOZ  | Nassa
 Ligonha            | Ligonha            |    -15.1757 |      37.74 |      3310.5 | Mozambique               | MZ   | MOZ  | Nampula
 Macia              | Macia              |    -25.0195 |      33.09 |       13095 | Mozambique               | MZ   | MOZ  | Gaza
 Massangena         | Massangena         |    -21.5373 |    32.9564 |       634.5 | Mozambique               | MZ   | MOZ  | Gaza
 Mapai              | Mapai              |    -22.8427 |    31.9631 |         201 | Mozambique               | MZ   | MOZ  | Gaza
 Dondo              | Dondo              |    -19.6196 |      34.73 |     75217.5 | Mozambique               | MZ   | MOZ  | Sofala
 Chiramba           | Chiramba           |    -16.8921 |    34.6559 |         556 | Mozambique               | MZ   | MOZ  | Sofala
 Mocuba             | Mocuba             |    -16.8496 |      38.26 |       68984 | Mozambique               | MZ   | MOZ  | Zambezia
 Nicuadala          | Nicuadala          |    -17.6077 |    36.8197 |        6945 | Mozambique               | MZ   | MOZ  | Zambezia
 Maxixe             | Maxixe             |     -23.866 |    35.3885 |      112882 | Mozambique               | MZ   | MOZ  | Inhambane
 Panda              | Panda              |    -24.0629 |    34.7303 |         602 | Mozambique               | MZ   | MOZ  | Inhambane
 Quissico           | Quissico           |    -24.7257 |     34.766 |        1210 | Mozambique               | MZ   | MOZ  | Inhambane
 Vilanculos         | Vilanculos         |    -21.9995 |    35.3166 |         177 | Mozambique               | MZ   | MOZ  | Inhambane
 Matola             | Matola             |    -25.9696 |      32.46 |      503368 | Mozambique               | MZ   | MOZ  | Maputo
 Chimoio            | Chimoio            |      -19.12 |      33.47 |      242538 | Mozambique               | MZ   | MOZ  | Manica
 Lichinga           | Lichinga           |       -13.3 |      35.24 |     94333.5 | Mozambique               | MZ   | MOZ  | Nassa
 Angoche            | Angoche            |      -16.23 |      39.91 |       57835 | Mozambique               | MZ   | MOZ  | Nampula
 Mocambique         | Mocambique         |    -15.0399 |    40.6822 |     40700.5 | Mozambique               | MZ   | MOZ  | Nampula
 Inhambane          | Inhambane          |     -23.858 |    35.3398 |       94830 | Mozambique               | MZ   | MOZ  | Inhambane
 Tete               | Tete               |      -16.17 |      33.58 |      122183 | Mozambique               | MZ   | MOZ  | Tete
 Pemba              | Pemba              |     -12.983 |    40.5323 |      109690 | Mozambique               | MZ   | MOZ  | Cabo Delgado
 Nampula            | Nampula            |     -15.136 |     39.293 |      386186 | Mozambique               | MZ   | MOZ  | Nampula
 Xai-Xai            | Xai-Xai            |      -25.04 |      33.64 |      128086 | Mozambique               | MZ   | MOZ  | Gaza
 Quelimane          | Quelimane          |      -17.88 |      36.89 |      179032 | Mozambique               | MZ   | MOZ  | Zambezia
 Nacala             | Nacala             |    -14.5186 |     40.715 |      212212 | Mozambique               | MZ   | MOZ  | Nampula
 Beira              | Beira              |      -19.82 |      34.87 |      507196 | Mozambique               | MZ   | MOZ  | Sofala
 Maputo             | Maputo             |    -25.9553 |    32.5892 | 1.31881e+06 | Mozambique               | MZ   | MOZ  | Maputo
 Omaruru            | Omaruru            |     -21.436 |     15.951 |       11547 | Namibia                  | NA   | NAM  | Erongo
 Karibib            | Karibib            |     -21.939 |     15.853 |        6898 | Namibia                  | NA   | NAM  | Erongo
 Otavi              | Otavi              |      -19.64 |     17.342 |        4562 | Namibia                  | NA   | NAM  | Otjozondjupa
 Gobabis            | Gobabis            |     -22.455 |     18.963 |       16321 | Namibia                  | NA   | NAM  | Omaheke
 Karasburg          | Karasburg          |    -28.0196 |      18.74 |      5071.5 | Namibia                  | NA   | NAM  | Karas
 Bethanie           | Bethanie           |    -26.4995 |      17.15 |        8122 | Namibia                  | NA   | NAM  | Karas
 Oranjemund         | Oranjemund         |    -28.5495 |      16.43 |        7223 | Namibia                  | NA   | NAM  | Karas
 Mariental          | Mariental          |    -24.6196 |    17.9599 |       12670 | Namibia                  | NA   | NAM  | Hardap
 Rehoboth           | Rehoboth           |    -23.3196 |      17.08 |       23298 | Namibia                  | NA   | NAM  | Hardap
 Outjo              | Outjo              |    -20.1095 |      16.14 |      6363.5 | Namibia                  | NA   | NAM  | Kunene
 Opuwo              | Opuwo              |    -18.0596 |      13.82 |        4857 | Namibia                  | NA   | NAM  | Kunene
 Usakos             | Usakos             |    -21.9995 |      15.58 |      5393.5 | Namibia                  | NA   | NAM  | Erongo
 Okahandja          | Okahandja          |    -21.9796 |      16.91 |       19691 | Namibia                  | NA   | NAM  | Otjozondjupa
 Otjiwarongo        | Otjiwarongo        |    -20.4595 |      16.64 |     23019.5 | Namibia                  | NA   | NAM  | Otjozondjupa
 Oshikango          | Oshikango          |    -17.3995 |      15.88 |      7540.5 | Namibia                  | NA   | NAM  | Ohangwena
 Cuangar            | Cuangar            |    -17.6095 |      18.62 |         425 | Namibia                  | NA   | NAM  | Kavango
 Katima Mulilo      | Katima Mulilo      |    -17.4996 |      24.26 |     21748.5 | Namibia                  | NA   | NAM  | Caprivi
 Keetmanshoop       | Keetmanshoop       |    -26.5739 |      18.13 |     16823.5 | Namibia                  | NA   | NAM  | Karas
 Maltahöhe          | Maltahohe          |      -24.84 |      16.94 |        2329 | Namibia                  | NA   | NAM  | Hardap
 Swakopmund         | Swakopmund         |    -22.6689 |     14.535 |       27269 | Namibia                  | NA   | NAM  | Erongo
 Ongwediva          | Ongwediva          |      -17.78 |      15.77 |       17343 | Namibia                  | NA   | NAM  | Oshana
 Rundu              | Rundu              |      -17.92 |    19.7499 |       43485 | Namibia                  | NA   | NAM  | Kavango
 Tsumeb             | Tsumeb             |      -19.24 |      17.71 |     13574.5 | Namibia                  | NA   | NAM  | Oshikoto
 Lüderitz           | Luderitz           |     -26.648 |    15.1594 |       14216 | Namibia                  | NA   | NAM  | Karas
 Walvis Bay         | Walvis Bay         |    -22.9575 |    14.5053 |     49504.5 | Namibia                  | NA   | NAM  | Erongo
 Windhoek           | Windhoek           |      -22.57 |    17.0835 |      265464 | Namibia                  | NA   | NAM  | Khomas
 Grootfontein       | Grootfontein       |    -19.5666 |    18.1166 |     19149.5 | Namibia                  | NA   | NAM  | Otjozondjupa
 Goure              | Goure              |     13.9874 |      10.27 |     13291.5 | Niger                    | NE   | NER  | Zinder
 Gaya               | Gaya               |     11.8882 |    3.44665 |     29394.5 | Niger                    | NE   | NER  | Dosso
 Tillaberi          | Tillaberi          |      14.212 |    1.45308 |       13812 | Niger                    | NE   | NER  | Niamey
 Ayorou             | Ayorou             |     14.7318 |   0.919468 |       14001 | Niger                    | NE   | NER  | Niamey
 Birni Nkonni       | Birni Nkonni       |     13.7904 |    5.25993 |     56677.5 | Niger                    | NE   | NER  | Tahoua
 Madaoua            | Madaoua            |     14.0762 |    5.95859 |       19954 | Niger                    | NE   | NER  | Tahoua
 Diffa              | Diffa              |     13.3171 |    12.6089 |       29468 | Niger                    | NE   | NER  | Diffa
 Nguigmi            | Nguigmi            |     14.2532 |    13.1108 |       15318 | Niger                    | NE   | NER  | Diffa
 Dosso              | Dosso              |       13.05 |        3.2 |     46481.5 | Niger                    | NE   | NER  | Dosso
 Arlit              | Arlit              |       18.82 |    7.32998 |       90000 | Niger                    | NE   | NER  | Agadez
 Djado              | Djado              |      21.015 |    12.3075 |          10 | Niger                    | NE   | NER  | Agadez
 Maradi             | Maradi             |     13.4916 |     7.0964 |      198021 | Niger                    | NE   | NER  | Maradi
 Tahoua             | Tahoua             |        14.9 |    5.25993 |     98190.5 | Niger                    | NE   | NER  | Tahoua
 Zinder             | Zinder             |        13.8 |    8.98332 |      210891 | Niger                    | NE   | NER  | Zinder
 Niamey             | Niamey             |     13.5167 |    2.11666 |      828896 | Niger                    | NE   | NER  | Niamey
 Agadez             | Agadez             |     16.9959 |    7.98281 |      103166 | Niger                    | NE   | NER  | Agadez
 Umuahia            | Umuahia            |       5.532 |      7.486 |      264662 | Nigeria                  | NG   | NGA  | Abia
 Uyo                | Uyo                |       5.008 |       7.85 |      495756 | Nigeria                  | NG   | NGA  | Akwa Ibom
 Owerri             | Owerri             |       5.493 |      7.026 |      215038 | Nigeria                  | NG   | NGA  | Imo
 Dutse              | Dutse              |     11.7992 |    9.35033 |       17129 | Nigeria                  | NG   | NGA  | Jigawa
 Damaturu           | Damaturu           |      11.749 |     11.966 |      255895 | Nigeria                  | NG   | NGA  | Yobe
 Iwo                | Iwo                |     7.62996 |    4.17999 |      208688 | Nigeria                  | NG   | NGA  | Osun
 Iseyin             | Iseyin             |     7.97002 |       3.59 |       98071 | Nigeria                  | NG   | NGA  | Oyo
 Biu                | Biu                |     10.6204 |      12.19 |     64619.5 | Nigeria                  | NG   | NGA  | Borno
 Bama               | Bama               |     11.5204 |      13.69 |       86410 | Nigeria                  | NG   | NGA  | Borno
 Aba                | Aba                |      5.1004 |    7.34998 |      874385 | Nigeria                  | NG   | NGA  | Abia
 Opobo              | Opobo              |      4.5704 |    7.55999 |       34911 | Nigeria                  | NG   | NGA  | Akwa Ibom
 Orlu               | Orlu               |     5.78372 |    7.03331 |        9351 | Nigeria                  | NG   | NGA  | Imo
 Oturkpo            | Oturkpo            |      7.1904 |    8.12998 |       68220 | Nigeria                  | NG   | NGA  | Benue
 Calabar            | Calabar            |     4.96041 |    8.33002 |      354656 | Nigeria                  | NG   | NGA  | Cross River
 Wukari             | Wukari             |     7.87041 |    9.78001 |     74380.5 | Nigeria                  | NG   | NGA  | Taraba
 Jalingo            | Jalingo            |     8.90037 |      11.36 |      103773 | Nigeria                  | NG   | NGA  | Taraba
 Kontagora          | Kontagora          |     10.4004 |    5.46994 |       62144 | Nigeria                  | NG   | NGA  | Niger
 Bida               | Bida               |     9.08041 |    6.01001 |      172752 | Nigeria                  | NG   | NGA  | Niger
 Abeokuta           | Abeokuta           |     7.16043 |    3.35002 |      441231 | Nigeria                  | NG   | NGA  | Ogun
 Ijebu Ode          | Ijebu Ode          |     6.82045 |    3.92001 |      204501 | Nigeria                  | NG   | NGA  | Ogun
 Akure              | Akure              |      7.2504 |    5.19998 |      420594 | Nigeria                  | NG   | NGA  | Ondo
 Ikare              | Ikare              |     7.53043 |       5.76 |      899966 | Nigeria                  | NG   | NGA  | Ondo
 Owo                | Owo                |      7.2004 |    5.58998 |      200912 | Nigeria                  | NG   | NGA  | Ondo
 Ondo               | Ondo               |     7.09041 |       4.84 |      256444 | Nigeria                  | NG   | NGA  | Ondo
 Ado Ekiti          | Ado Ekiti          |     7.63037 |    5.21998 |      446749 | Nigeria                  | NG   | NGA  | Ekiti
 Ife                | Ife                |     7.48043 |    4.56002 |      482365 | Nigeria                  | NG   | NGA  | Osun
 Oshogbo            | Oshogbo            |     7.77036 |    4.56002 |      408245 | Nigeria                  | NG   | NGA  | Osun
 Oyo                | Oyo                |     7.85044 |    3.92998 |      475016 | Nigeria                  | NG   | NGA  | Oyo
 Awka               | Awka               |     6.21043 |       7.07 |      400828 | Nigeria                  | NG   | NGA  | Anambra
 Onitsha            | Onitsha            |     6.14041 |    6.77999 |       73374 | Nigeria                  | NG   | NGA  | Anambra
 Azare              | Azare              |     11.6804 |      10.19 |     87912.5 | Nigeria                  | NG   | NGA  | Bauchi
 Bauchi             | Bauchi             |     10.3104 |    9.84001 |      244350 | Nigeria                  | NG   | NGA  | Bauchi
 Gombe              | Gombe              |     10.2904 |      11.17 |      260312 | Nigeria                  | NG   | NGA  | Gombe
 Kumo               | Kumo               |     10.0457 |    11.2131 |       19249 | Nigeria                  | NG   | NGA  | Gombe
 Sapele             | Sapele             |     5.89043 |       5.68 |      235424 | Nigeria                  | NG   | NGA  | Delta
 Nsukka             | Nsukka             |     6.86703 |    7.38336 |      111017 | Nigeria                  | NG   | NGA  | Enugu
 Lokoja             | Lokoja             |     7.80039 |    6.73994 |     52650.5 | Nigeria                  | NG   | NGA  | Kogi
 Idah               | Idah               |      7.1104 |    6.73994 |       71895 | Nigeria                  | NG   | NGA  | Kogi
 Lafia              | Lafia              |     8.49042 |    8.52004 |     79470.5 | Nigeria                  | NG   | NGA  | Nassarawa
 Keffi              | Keffi              |     8.84903 |    7.87362 |     77056.5 | Nigeria                  | NG   | NGA  | Nassarawa
 Funtua             | Funtua             |     11.5204 |    7.32001 |      158643 | Nigeria                  | NG   | NGA  | Katsina
 Katsina            | Katsina            |     12.9904 |    7.59999 |      432149 | Nigeria                  | NG   | NGA  | Katsina
 Gusau              | Gusau              |     12.1704 |       6.66 |      185925 | Nigeria                  | NG   | NGA  | Zamfara
 Nguru              | Nguru              |     12.8804 |      10.45 |       82481 | Nigeria                  | NG   | NGA  | Yobe
 Gashua             | Gashua             |     12.8705 |      11.04 |     74825.5 | Nigeria                  | NG   | NGA  | Yobe
 Potiskum           | Potiskum           |     11.7104 |      11.08 |     82733.5 | Nigeria                  | NG   | NGA  | Yobe
 Birnin Kebbi       | Birnin Kebbi       |     12.4504 |    4.19994 |      102340 | Nigeria                  | NG   | NGA  | Kebbi
 Koko               | Koko               |     11.4232 |    4.51697 |       25792 | Nigeria                  | NG   | NGA  | Kebbi
 Mubi               | Mubi               |     10.2703 |      13.27 |      214710 | Nigeria                  | NG   | NGA  | Adamawa
 Numan              | Numan              |     9.46044 |      12.04 |       45173 | Nigeria                  | NG   | NGA  | Adamawa
 Ilorin             | Ilorin             |     8.49001 |       4.55 |      701742 | Nigeria                  | NG   | NGA  | Kwara
 Minna              | Minna              |     9.61999 |    6.55003 |      249038 | Nigeria                  | NG   | NGA  | Niger
 Zaria              | Zaria              |       11.08 |    7.71001 |      754836 | Nigeria                  | NG   | NGA  | Kaduna
 Jos                | Jos                |     9.92997 |    8.89004 |      737068 | Nigeria                  | NG   | NGA  | Plateau
 Yola               | Yola               |     9.20999 |      12.48 |       92253 | Nigeria                  | NG   | NGA  | Adamawa
 Benin City         | Benin City         |     6.34048 |    5.62001 |      929013 | Nigeria                  | NG   | NGA  | Edo
 Maiduguri          | Maiduguri          |       11.85 |      13.16 |      704230 | Nigeria                  | NG   | NGA  | Borno
 Port Harcourt      | Port Harcourt      |        4.81 |       7.01 |    1.02e+06 | Nigeria                  | NG   | NGA  | Rivers
 Makurdi            | Makurdi            |     7.72998 |    8.53001 |      245368 | Nigeria                  | NG   | NGA  | Benue
 Ibadan             | Ibadan             |     7.38003 |    3.92998 | 2.22128e+06 | Nigeria                  | NG   | NGA  | Oyo
 Ogbomosho          | Ogbomosho          |     8.13001 |    4.23999 |      595064 | Nigeria                  | NG   | NGA  | Oyo
 Warri              | Warri              |     5.51996 |       5.76 |      683064 | Nigeria                  | NG   | NGA  | Delta
 Kaduna             | Kaduna             |       10.52 |       7.44 |  1.1913e+06 | Nigeria                  | NG   | NGA  | Kaduna
 Enugu              | Enugu              |     6.45003 |        7.5 |      688862 | Nigeria                  | NG   | NGA  | Enugu
 Sokoto             | Sokoto             |       13.06 |    5.24003 |      648020 | Nigeria                  | NG   | NGA  | Sokoto
 Abuja              | Abuja              |     9.08333 |    7.53333 |      869068 | Nigeria                  | NG   | NGA  | Federal Capital Territory
 Kano               | Kano               |          12 |    8.52004 |    3.14e+06 | Nigeria                  | NG   | NGA  | Kano
 Lagos              | Lagos              |     6.44326 |    3.39153 | 4.73377e+06 | Nigeria                  | NG   | NGA  | Lagos
 Gikongoro          | Gikongoro          |     -2.4833 |    29.5667 |       15000 | Rwanda                   | RW   | RWA  | Southern
 Kibuye             | Kibuye             |       -2.05 |      29.35 |       48024 | Rwanda                   | RW   | RWA  | Western
 Kibungo            | Kibungo            |     -2.1667 |    30.5333 |       46240 | Rwanda                   | RW   | RWA  | Eastern
 Nyanza             | Nyanza             |    -2.34959 |      29.74 |      225209 | Rwanda                   | RW   | RWA  | Southern
 Gitarama           | Gitarama           |     -2.0696 |      29.76 |       87613 | Rwanda                   | RW   | RWA  | Southern
 Butare             | Butare             |    -2.58962 |      29.73 |       77000 | Rwanda                   | RW   | RWA  | Southern
 Gisenyi            | Gisenyi            |    -1.68467 |    29.2629 |       83623 | Rwanda                   | RW   | RWA  | Western
 Cyangugu           | Cyangugu           |     -2.4796 |       28.9 |       19900 | Rwanda                   | RW   | RWA  | Western
 Byumba             | Byumba             |    -1.57956 |      30.06 |       70593 | Rwanda                   | RW   | RWA  | Northern
 Ruhengeri          | Ruhengeri          |    -1.49961 |      29.63 |       86685 | Rwanda                   | RW   | RWA  | Northern
 Kigali             | Kigali             |    -1.95359 |    30.0605 |      802630 | Rwanda                   | RW   | RWA  | Kigali City
 Santo Antonio      | Santo Antonio      |       1.645 |      7.412 |        1156 | Sao Tome and Principe    | ST   | STP  | 
 Sao Tome           | Sao Tome           |    0.333402 |    6.73333 |     72192.5 | Sao Tome and Principe    | ST   | STP  | 
 Fatick             | Fatick             |      14.344 |    -16.416 |       24243 | Senegal                  | SN   | SEN  | Fatick
 Diourbel           | Diourbel           |     14.6604 |     -16.24 |      148024 | Senegal                  | SN   | SEN  | Diourbel
 Louga              | Louga              |     15.6104 |     -16.25 |       85075 | Senegal                  | SN   | SEN  | Louga
 Thies              | Thies              |     14.8104 |     -16.93 |      293001 | Senegal                  | SN   | SEN  | Thiès
 Kolda              | Kolda              |     12.9104 |     -14.95 |       64038 | Senegal                  | SN   | SEN  | Kolda
 Tambacounda        | Tambacounda        |     13.7804 |     -13.68 |       89212 | Senegal                  | SN   | SEN  | Tambacounda
 Kedougou           | Kedougou           |     12.5604 |     -12.18 |       18074 | Senegal                  | SN   | SEN  | Tambacounda
 Ziguinchor         | Ziguinchor         |       12.59 |     -16.29 |      175747 | Senegal                  | SN   | SEN  | Ziguinchor
 Kaolack            | Kaolack            |       14.15 |      -16.1 |      277812 | Senegal                  | SN   | SEN  | Kaolack
 Kaedi              | Kaedi              |       16.15 |      -13.5 |       21656 | Senegal                  | SN   | SEN  | Matam
 Dakar              | Dakar              |     14.7158 |   -17.4731 |  2.5402e+06 | Senegal                  | SN   | SEN  | Dakar
 Victoria           | Victoria           |    -4.61663 |      55.45 |     28228.5 | Seychelles               | SC   | SYC  | 
 Makeni             | Makeni             |     8.88043 |     -12.05 |       83116 | Sierra Leone             | SL   | SLE  | Northern
 Koidu              | Koidu              |     8.44048 |     -10.85 |     45307.5 | Sierra Leone             | SL   | SLE  | Eastern
 Kenema             | Kenema             |     7.88041 |     -11.19 |      133918 | Sierra Leone             | SL   | SLE  | Eastern
 Bo                 | Bo                 |     7.97002 |     -11.74 |      170690 | Sierra Leone             | SL   | SLE  | Southern
 Freetown           | Freetown           |     8.47001 |   -13.2342 |      420384 | Sierra Leone             | SL   | SLE  | Western
 Hudur              | Xuddur             |      4.1833 |    43.8667 |        1639 | Somalia                  | SO   | SOM  | Bakool
 Garbahaarey        | Garbahaarey        |       3.327 |     42.227 |       12652 | Somalia                  | SO   | SOM  | Gedo
 Bu'aale            | Bu'aale            |      1.0833 |    42.5833 |        1490 | Somalia                  | SO   | SOM  | Jubbada Dhexe
 Dhuusa Mareeb      | Dhuusa Mareeb      |       5.742 |     46.508 |         447 | Somalia                  | SO   | SOM  | Galguduud
 Buurhakaba         | Buurhakaba         |     2.78372 |    44.0833 |     29529.5 | Somalia                  | SO   | SOM  | Bay
 Luuq               | Luuq               |     3.80048 |      42.55 |       33820 | Somalia                  | SO   | SOM  | Gedo
 Mandera            | Mandera            |     3.94044 |      41.86 |     44480.5 | Somalia                  | SO   | SOM  | Gedo
 Ferfer             | Ferfer             |     5.08541 |     45.165 |      5205.5 | Somalia                  | SO   | SOM  | Hiiraan
 Jawhar             | Jawhar             |       2.767 |    45.5166 |       86654 | Somalia                  | SO   | SOM  | Shabeellaha Dhexe
 Hurdiyo            | Hurdiyo            |      10.582 |    51.1233 |         176 | Somalia                  | SO   | SOM  | Bari
 Qardho             | Qardho             |     9.50041 |     49.166 |        1341 | Somalia                  | SO   | SOM  | Bari
 Caluula            | Caluula            |      11.967 |      50.75 |         513 | Somalia                  | SO   | SOM  | Bari
 Buur Gaabo         | Buur Gaabo         |    -1.20087 |     41.852 |        3096 | Somalia                  | SO   | SOM  | Jubbada Hoose
 Baydhabo           | Baydhabo           |     3.11998 |      43.65 |      128830 | Somalia                  | SO   | SOM  | Bay
 Marka              | Marka              |     1.77657 |    44.8533 |        1958 | Somalia                  | SO   | SOM  | Shabeellaha Hoose
 Mereeg             | Mereeg             |     3.76658 |       47.3 |         548 | Somalia                  | SO   | SOM  | Galguduud
 Beledweyne         | Beledweyne         |     4.73998 |       45.2 |     59177.5 | Somalia                  | SO   | SOM  | Hiiraan
 Boosaaso           | Boosaaso           |       11.28 |      49.18 |       46969 | Somalia                  | SO   | SOM  | Bari
 Bandarbeyla        | Bandarbeyla        |     9.48331 |    50.8167 |       13753 | Somalia                  | SO   | SOM  | Bari
 Gaalkacyo          | Gaalkacyo          |     6.76996 |      47.43 |     57350.5 | Somalia                  | SO   | SOM  | Mudug
 Eyl                | Eyl                |     7.98335 |    49.8333 |      9636.5 | Somalia                  | SO   | SOM  | Nugaal
 Garoowe            | Garoowe            |     8.39999 |       48.5 |        2568 | Somalia                  | SO   | SOM  | Nugaal
 Jamaame            | Jamaame            |   0.0721778 |    42.7506 |      156924 | Somalia                  | SO   | SOM  | Jubbada Hoose
 Kismaayo           | Kismaayo           |   -0.356633 |    42.5183 |      184902 | Somalia                  | SO   | SOM  | Jubbada Hoose
 Mogadishu          | Mogadishu          |     2.06668 |    45.3667 |      987694 | Somalia                  | SO   | SOM  | Banaadir
 Laascaanood        | Laascaanood        |      8.4333 |    47.3167 |       60100 | Somaliland               | SO   | SOL  | 
 Ceerigaabo         | Ceerigaabo         |     10.5833 |    47.3333 |      165000 | Somaliland               | SO   | SOL  | 
 Boorama            | Boorama            |     9.94041 |      43.18 |       67664 | Somaliland               | SO   | SOL  | 
 Burco              | Burco              |     9.52039 |      45.54 |      102932 | Somaliland               | SO   | SOL  | 
 Maydh              | Maydh              |     10.9801 |    47.0975 |       30000 | Somaliland               | SO   | SOL  | 
 Berbera            | Berbera            |     10.4356 |    45.0164 |      178407 | Somaliland               | SO   | SOL  | 
 Hargeysa           | Hargeysa           |     9.56002 |    44.0653 |      362447 | Somaliland               | SO   | SOL  | 
 Qacha's Nek        | Qacha's Nek        |    -30.1173 |     28.702 |       25573 | South Africa             | ZA   | ZAF  | Eastern Cape
 Colesberg          | Colesberg          |    -30.7195 |       25.1 |        7491 | South Africa             | ZA   | ZAF  | Northern Cape
 Poffader           | Poffader           |    -29.1329 |    19.3834 |        4220 | South Africa             | ZA   | ZAF  | Northern Cape
 Carnarvon          | Carnarvon          |    -30.9496 |    22.1333 |        5785 | South Africa             | ZA   | ZAF  | Northern Cape
 Prieska            | Prieska            |    -29.6595 |      22.73 |      7640.5 | South Africa             | ZA   | ZAF  | Northern Cape
 Kuruman            | Kuruman            |    -27.4496 |      23.42 |      9549.5 | South Africa             | ZA   | ZAF  | Northern Cape
 Knysna             | Knysna             |    -34.0329 |    23.0333 |       33887 | South Africa             | ZA   | ZAF  | Western Cape
 Swellendam         | Swellendam         |    -34.0196 |      20.43 |        8954 | South Africa             | ZA   | ZAF  | Western Cape
 Hermanus           | Hermanus           |    -34.4096 |    19.2299 |     16274.5 | South Africa             | ZA   | ZAF  | Western Cape
 Paarl              | Paarl              |    -33.6996 |      18.96 |      159792 | South Africa             | ZA   | ZAF  | Western Cape
 Bredasdorp         | Bredasdorp         |    -34.5295 |      20.03 |        8453 | South Africa             | ZA   | ZAF  | Western Cape
 Beaufort West      | Beaufort West      |    -32.3496 |      22.57 |     28070.5 | South Africa             | ZA   | ZAF  | Western Cape
 Brits              | Brits              |    -25.6296 |      27.78 |       81222 | South Africa             | ZA   | ZAF  | North West
 Bloemhof           | Bloemhof           |    -27.6496 |      25.59 |     10662.5 | South Africa             | ZA   | ZAF  | North West
 Potchefstroom      | Potchefstroom      |    -26.6996 |       27.1 |      103742 | South Africa             | ZA   | ZAF  | North West
 Brandfort          | Brandfort          |    -28.6996 |      26.47 |        6190 | South Africa             | ZA   | ZAF  | Orange Free State
 Bethlehem          | Bethlehem          |    -28.2196 |       28.3 |       66373 | South Africa             | ZA   | ZAF  | Orange Free State
 Springs            | Springs            |    -26.2696 |      28.43 |      211238 | South Africa             | ZA   | ZAF  | Gauteng
 Volksrust          | Volksrust          |    -27.3596 |      29.89 |     25394.5 | South Africa             | ZA   | ZAF  | Mpumalanga
 Mbombela           | Nelspruit          |    -25.4696 |      30.98 |      184839 | South Africa             | ZA   | ZAF  | Mpumalanga
 Komatipoort        | Komatipoort        |    -25.4096 |      31.94 |     10333.5 | South Africa             | ZA   | ZAF  | Mpumalanga
 Middelburg         | Middelburg         |    -25.7596 |      29.47 |      124248 | South Africa             | ZA   | ZAF  | Mpumalanga
 Bethal             | Bethal             |    -26.4696 |      29.45 |     96184.5 | South Africa             | ZA   | ZAF  | Mpumalanga
 Standerton         | Standerton         |    -26.9395 |      29.24 |       46057 | South Africa             | ZA   | ZAF  | Mpumalanga
 Lebowakgomo        | Lebowakgomo        |    -24.1996 |       29.5 |     16852.5 | South Africa             | ZA   | ZAF  | Limpopo
 Tzaneen            | Tzaneen            |    -23.8195 |      30.17 |     42099.5 | South Africa             | ZA   | ZAF  | Limpopo
 Ulundi             | Ulundi             |    -28.3296 |      31.41 |       13167 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Ladysmith          | Ladysmith          |    -28.5495 |      29.78 |       47375 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Port Shepstone     | Port Shepstone     |    -30.7195 |      30.46 |     37325.5 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Ubomba             | Ubomba             |    -27.5661 |    32.0833 |         564 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Cradock            | Cradock            |    -32.1995 |      25.61 |       32898 | South Africa             | ZA   | ZAF  | Eastern Cape
 Uitenhage          | Uitenhage          |    -33.7596 |      25.39 |      217839 | South Africa             | ZA   | ZAF  | Eastern Cape
 Port Alfred        | Port Alfred        |    -33.5995 |      26.88 |        9377 | South Africa             | ZA   | ZAF  | Eastern Cape
 Grahamstown        | Grahamstown        |    -33.2996 |      26.52 |     70315.5 | South Africa             | ZA   | ZAF  | Eastern Cape
 Port St. Johns     | Port St. Johns     |    -31.6279 |    29.5283 |        5939 | South Africa             | ZA   | ZAF  | Eastern Cape
 Aliwal North       | Aliwal North       |    -30.6896 |      26.71 |       26423 | South Africa             | ZA   | ZAF  | Eastern Cape
 Queenstown         | Queenstown         |    -31.8996 |      26.88 |     96274.5 | South Africa             | ZA   | ZAF  | Eastern Cape
 Benoni             | Benoni             |    -26.1496 |    28.3299 | 1.79567e+06 | South Africa             | ZA   | ZAF  | Gauteng
 Vereeniging        | Vereeniging        |    -26.6496 |      27.96 |      774340 | South Africa             | ZA   | ZAF  | Gauteng
 De Aar             | De Aar             |      -30.65 |         24 |     18669.5 | South Africa             | ZA   | ZAF  | Northern Cape
 Alexander Bay      | Alexander Bay      |    -28.6083 |    16.5033 |        1476 | South Africa             | ZA   | ZAF  | Northern Cape
 Kimberley          | Kimberley          |    -28.7468 |      24.77 |      153676 | South Africa             | ZA   | ZAF  | Northern Cape
 Oudtshoorn         | Oudtshoorn         |      -33.58 |      22.19 |       62353 | South Africa             | ZA   | ZAF  | Western Cape
 Vanhynsdorp        | Vanhynsdorp        |    -31.6166 |    18.7333 |        3331 | South Africa             | ZA   | ZAF  | Western Cape
 Saldanha           | Saldanha           |      -33.01 |      17.93 |       37469 | South Africa             | ZA   | ZAF  | Western Cape
 Mossel Bay         | Mossel Bay         |      -34.17 |      22.13 |       16743 | South Africa             | ZA   | ZAF  | Western Cape
 Vryburg            | Vryburg            |      -26.96 |      24.73 |       31589 | South Africa             | ZA   | ZAF  | North West
 Rustenburg         | Rustenburg         |      -25.65 |      27.24 |      145020 | South Africa             | ZA   | ZAF  | North West
 Mmabatho           | Mmabatho           |      -25.83 |      25.61 |       90591 | South Africa             | ZA   | ZAF  | North West
 Klerksdorp         | Klerksdorp         |      -26.88 |      26.62 |      163362 | South Africa             | ZA   | ZAF  | North West
 Kroonstad          | Kroonstad          |      -27.66 |      27.21 |     88413.5 | South Africa             | ZA   | ZAF  | Orange Free State
 Polokwane          | Polokwane          |      -23.89 |      29.45 |      171897 | South Africa             | ZA   | ZAF  | Limpopo
 Thohoyandou        | Thohoyandou        |      -22.95 |      30.48 |      156876 | South Africa             | ZA   | ZAF  | Limpopo
 Musina             | Musina             |      -22.34 |      30.03 |       11848 | South Africa             | ZA   | ZAF  | Limpopo
 Vryheid            | Vryheid            |      -27.76 |      30.79 |      108364 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Pietermaritzburg   | Pietermaritzburg   |      -29.61 |      30.39 |      620898 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Umtata             | Umtata             |      -31.58 |      28.79 |      108218 | South Africa             | ZA   | ZAF  | Eastern Cape
 Graaff Reinet      | Graaff Reinet      |       -32.3 |      24.54 |     32958.5 | South Africa             | ZA   | ZAF  | Eastern Cape
 Bhisho             | Bhisho             |      -32.87 |      27.39 |      149142 | South Africa             | ZA   | ZAF  | Eastern Cape
 Springbok          | Springbok          |    -29.6667 |    17.8833 |      6623.5 | South Africa             | ZA   | ZAF  | Northern Cape
 Upington           | Upington           |      -28.46 |      21.23 |       62086 | South Africa             | ZA   | ZAF  | Northern Cape
 Worcester          | Worcester          |      -33.64 |    19.4399 |      109200 | South Africa             | ZA   | ZAF  | Western Cape
 George             | George             |      -33.95 |      22.45 |      143915 | South Africa             | ZA   | ZAF  | Western Cape
 Welkom             | Welkom             |      -27.97 |      26.73 |      279012 | South Africa             | ZA   | ZAF  | Orange Free State
 East London        | East London        |      -32.97 |      27.87 |      338627 | South Africa             | ZA   | ZAF  | Eastern Cape
 Middelburg         | Middelburg         |       -31.5 |      25.01 |       10964 | South Africa             | ZA   | ZAF  | Eastern Cape
 Bloemfontein       | Bloemfontein       |      -29.12 |    26.2299 |      459866 | South Africa             | ZA   | ZAF  | Orange Free State
 Pretoria           | Pretoria           |    -25.7069 |    28.2294 |   1.338e+06 | South Africa             | ZA   | ZAF  | Gauteng
 Port Elizabeth     | Port Elizabeth     |      -33.97 |       25.6 |      830527 | South Africa             | ZA   | ZAF  | Eastern Cape
 Durban             | Durban             |     -29.865 |      30.98 |   2.729e+06 | South Africa             | ZA   | ZAF  | KwaZulu-Natal
 Johannesburg       | Johannesburg       |      -26.17 |      28.03 | 2.73073e+06 | South Africa             | ZA   | ZAF  | Gauteng
 Cape Town          | Cape Town          |      -33.92 |     18.435 | 2.82393e+06 | South Africa             | ZA   | ZAF  | Western Cape
 Ad Damazin         | Ed Damazin         |     11.7704 |      34.35 |      114030 | Sudan                    | SD   | SDN  | Blue Nile
 Haiya              | Haiya              |     18.3362 |    36.3842 |       17409 | Sudan                    | SD   | SDN  | Red Sea
 El Manaqil         | El Manaqil         |     14.2504 |      32.98 |      140062 | Sudan                    | SD   | SDN  | Gezira
 Shendi             | Shendi             |     16.6805 |      33.42 |      120090 | Sudan                    | SD   | SDN  | River Nile
 Berber             | Berber             |      18.017 |    33.9833 |     35975.5 | Sudan                    | SD   | SDN  | River Nile
 Kerma              | Kerma              |     19.6337 |    30.4166 |        3928 | Sudan                    | SD   | SDN  | Northern
 Ed Dueim           | Ed Dueim           |     13.9904 |       32.3 |     54825.5 | Sudan                    | SD   | SDN  | White Nile
 Umm Ruwaba         | Umm Ruwaba         |     12.9104 |       31.2 |     35999.5 | Sudan                    | SD   | SDN  | North Kurdufan
 En Nuhud           | En Nuhud           |     12.6904 |      28.42 |     84623.5 | Sudan                    | SD   | SDN  | South Kordofan
 Muglad             | Muglad             |     11.0337 |    27.7333 |       17344 | Sudan                    | SD   | SDN  | South Kordofan
 Tokar              | Tokar              |     18.4333 |    37.7333 |       47726 | Sudan                    | SD   | SDN  | Red Sea
 Medani             | Medani             |        14.4 |      33.52 |      308540 | Sudan                    | SD   | SDN  | Gezira
 Gedaref            | Gedaref            |       14.04 |      35.38 |      201282 | Sudan                    | SD   | SDN  | Gedarif
 EdDamer            | EdDamer            |       17.59 |      33.96 |     94398.5 | Sudan                    | SD   | SDN  | River Nile
 Atbara             | Atbara             |       17.71 |      33.98 |      138271 | Sudan                    | SD   | SDN  | River Nile
 Wadi Halfa         | Wadi Halfa         |        21.8 |      31.35 |       17121 | Sudan                    | SD   | SDN  | Northern
 Merowe             | Merowe             |     18.4833 |    31.8167 |        7405 | Sudan                    | SD   | SDN  | Northern
 Kosti              | Kosti              |       13.17 |      32.66 |      274463 | Sudan                    | SD   | SDN  | White Nile
 Sennar             | Sennar             |       13.55 |       33.6 |      103308 | Sudan                    | SD   | SDN  | Sennar
 El Fasher          | El Fasher          |       13.63 |      25.35 |      220906 | Sudan                    | SD   | SDN  | Northern Darfur
 Kadugli            | Kadugli            |       11.01 |       29.7 |      132298 | Sudan                    | SD   | SDN  | South Kordufan
 Babanusa           | Babanusa           |     11.3334 |       27.8 |       19700 | Sudan                    | SD   | SDN  | South Kordofan
 Geneina            | Geneina            |       13.45 |      22.44 |      161146 | Sudan                    | SD   | SDN  | West Darfur
 Omdurman           | Omdurman           |     15.6167 |      32.48 | 2.28943e+06 | Sudan                    | SD   | SDN  | Khartoum
 El Obeid           | El Obeid           |     13.1833 |    30.2167 |      331368 | Sudan                    | SD   | SDN  | North Kurdufan
 Port Sudan         | Port Sudan         |     19.6158 |    37.2164 |      489725 | Sudan                    | SD   | SDN  | Red Sea
 Niyala             | Niyala             |       12.06 |      24.89 |      392373 | Sudan                    | SD   | SDN  | South Darfur
 Dongola            | Dongola            |     19.1666 |    30.4833 |       26404 | Sudan                    | SD   | SDN  | Northern
 Kassala            | Kassala            |       15.46 |      36.39 |      370499 | Sudan                    | SD   | SDN  | Kassala
 Khartoum           | Khartoum           |     15.5881 |    32.5342 | 3.36432e+06 | Sudan                    | SD   | SDN  | Khartoum
 Piggs Peak         | Piggs Peak         |     -25.961 |     31.247 |        5750 | Swaziland                | SZ   | SWZ  | Hhohho
 Siteki             | Siteki             |     -26.455 |     31.952 |        6152 | Swaziland                | SZ   | SWZ  | Lubombo
 Manzini            | Manzini            |     -26.495 |     31.388 |      110537 | Swaziland                | SZ   | SWZ  | Manzini
 Hlatikulu          | Hlatikulu          |         -27 |    31.4167 |        2748 | Swaziland                | SZ   | SWZ  | Shiselweni
 Golela             | Golela             |    -27.2962 |       31.9 |        3695 | Swaziland                | SZ   | SWZ  | Shiselweni
 Lobamba            | Lobamba            |    -26.4667 |       31.2 |      7169.5 | Swaziland                | SZ   | SWZ  | Manzini
 Mbabane            | Mbabane            |    -26.3167 |    31.1333 |       83178 | Swaziland                | SZ   | SWZ  | Hhohho
 Wete               | Wete               |    -5.06346 |    39.7258 |       26450 | Tanzania                 | TZ   | TZA  | Kaskazini-Pemba
 Kibaha             | Kibaha             |     -6.7667 |    38.9167 |       23651 | Tanzania                 | TZ   | TZA  | Pwani
 Mkokotoni          | Mkokotoni          |      -5.879 |      39.26 |        2572 | Tanzania                 | TZ   | TZA  | Kaskazini-Unguja
 Tunduma            | Tunduma            |    -9.28462 |    32.7749 |       27543 | Tanzania                 | TZ   | TZA  | Mbeya
 Tukuyu             | Tukuyu             |    -9.24958 |      33.64 |       77984 | Tanzania                 | TZ   | TZA  | Mbeya
 Sumbawanga         | Sumbawanga         |    -7.95958 |      31.62 |     76546.5 | Tanzania                 | TZ   | TZA  | Rukwa
 Mpanda             | Mpanda             |    -6.35957 |      31.05 |       73338 | Tanzania                 | TZ   | TZA  | Rukwa
 Kipili             | Kipili             |    -7.43289 |       30.6 |        1533 | Tanzania                 | TZ   | TZA  | Rukwa
 Karema             | Karema             |    -6.81619 |    30.4333 |     14507.5 | Tanzania                 | TZ   | TZA  | Rukwa
 Geita              | Geita              |     -2.8662 |    32.1666 |        1536 | Tanzania                 | TZ   | TZA  | Mwanza
 Nyahanga           | Nyahanga           |    -2.38292 |      33.55 |       16092 | Tanzania                 | TZ   | TZA  | Mwanza
 Kahama             | Kahama             |    -3.81957 |      32.58 |       35279 | Tanzania                 | TZ   | TZA  | Shinyanga
 Shinyanga          | Shinyanga          |    -3.65958 |      33.42 |       93794 | Tanzania                 | TZ   | TZA  | Shinyanga
 Nzega              | Nzega              |    -4.20963 |      33.18 |       18325 | Tanzania                 | TZ   | TZA  | Tabora
 Sikonge            | Sikonge            |    -5.62954 |      32.77 |     14549.5 | Tanzania                 | TZ   | TZA  | Tabora
 Biharamulo         | Biharamulo         |    -2.62962 |      31.31 |     21817.5 | Tanzania                 | TZ   | TZA  | Kagera
 Bukoba             | Bukoba             |    -1.31962 |       31.8 |       85566 | Tanzania                 | TZ   | TZA  | Kagera
 Ngara              | Ngara              |    -2.46953 |      30.65 |       10744 | Tanzania                 | TZ   | TZA  | Kagera
 Kakonko            | Kakonko            |    -3.27961 |      30.96 |       16319 | Tanzania                 | TZ   | TZA  | Kigoma
 Kasulu             | Kasulu             |    -4.57958 |       30.1 |     31218.5 | Tanzania                 | TZ   | TZA  | Kigoma
 Kanyato            | Kanyato            |    -4.45654 |    30.2614 |         232 | Tanzania                 | TZ   | TZA  | Kigoma
 Uvinza             | Uvinza             |     -5.1196 |      30.39 |       52500 | Tanzania                 | TZ   | TZA  | Kigoma
 Kigoma             | Kigoma             |    -4.87961 |      29.61 |      164268 | Tanzania                 | TZ   | TZA  | Kigoma
 Mikumi             | Mikumi             |    -7.39961 |      36.98 |       12471 | Tanzania                 | TZ   | TZA  | Morogoro
 Ifakara            | Ifakara            |     -8.1296 |      36.68 |     27929.5 | Tanzania                 | TZ   | TZA  | Morogoro
 Kilosa             | Kilosa             |     -6.8396 |      36.99 |       52558 | Tanzania                 | TZ   | TZA  | Morogoro
 Chake Chake        | Chake Chake        |    -5.23954 |      39.77 |     35822.5 | Tanzania                 | TZ   | TZA  | Kusini-Pemba
 Kibiti             | Kibiti             |    -7.72962 |      38.95 |       15553 | Tanzania                 | TZ   | TZA  | Pwani
 Bagamoyo           | Bagamoyo           |    -6.43962 |      38.89 |     41609.5 | Tanzania                 | TZ   | TZA  | Pwani
 Kilindoni          | Kilindoni          |    -7.91628 |      39.65 |      7994.5 | Tanzania                 | TZ   | TZA  | Pwani
 Mpwapwa            | Mpwapwa            |     -6.3496 |      36.48 |     10093.5 | Tanzania                 | TZ   | TZA  | Dodoma
 Njombe             | Njombe             |    -9.32963 |      34.77 |     42017.5 | Tanzania                 | TZ   | TZA  | Iringa
 Iringa             | Iringa             |    -7.76962 |      35.69 |      103290 | Tanzania                 | TZ   | TZA  | Iringa
 Masasi             | Masasi             |    -10.7296 |    38.7999 |     31549.5 | Tanzania                 | TZ   | TZA  | Mtwara
 Mtwara             | Mtwara             |    -10.2696 |      40.19 |       91674 | Tanzania                 | TZ   | TZA  | Mtwara
 Tunduru            | Tunduru            |    -11.0896 |      37.37 |         600 | Tanzania                 | TZ   | TZA  | Ruvuma
 Mbamba Bay         | Mbamba Bay         |    -11.2829 |    34.7666 |        8997 | Tanzania                 | TZ   | TZA  | Ruvuma
 Manyoni            | Manyoni            |    -5.77961 |       34.9 |         310 | Tanzania                 | TZ   | TZA  | Singida
 Itigi              | Itigi              |    -5.69961 |      34.48 |       11534 | Tanzania                 | TZ   | TZA  | Singida
 Singida            | Singida            |    -4.81962 |      34.74 |     47749.5 | Tanzania                 | TZ   | TZA  | Singida
 Ngorongoro         | Ngorongoro         |    -3.24958 |      35.52 |       10836 | Tanzania                 | TZ   | TZA  | Arusha
 Oldeani            | Oldeani            |    -3.34963 |      35.55 |      7300.5 | Tanzania                 | TZ   | TZA  | Arusha
 Mbulu              | Mbulu              |     -3.8496 |      35.53 |       10421 | Tanzania                 | TZ   | TZA  | Arusha
 Babati             | Babati             |    -4.21955 |      35.75 |       19117 | Tanzania                 | TZ   | TZA  | Arusha
 Same               | Same               |    -4.06958 |      37.72 |        9768 | Tanzania                 | TZ   | TZA  | Kilimanjaro
 Moshi              | Moshi              |     -3.3396 |      37.34 |      463873 | Tanzania                 | TZ   | TZA  | Kilimanjaro
 Musoma             | Musoma             |    -1.48959 |       33.8 |      127138 | Tanzania                 | TZ   | TZA  | Mara
 Korogwe            | Korogwe            |    -5.08957 |      38.54 |       47000 | Tanzania                 | TZ   | TZA  | Tanga
 Tabora             | Tabora             |    -5.02002 |       32.8 |      145894 | Tanzania                 | TZ   | TZA  | Tabora
 Lindi              | Lindi              |         -10 |       39.7 |     27953.5 | Tanzania                 | TZ   | TZA  | Lindi
 Songea             | Songea             |      -10.68 |      35.65 |      120923 | Tanzania                 | TZ   | TZA  | Ruvuma
 Tanga              | Tanga              |    -5.07004 |      39.09 |      217156 | Tanzania                 | TZ   | TZA  | Tanga
 Mwanza             | Mwanza             |    -2.52002 |      32.93 |      465372 | Tanzania                 | TZ   | TZA  | Mwanza
 Morogoro           | Morogoro           |    -6.82001 |      37.66 |      242718 | Tanzania                 | TZ   | TZA  | Morogoro
 Dodoma             | Dodoma             |    -6.18331 |      35.75 |      199405 | Tanzania                 | TZ   | TZA  | Dodoma
 Arusha             | Arusha             |    -3.36002 |      36.67 |      330605 | Tanzania                 | TZ   | TZA  | Arusha
 Mbeya              | Mbeya              |    -8.89001 |      33.43 |      261856 | Tanzania                 | TZ   | TZA  | Mbeya
 Zanzibar           | Zanzibar           |       -6.16 |       39.2 |      388439 | Tanzania                 | TZ   | TZA  | Zanzibar West
 Dar es Salaam      | Dar es Salaam      |    -6.80001 |    39.2683 | 2.81433e+06 | Tanzania                 | TZ   | TZA  | Dar-Es-Salaam
 Georgetown         | Georgetown         |      13.551 |    -14.767 |        3584 | The Gambia               | GM   | GMB  | Maccarthy Island
 Basse Santa Su     | Basse Santa Su     |       13.31 |    -14.223 |       14380 | The Gambia               | GM   | GMB  | Upper River
 Kerewan            | Kerewan            |      13.494 |    -16.095 |        2751 | The Gambia               | GM   | GMB  | Lower River
 Mansa Konko        | Mansa Konko        |     13.3773 |   -15.6786 |       18672 | The Gambia               | GM   | GMB  | Lower River
 Bansang            | Bansang            |     13.4336 |     -14.65 |      4646.5 | The Gambia               | GM   | GMB  | Maccarthy Island
 Brikama            | Brikama            |     13.2804 |     -16.66 |      136418 | The Gambia               | GM   | GMB  | Banjul
 Banjul             | Banjul             |     13.4539 |   -16.5917 |     38841.5 | The Gambia               | GM   | GMB  | Banjul
 Bassar             | Bassar             |       9.261 |   0.789004 |       61845 | Togo                     | TG   | TGO  | Kara
 Sotouboua          | Sotouboua          |       8.557 |   0.984996 |       21054 | Togo                     | TG   | TGO  | Centre
 Kpalime            | Kpalime            |     6.90039 |   0.630028 |     98226.5 | Togo                     | TG   | TGO  | Plateaux
 Sokode             | Sokode             |     8.99047 |       1.15 |     99725.5 | Togo                     | TG   | TGO  | Centre
 Mango              | Mango              |     10.3596 |   0.470813 |       40187 | Togo                     | TG   | TGO  | Savanes
 Atakpame           | Atakpame           |     7.53004 |    1.12002 |       74757 | Togo                     | TG   | TGO  | Plateaux
 Lome               | Lome               |     6.13194 |    1.22276 | 1.10085e+06 | Togo                     | TG   | TGO  | Maritime
 Medenine           | Medemine           |        33.4 |    10.4167 |       61705 | Tunisia                  | TN   | TUN  | Médenine
 Kebili             | Kebili             |       33.69 |      8.971 |       19875 | Tunisia                  | TN   | TUN  | Kebili
 Tataouine          | Tataouine          |          33 |    10.4667 |       62577 | Tunisia                  | TN   | TUN  | Tataouine
 L'Ariana           | L'Ariana           |     36.8667 |       10.2 |       97687 | Tunisia                  | TN   | TUN  | Manubah
 Jendouba           | Jendouba           |        36.5 |       8.75 |       51408 | Tunisia                  | TN   | TUN  | Jendouba
 Kasserine          | Kasserine          |     35.2167 |     8.7167 |       76243 | Tunisia                  | TN   | TUN  | Kassérine
 Sdid Bouzid        | Sdid Bouzid        |     35.0167 |        9.5 |       42098 | Tunisia                  | TN   | TUN  | Sidi Bou Zid
 Siliana            | Siliana            |     36.0833 |     9.3833 |       26960 | Tunisia                  | TN   | TUN  | Siliana
 Mahdia             | Mahdia             |     35.4839 |    11.0409 |       45977 | Tunisia                  | TN   | TUN  | Mahdia
 Monastir           | Monasir            |     35.7307 |    10.7673 |       56473 | Tunisia                  | TN   | TUN  | Monastir
 Zaghouan           | Zaghouan           |        36.4 |     10.147 |       16911 | Tunisia                  | TN   | TUN  | Zaghouan
 Ben Gardane        | Ben Gardane        |     33.1404 |      11.22 |     16603.5 | Tunisia                  | TN   | TUN  | Médenine
 Zarzis             | Zarzis             |     33.5104 |       11.1 |      119238 | Tunisia                  | TN   | TUN  | Médenine
 Dehibat            | Dehibat            |      32.017 |       10.7 |        3525 | Tunisia                  | TN   | TUN  | Tataouine
 Tozeur             | Tozeur             |     33.9304 |    8.12998 |     37223.5 | Tunisia                  | TN   | TUN  | Tozeur
 Beja               | Beja               |     36.7304 |    9.19002 |       58400 | Tunisia                  | TN   | TUN  | Béja
 Bizerte            | Bizerte            |     37.2904 |    9.85499 |      127556 | Tunisia                  | TN   | TUN  | Bizerte
 Nabeul             | Nabeul             |     36.4603 |      10.73 |      115149 | Tunisia                  | TN   | TUN  | Nabeul
 El Kef             | El Kef             |     36.1826 |    8.71476 |     42303.5 | Tunisia                  | TN   | TUN  | Le Kef
 Qasserine          | Qasserine          |     35.1804 |    8.82999 |     80072.5 | Tunisia                  | TN   | TUN  | Kassérine
 Gabes              | Gabes              |     33.9004 |       10.1 |      164796 | Tunisia                  | TN   | TUN  | Gabès
 Gafsa              | Gafsa              |     34.4204 |    8.78002 |      104018 | Tunisia                  | TN   | TUN  | Gafsa
 Qairouan           | Qairouan           |     35.6804 |       10.1 |      132158 | Tunisia                  | TN   | TUN  | Kairouan
 Sfax               | Sfax               |       34.75 |      10.72 |      365164 | Tunisia                  | TN   | TUN  | Sfax
 Sousse             | Sousse             |       35.83 |     10.625 |      245564 | Tunisia                  | TN   | TUN  | Sousse
 Tunis              | Tunis              |     36.8028 |    10.1797 | 1.57048e+06 | Tunisia                  | TN   | TUN  | Tunis
 Kalangala          | Kalangala          |   -0.308889 |     32.225 |        5200 | Uganda                   | UG   | UGA  | Kalangala
 Kumi               | Kumi               |     1.46083 |    33.9361 |       13000 | Uganda                   | UG   | UGA  | Kumi
 Kaberamaido        | Kaberamaido        |     1.73889 |    33.1594 |        3400 | Uganda                   | UG   | UGA  | Kaberamaido
 Kayunga            | Kayunga            |      0.7025 |    32.8886 |       21704 | Uganda                   | UG   | UGA  | Kayunga
 Iganga             | Iganga             |    0.609167 |    33.4686 |       45024 | Uganda                   | UG   | UGA  | Iganga
 Kamuli             | Kamuli             |    0.947222 |    33.1197 |       12764 | Uganda                   | UG   | UGA  | Kamuli
 Pallisa            | Pallisa            |       1.145 |    33.7094 |       30745 | Uganda                   | UG   | UGA  | Pallisa
 Mpigi              | Mpigi              |       0.225 |    32.3136 |       11082 | Uganda                   | UG   | UGA  | Mpigi
 Adjumani           | Adjumani           |     3.36139 |    31.8097 |       34700 | Uganda                   | UG   | UGA  | Adjumani
 Nebbi              | Nebbi              |     2.47583 |    31.1025 |       30354 | Uganda                   | UG   | UGA  | Nebbi
 Kiboga             | Kiboga             |    0.916111 |    31.7742 |       14512 | Uganda                   | UG   | UGA  | Kiboga
 Nakasongola        | Nakasongola        |     1.30889 |    32.4564 |        6921 | Uganda                   | UG   | UGA  | Nakasongola
 Bombo              | Bombo              |    0.583299 |    32.5333 |       48000 | Uganda                   | UG   | UGA  | Bamunanika
 Masindi            | Masindi            |     1.67444 |     31.715 |       31486 | Uganda                   | UG   | UGA  | Masindi
 Fort Portal        | Fort Portal        |    0.671004 |     30.275 |       42670 | Uganda                   | UG   | UGA  | Kabarole
 Kibale             | Kibale             |         0.8 |    31.0667 |        5200 | Uganda                   | UG   | UGA  | Kibale
 Sironko            | Sironko            |        1.25 |       34.3 |       14100 | Uganda                   | UG   | UGA  | Budadiri
 Busia              | Busia              |    0.454444 |    34.0758 |       47100 | Uganda                   | UG   | UGA  | Busia
 Katakwi            | Katakwi            |     1.89111 |    33.9661 |        8400 | Uganda                   | UG   | UGA  | Usuk
 Ntungamo           | Ntungamo           |   -0.879444 |    30.2642 |       16400 | Uganda                   | UG   | UGA  | Ntungamo
 Kisoro             | Kisoro             |    -1.35389 |    29.6983 |       12900 | Uganda                   | UG   | UGA  | Kisoro
 Jinja              | Jinja              |    0.440424 |    33.1999 |      195660 | Uganda                   | UG   | UGA  | Jinja
 Soroti             | Soroti             |      1.7104 |       33.6 |        1038 | Uganda                   | UG   | UGA  | Soroti
 Arua               | Arua               |     3.02037 |       30.9 |      154700 | Uganda                   | UG   | UGA  | Arua Municipality
 Pakwach            | Pakwach            |     2.47038 |      31.48 |       17541 | Uganda                   | UG   | UGA  | Nebbi
 Moyo               | Moyo               |     3.65041 |      31.72 |       22434 | Uganda                   | UG   | UGA  | Moyo
 Entebbe            | Entebbe            |   0.0603955 |      32.46 |      127414 | Uganda                   | UG   | UGA  | Wakiso
 Mubende            | Mubende            |    0.590441 |      31.37 |        9556 | Uganda                   | UG   | UGA  | Mubende
 Mityana            | Mityana            |    0.400426 |      32.05 |     37420.5 | Uganda                   | UG   | UGA  | Busujju
 Kitgum             | Kitgum             |      3.3004 |      32.87 |     32785.5 | Uganda                   | UG   | UGA  | Kitgum
 Lira               | Lira               |     2.26039 |      32.89 |      127384 | Uganda                   | UG   | UGA  | Lira
 Masindi-Port       | Masindi-Port       |      1.7004 |    32.0699 |      8073.5 | Uganda                   | UG   | UGA  | Masindi
 Mbale              | Mbale              |     1.09041 |      34.17 |      247084 | Uganda                   | UG   | UGA  | Bungokho
 Tororo             | Tororo             |    0.710382 |      34.17 |       96850 | Uganda                   | UG   | UGA  | Tororo
 Kaabong            | Kaabong            |     3.52039 |      34.12 |        1137 | Uganda                   | UG   | UGA  | Kaabong
 Moroto             | Moroto             |     2.54035 |      34.64 |         371 | Uganda                   | UG   | UGA  | Moroto
 Masaka             | Masaka             |   -0.329607 |      31.73 |       65373 | Uganda                   | UG   | UGA  | Masaka
 Katwe              | Katwe              |   -0.129619 |      29.92 |        1957 | Uganda                   | UG   | UGA  | Kasese
 Mbarara            | Mbarara            |   -0.599616 |      30.65 |       83700 | Uganda                   | UG   | UGA  | Kashari
 Kabale             | Kabale             |     -1.2496 |      29.98 |       44600 | Uganda                   | UG   | UGA  | Kabale
 Kasese             | Kasese             |    0.232478 |    29.9883 |       67269 | Uganda                   | UG   | UGA  | Kasese
 Gulu               | Gulu               |        2.78 |      32.28 |      144430 | Uganda                   | UG   | UGA  | Aswa
 Kampala            | Kampala            |    0.316659 |    32.5833 | 1.38659e+06 | Uganda                   | UG   | UGA  | Kampala
 Bir Lehlou         | Bir Lehlou         |     26.1192 |   -9.65252 |         350 | Western Sahara           | EH   | SAH  | 
 Kawambwa           | Kawambwa           |    -9.77952 |      29.08 |       20355 | Zambia                   | ZM   | ZMB  | Luapula
 Nchelenge          | Nchelenge          |    -9.34957 |      28.73 |       15904 | Zambia                   | ZM   | ZMB  | Luapula
 Chinsali           | Chinsali           |    -10.5496 |      32.06 |      7482.5 | Zambia                   | ZM   | ZMB  | Northern
 Kasama             | Kasama             |    -10.1996 |    31.1799 |      156500 | Zambia                   | ZM   | ZMB  | Northern
 Kapiri Mposhi      | Kapiri Mposhi      |    -13.9696 |      28.66 |       30078 | Zambia                   | ZM   | ZMB  | Central
 Mumbwa             | Mumbwa             |    -14.9796 |      27.07 |     14408.5 | Zambia                   | ZM   | ZMB  | Central
 Chingola           | Chingola           |    -12.5396 |      27.85 |      165290 | Zambia                   | ZM   | ZMB  | Copperbelt
 Chililabombwe      | Chililabombwe      |    -12.3696 |      27.82 |       69698 | Zambia                   | ZM   | ZMB  | Copperbelt
 Nyimba             | Nyimba             |    -14.5495 |      30.81 |         814 | Zambia                   | ZM   | ZMB  | Eastern
 Lundazi            | Lundazi            |    -12.2895 |      33.17 |      9540.5 | Zambia                   | ZM   | ZMB  | Eastern
 Chipata            | Chipata            |    -13.6296 |      32.64 |       82455 | Zambia                   | ZM   | ZMB  | Eastern
 Mwinilunga         | Mwinilunga         |    -11.7396 |      24.44 |      8336.5 | Zambia                   | ZM   | ZMB  | North-Western
 Kasempa            | Kasempa            |    -13.4596 |      25.82 |        5622 | Zambia                   | ZM   | ZMB  | North-Western
 Solwezi            | Solwezi            |    -12.1796 |       26.4 |     51793.5 | Zambia                   | ZM   | ZMB  | North-Western
 Choma              | Choma              |    -16.8095 |      26.97 |       42324 | Zambia                   | ZM   | ZMB  | Southern
 Mongu              | Mongu              |    -15.2796 |      23.12 |     45098.5 | Zambia                   | ZM   | ZMB  | Western
 Kaoma              | Kaoma              |    -14.7796 |       24.8 |        7259 | Zambia                   | ZM   | ZMB  | Western
 Sesheke            | Sesheke            |    -17.4695 |       24.3 |     10177.5 | Zambia                   | ZM   | ZMB  | Western
 Lukulu             | Lukulu             |    -14.3896 |      23.24 |        3349 | Zambia                   | ZM   | ZMB  | Western
 Kalabo             | Kalabo             |    -14.9896 |      22.68 |        7731 | Zambia                   | ZM   | ZMB  | Western
 Senanga            | Senanga            |    -16.1196 |      23.27 |       10005 | Zambia                   | ZM   | ZMB  | Western
 Mansa              | Mansa              |       -11.2 |      28.89 |       31357 | Zambia                   | ZM   | ZMB  | Luapula
 Mpika              | Mpika              |      -11.83 |      31.46 |     17242.5 | Zambia                   | ZM   | ZMB  | Northern
 Mbala              | Mbala              |    -8.84004 |      31.37 |       18384 | Zambia                   | ZM   | ZMB  | Northern
 Luanshya           | Luanshya           |    -13.1333 |       28.4 |      132679 | Zambia                   | ZM   | ZMB  | Copperbelt
 Ndola              | Ndola              |    -12.9999 |      28.65 |      395428 | Zambia                   | ZM   | ZMB  | Copperbelt
 Zambezi            | Zambezi            |      -13.54 |    23.1099 |      4987.5 | Zambia                   | ZM   | ZMB  | North-Western
 Kafue              | Kafue              |      -15.78 |      28.18 |     25725.5 | Zambia                   | ZM   | ZMB  | Southern
 Mazabuka           | Mazabuka           |      -15.86 |      27.76 |     57874.5 | Zambia                   | ZM   | ZMB  | Southern
 Kabwe              | Kabwe              |      -14.44 |      28.45 |      188667 | Zambia                   | ZM   | ZMB  | Central
 Mufulira           | Mufulira           |      -12.55 |      28.26 |      137062 | Zambia                   | ZM   | ZMB  | Copperbelt
 Kitwe              | Kitwe              |      -12.81 |      28.22 |      402908 | Zambia                   | ZM   | ZMB  | Copperbelt
 Livingstone        | Livingstone        |      -17.86 |      25.86 |      137342 | Zambia                   | ZM   | ZMB  | Southern
 Lusaka             | Lusaka             |    -15.4166 |    28.2833 | 1.29772e+06 | Zambia                   | ZM   | ZMB  | Lusaka
 Mazowe             | Mazowe             |    -17.5196 |      30.97 |        9966 | Zimbabwe                 | ZW   | ZWE  | Mashonaland Central
 Shamva             | Shamva             |    -17.3196 |      31.57 |        8521 | Zimbabwe                 | ZW   | ZWE  | Mashonaland Central
 Victoria Falls     | Victoria Falls     |    -17.9296 |      25.84 |     23964.5 | Zimbabwe                 | ZW   | ZWE  | Matabeleland North
 Zvishavane         | Zvishavane         |    -20.3296 |      30.05 |     34557.5 | Zimbabwe                 | ZW   | ZWE  | Midlands
 Kwekwe             | Kwekwe             |    -18.9296 |       29.8 |       80788 | Zimbabwe                 | ZW   | ZWE  | Midlands
 Plumtree           | Plumtree           |    -20.4795 |      27.82 |      1959.5 | Zimbabwe                 | ZW   | ZWE  | Matabeleland South
 Beitbridge         | Beitbridge         |    -22.2096 |      29.99 |     13759.5 | Zimbabwe                 | ZW   | ZWE  | Matabeleland South
 Gwanda             | Gwanda             |    -20.9396 |      29.01 |      8252.5 | Zimbabwe                 | ZW   | ZWE  | Matabeleland South
 Chiredzi           | Chiredzi           |    -21.0496 |      31.66 |     17816.5 | Zimbabwe                 | ZW   | ZWE  | Masvingo
 Masvingo           | Masvingo           |    -20.0596 |      30.82 |     76300.5 | Zimbabwe                 | ZW   | ZWE  | Masvingo
 Karoi              | Karoi              |    -16.8196 |      29.68 |       13194 | Zimbabwe                 | ZW   | ZWE  | Mashonaland West
 Chinhoyi           | Chinhoyi           |    -17.3596 |      30.18 |       52812 | Zimbabwe                 | ZW   | ZWE  | Mashonaland West
 Kariba             | Kariba             |    -16.5296 |       28.8 |     23133.5 | Zimbabwe                 | ZW   | ZWE  | Mashonaland West
 Hwange             | Hwange             |      -18.37 |       26.5 |     33599.5 | Zimbabwe                 | ZW   | ZWE  | Matabeleland North
 Gweru              | Gweru              |      -19.45 |      29.82 |      164716 | Zimbabwe                 | ZW   | ZWE  | Midlands
 Mutare             | Mutare             |      -18.97 |      32.65 |      216785 | Zimbabwe                 | ZW   | ZWE  | Manicaland
 Kadoma             | Kadoma             |      -18.33 |    29.9099 |       56400 | Zimbabwe                 | ZW   | ZWE  | Mashonaland West
 Chitungwiza        | Chitungwiza        |         -18 |       31.1 |      331071 | Zimbabwe                 | ZW   | ZWE  | Harare
 Harare             | Harare             |    -17.8178 |    31.0447 | 1.55741e+06 | Zimbabwe                 | ZW   | ZWE  | Harare
 Bulawayo           | Bulawayo           |      -20.17 |      28.58 |      697096 | Zimbabwe                 | ZW   | ZWE  | Bulawayo
(1281 rows)

emilyd=> 
emilyd=> \h alter table
Command:     ALTER TABLE
Description: change the definition of a table
Syntax:
ALTER TABLE [ IF EXISTS ] [ ONLY ] name [ * ]
    action [, ... ]
ALTER TABLE [ IF EXISTS ] [ ONLY ] name [ * ]
    RENAME [ COLUMN ] column_name TO new_column_name
ALTER TABLE [ IF EXISTS ] [ ONLY ] name [ * ]
    RENAME CONSTRAINT constraint_name TO new_constraint_name
ALTER TABLE [ IF EXISTS ] name
    RENAME TO new_name
ALTER TABLE [ IF EXISTS ] name
    SET SCHEMA new_schema

where action is one of:

    ADD [ COLUMN ] column_name data_type [ COLLATE collation ] [ column_constraint [ ... ] ]
    DROP [ COLUMN ] [ IF EXISTS ] column_name [ RESTRICT | CASCADE ]
    ALTER [ COLUMN ] column_name [ SET DATA ] TYPE data_type [ COLLATE collation ] [ USING expression ]
    ALTER [ COLUMN ] column_name SET DEFAULT expression
    ALTER [ COLUMN ] column_name DROP DEFAULT
    ALTER [ COLUMN ] column_name { SET | DROP } NOT NULL
    ALTER [ COLUMN ] column_name SET STATISTICS integer
    ALTER [ COLUMN ] column_name SET ( attribute_option = value [, ... ] )
    ALTER [ COLUMN ] column_name RESET ( attribute_option [, ... ] )
    ALTER [ COLUMN ] column_name SET STORAGE { PLAIN | EXTERNAL | EXTENDED | MAIN }
    ADD table_constraint [ NOT VALID ]
    ADD table_constraint_using_index
    VALIDATE CONSTRAINT constraint_name
    DROP CONSTRAINT [ IF EXISTS ]  constraint_name [ RESTRICT | CASCADE ]
    DISABLE TRIGGER [ trigger_name | ALL | USER ]
    ENABLE TRIGGER [ trigger_name | ALL | USER ]
    ENABLE REPLICA TRIGGER trigger_name
    ENABLE ALWAYS TRIGGER trigger_name
    DISABLE RULE rewrite_rule_name
    ENABLE RULE rewrite_rule_name
    ENABLE REPLICA RULE rewrite_rule_name
    ENABLE ALWAYS RULE rewrite_rule_name
    CLUSTER ON index_name
    SET WITHOUT CLUSTER
    SET WITH OIDS
    SET WITHOUT OIDS
    SET ( storage_parameter = value [, ... ] )
    RESET ( storage_parameter [, ... ] )
    INHERIT parent_table
    NO INHERIT parent_table
    OF type_name
    NOT OF
    OWNER TO new_owner
    SET TABLESPACE new_tablespace

and table_constraint_using_index is:

    [ CONSTRAINT constraint_name ]
    { UNIQUE | PRIMARY KEY } USING INDEX index_name
    [ DEFERRABLE | NOT DEFERRABLE ] [ INITIALLY DEFERRED | INITIALLY IMMEDIATE ]

emilyd=> 
emilyd=> 
emilyd=> \d afrikaland
     Table "landdb.afrikaland"
 Column |     Type     | Modifiers 
--------+--------------+-----------
 kode   | character(2) | not null
 navn   | text         | 
Indexes:
    "afrikaland_pkey" PRIMARY KEY, btree (kode)
    "afrikaland_navn_key" UNIQUE CONSTRAINT, btree (navn)

emilyd=> 
emilyd=> alter table Afrikaland
emilyd-> rename navn TO land;
ALTER TABLE
emilyd=> select B.navn, B.lnavn, B.region
emilyd-> from bydata B, Afrikaland A
emilyd-> where b.kode=a.kode;
        navn        |          lnavn           |                region                
--------------------+--------------------------+--------------------------------------
 Jijel              | Algeria                  | Jijel
 Tizi-Ouzou         | Algeria                  | Tizi Ouzou
 Bordj Bou Arreridj | Algeria                  | Bordj Bou Arréridj
 M'sila             | Algeria                  | M'Sila
 Guelma             | Algeria                  | Guelma
 Oum el Bouaghi     | Algeria                  | Oum el Bouaghi
 Timimoun           | Algeria                  | Adrar
 Sidi bel Abbes     | Algeria                  | Sidi Bel Abbès
 Tlimcen            | Algeria                  | Tlemcen
 Beni Ounif         | Algeria                  | Béchar
 Abadla             | Algeria                  | Béchar
 Sefra              | Algeria                  | Naâma
 Skikda             | Algeria                  | Skikda
 Djanet             | Algeria                  | Illizi
 I-n-Amenas         | Algeria                  | Illizi
 In Amguel          | Algeria                  | Tamanghasset
 El Bayadh          | Algeria                  | El Bayadh
 El Oued            | Algeria                  | Biskra
 Hassi Messaoud     | Algeria                  | Ouargla
 Chlef              | Algeria                  | Chlef
 Mascara            | Algeria                  | Mascara
 Mostaganem         | Algeria                  | Mostaganem
 Saida              | Algeria                  | Saïda
 Tiarat             | Algeria                  | Tiaret
 Bejaia             | Algeria                  | Béjaïa
 Blida              | Algeria                  | Blida
 Bouira             | Algeria                  | Bouira
 Medea              | Algeria                  | Médéa
 Souk Ahras         | Algeria                  | Souk Ahras
 Tebessa            | Algeria                  | Tébessa
 Adrar              | Algeria                  | Adrar
 Reggane            | Algeria                  | Adrar
 Bechar             | Algeria                  | Béchar
 Tindouf            | Algeria                  | Tindouf
 Illizi             | Algeria                  | Illizi
 Arak               | Algeria                  | Tamanghasset
 I-n-Salah          | Algeria                  | Tamanghasset
 El Golea           | Algeria                  | Ghardaïa
 Laghouat           | Algeria                  | Laghouat
 Touggourt          | Algeria                  | Ouargla
 Ouargla            | Algeria                  | Ouargla
 Biskra             | Algeria                  | Biskra
 Djelfa             | Algeria                  | Djelfa
 Setif              | Algeria                  | Sétif
 Batna              | Algeria                  | Batna
 Annaba             | Algeria                  | Annaba
 Constantine        | Algeria                  | Constantine
 Oran               | Algeria                  | Oran
 Tamanrasset        | Algeria                  | Tamanghasset
 Ghardaia           | Algeria                  | Ghardaïa
 Algiers            | Algeria                  | Alger
 Mucusso            | Angola                   | Cuando Cubango
 Lucapa             | Angola                   | Lunda Norte
 Capenda-Camulemba  | Angola                   | Lunda Norte
 Saurimo            | Angola                   | Lunda Sul
 Muconda            | Angola                   | Lunda Sul
 Cacolo             | Angola                   | Lunda Sul
 Caxito             | Angola                   | Bengo
 Camabatela         | Angola                   | Cuanza Norte
 Ndalatando         | Angola                   | Cuanza Norte
 Quibala            | Angola                   | Cuanza Sul
 Calulo             | Angola                   | Cuanza Sul
 Waku Kungo         | Angola                   | Cuanza Sul
 Songo              | Angola                   | Uíge
 Mbanza-Congo       | Angola                   | Zaire
 Nzeto              | Angola                   | Zaire
emilyd=> select B.*
emilyd-> from bydata B natural join Afrikaland A;
        navn        |       ascii        |    brdgr    |   lnggr    |     pop     |          lnavn           | kode | iso3 |                region                
--------------------+--------------------+-------------+------------+-------------+--------------------------+------+------+--------------------------------------
 Jijel              | Jijel              |      36.822 |      5.766 |      148000 | Algeria                  | DZ   | DZA  | Jijel
 Tizi-Ouzou         | Tizi-Ouzou         |        36.8 |    4.03333 |      144000 | Algeria                  | DZ   | DZA  | Tizi Ouzou
 Bordj Bou Arreridj | Bordj Bou Arreridj |      36.059 |       4.63 |      134500 | Algeria                  | DZ   | DZA  | Bordj Bou Arréridj
 M'sila             | M'sila             |        35.7 |      4.545 |      125000 | Algeria                  | DZ   | DZA  | M'Sila
 Guelma             | Guelma             |      36.466 |      7.428 |      123590 | Algeria                  | DZ   | DZA  | Guelma
 Oum el Bouaghi     | Oum el Bouaghi     |       35.85 |       7.15 |      100821 | Algeria                  | DZ   | DZA  | Oum el Bouaghi
 Timimoun           | Timimoun           |     29.2365 |   0.269999 |       26568 | Algeria                  | DZ   | DZA  | Adrar
 Sidi bel Abbes     | Sidi bel Abbes     |     35.1903 |  -0.639972 |      200186 | Algeria                  | DZ   | DZA  | Sidi Bel Abbès
 Tlimcen            | Tlimcen            |     34.8904 |   -1.32001 |      181059 | Algeria                  | DZ   | DZA  | Tlemcen
 Beni Ounif         | Beni Ounif         |     32.0493 |   -1.25138 |        5628 | Algeria                  | DZ   | DZA  | Béchar
 Abadla             | Abadla             |     31.0171 |   -2.73331 |       14364 | Algeria                  | DZ   | DZA  | Béchar
 Sefra              | Sefra              |     32.7604 |  -0.579949 |       51118 | Algeria                  | DZ   | DZA  | Naâma
 Skikda             | Skikda             |     36.8804 |    6.89998 |      193942 | Algeria                  | DZ   | DZA  | Skikda
 Djanet             | Djanet             |     24.5529 |    9.48225 |         666 | Algeria                  | DZ   | DZA  | Illizi
 I-n-Amenas         | I-n-Amenas         |     28.0503 |       9.55 |         216 | Algeria                  | DZ   | DZA  | Illizi
 In Amguel          | In Amguel          |     23.6939 |    5.16474 |        3030 | Algeria                  | DZ   | DZA  | Tamanghasset
 El Bayadh          | El Bayadh          |     33.6904 |    1.00995 |       67413 | Algeria                  | DZ   | DZA  | El Bayadh
 El Oued            | El Oued            |     33.3704 |    6.85998 |      177497 | Algeria                  | DZ   | DZA  | Biskra
 Hassi Messaoud     | Hassi Messaoud     |     31.7023 |    6.05445 |       18124 | Algeria                  | DZ   | DZA  | Ouargla
 Chlef              | Chlef              |     36.1704 |    1.31996 |      449167 | Algeria                  | DZ   | DZA  | Chlef
 Mascara            | Mascara            |     35.4004 |   0.140033 |      108230 | Algeria                  | DZ   | DZA  | Mascara
 Mostaganem         | Mostaganem         |     35.9404 |  0.0899839 |      159177 | Algeria                  | DZ   | DZA  | Mostaganem
 Saida              | Saida              |     34.8404 |   0.140033 |      134855 | Algeria                  | DZ   | DZA  | Saïda
 Tiarat             | Tiarat             |     35.3804 |    1.31996 |      184195 | Algeria                  | DZ   | DZA  | Tiaret
 Bejaia             | Bejaia             |     36.7604 |    5.07002 |      274520 | Algeria                  | DZ   | DZA  | Béjaïa
 Blida              | Blida              |     36.4203 |       2.83 |      388174 | Algeria                  | DZ   | DZA  | Blida
 Bouira             | Bouira             |     36.3805 |    3.90001 |      110144 | Algeria                  | DZ   | DZA  | Bouira
 Medea              | Medea              |     36.2704 |       2.77 |      145864 | Algeria                  | DZ   | DZA  | Médéa
 Souk Ahras         | Souk Ahras         |     36.2904 |       7.95 |      134947 | Algeria                  | DZ   | DZA  | Souk Ahras
 Tebessa            | Tebessa            |     35.4104 |    8.12001 |      171742 | Algeria                  | DZ   | DZA  | Tébessa
 Adrar              | Adrar              |       27.87 |  -0.289967 |       56910 | Algeria                  | DZ   | DZA  | Adrar
 Reggane            | Reggane            |        26.7 |   0.166646 |     22351.5 | Algeria                  | DZ   | DZA  | Adrar
 Bechar             | Bechar             |     31.6111 |      -2.23 |      142416 | Algeria                  | DZ   | DZA  | Béchar
 Tindouf            | Tindouf            |     27.6742 |   -8.14778 |       18270 | Algeria                  | DZ   | DZA  | Tindouf
 Illizi             | Illizi             |     26.4834 |     8.4666 |        7293 | Algeria                  | DZ   | DZA  | Illizi
 Arak               | Arak               |       25.28 |    3.74999 |      423251 | Algeria                  | DZ   | DZA  | Tamanghasset
 I-n-Salah          | I-n-Salah          |     27.2166 |    2.46661 |       28632 | Algeria                  | DZ   | DZA  | Tamanghasset
 El Golea           | El Golea           |     30.5666 |    2.88333 |       32049 | Algeria                  | DZ   | DZA  | Ghardaïa
 Laghouat           | Laghouat           |       33.81 |    2.88002 |      108279 | Algeria                  | DZ   | DZA  | Laghouat
 Touggourt          | Touggourt          |        33.1 |    6.05998 |       91499 | Algeria                  | DZ   | DZA  | Ouargla
 Ouargla            | Ouargla            |       31.97 |    5.34002 |      176271 | Algeria                  | DZ   | DZA  | Ouargla
 Biskra             | Biskra             |       34.86 |    5.73003 |      202103 | Algeria                  | DZ   | DZA  | Biskra
 Djelfa             | Djelfa             |       34.68 |    3.25002 |      170901 | Algeria                  | DZ   | DZA  | Djelfa
 Setif              | Setif              |       36.18 |    5.39997 |      274744 | Algeria                  | DZ   | DZA  | Sétif
 Batna              | Batna              |       35.57 |       6.17 |      269467 | Algeria                  | DZ   | DZA  | Batna
 Annaba             | Annaba             |       36.92 |    7.75998 |      355047 | Algeria                  | DZ   | DZA  | Annaba
 Constantine        | Constantine        |       36.36 |    6.59995 |      527638 | Algeria                  | DZ   | DZA  | Constantine
 Oran               | Oran               |       35.71 |  -0.619973 |      721992 | Algeria                  | DZ   | DZA  | Oran
 Tamanrasset        | Tamanrasset        |      22.785 |     5.5228 |       71808 | Algeria                  | DZ   | DZA  | Tamanghasset
emilyd=> select B.navn, B.lnavn, B.region
emilyd-> from bydata B, Afrikaland A
emilyd-> where b.kode=a.kode;
        navn        |          lnavn           |                region                
--------------------+--------------------------+--------------------------------------
 Jijel              | Algeria                  | Jijel
 Tizi-Ouzou         | Algeria                  | Tizi Ouzou
 Bordj Bou Arreridj | Algeria                  | Bordj Bou Arréridj
 M'sila             | Algeria                  | M'Sila
 Guelma             | Algeria                  | Guelma
 Oum el Bouaghi     | Algeria                  | Oum el Bouaghi
 Timimoun           | Algeria                  | Adrar
 Sidi bel Abbes     | Algeria                  | Sidi Bel Abbès
 Tlimcen            | Algeria                  | Tlemcen
 Beni Ounif         | Algeria                  | Béchar
 Abadla             | Algeria                  | Béchar
 Sefra              | Algeria                  | Naâma
 Skikda             | Algeria                  | Skikda
 Djanet             | Algeria                  | Illizi
 I-n-Amenas         | Algeria                  | Illizi
 In Amguel          | Algeria                  | Tamanghasset
 El Bayadh          | Algeria                  | El Bayadh
 El Oued            | Algeria                  | Biskra
 Hassi Messaoud     | Algeria                  | Ouargla
 Chlef              | Algeria                  | Chlef
 Mascara            | Algeria                  | Mascara
 Mostaganem         | Algeria                  | Mostaganem
 Saida              | Algeria                  | Saïda
 Tiarat             | Algeria                  | Tiaret
 Bejaia             | Algeria                  | Béjaïa
 Blida              | Algeria                  | Blida
 Bouira             | Algeria                  | Bouira
 Medea              | Algeria                  | Médéa
 Souk Ahras         | Algeria                  | Souk Ahras
 Tebessa            | Algeria                  | Tébessa
 Adrar              | Algeria                  | Adrar
 Reggane            | Algeria                  | Adrar
 Bechar             | Algeria                  | Béchar
 Tindouf            | Algeria                  | Tindouf
 Illizi             | Algeria                  | Illizi
 Arak               | Algeria                  | Tamanghasset
 I-n-Salah          | Algeria                  | Tamanghasset
 El Golea           | Algeria                  | Ghardaïa
 Laghouat           | Algeria                  | Laghouat
 Touggourt          | Algeria                  | Ouargla
 Ouargla            | Algeria                  | Ouargla
 Biskra             | Algeria                  | Biskra
 Djelfa             | Algeria                  | Djelfa
 Setif              | Algeria                  | Sétif
 Batna              | Algeria                  | Batna
 Annaba             | Algeria                  | Annaba
 Constantine        | Algeria                  | Constantine
 Oran               | Algeria                  | Oran
 Tamanrasset        | Algeria                  | Tamanghasset
 Ghardaia           | Algeria                  | Ghardaïa
 Algiers            | Algeria                  | Alger
 Mucusso            | Angola                   | Cuando Cubango
 Lucapa             | Angola                   | Lunda Norte
 Capenda-Camulemba  | Angola                   | Lunda Norte
 Saurimo            | Angola                   | Lunda Sul
 Muconda            | Angola                   | Lunda Sul
 Cacolo             | Angola                   | Lunda Sul
 Caxito             | Angola                   | Bengo
emilyd=> select B.*
emilyd-> from bydata B natural join Afrikaland A
emilyd-> where B.brdgr between -0.5 and 0.5
emilyd-> order by B.lnavn desc, B.region;
     navn      |     ascii     |    brdgr    |  lnggr  |     pop     |         lnavn         | kode | iso3 |    region     
---------------+---------------+-------------+---------+-------------+-----------------------+------+------+---------------
 Busia         | Busia         |    0.454444 | 34.0758 |       47100 | Uganda                | UG   | UGA  | Busia
 Mityana       | Mityana       |    0.400426 |   32.05 |     37420.5 | Uganda                | UG   | UGA  | Busujju
 Jinja         | Jinja         |    0.440424 | 33.1999 |      195660 | Uganda                | UG   | UGA  | Jinja
 Kalangala     | Kalangala     |   -0.308889 |  32.225 |        5200 | Uganda                | UG   | UGA  | Kalangala
 Kampala       | Kampala       |    0.316659 | 32.5833 | 1.38659e+06 | Uganda                | UG   | UGA  | Kampala
 Katwe         | Katwe         |   -0.129619 |   29.92 |        1957 | Uganda                | UG   | UGA  | Kasese
 Kasese        | Kasese        |    0.232478 | 29.9883 |       67269 | Uganda                | UG   | UGA  | Kasese
 Masaka        | Masaka        |   -0.329607 |   31.73 |       65373 | Uganda                | UG   | UGA  | Masaka
 Mpigi         | Mpigi         |       0.225 | 32.3136 |       11082 | Uganda                | UG   | UGA  | Mpigi
 Entebbe       | Entebbe       |   0.0603955 |   32.46 |      127414 | Uganda                | UG   | UGA  | Wakiso
 Kismaayo      | Kismaayo      |   -0.356633 | 42.5183 |      184902 | Somalia               | SO   | SOM  | Jubbada Hoose
 Jamaame       | Jamaame       |   0.0721778 | 42.7506 |      156924 | Somalia               | SO   | SOM  | Jubbada Hoose
 Sao Tome      | Sao Tome      |    0.333402 | 6.73333 |     72192.5 | Sao Tome and Principe | ST   | STP  | 
 Nyeri         | Nyeri         |   -0.416997 |  36.951 |       51084 | Kenya                 | KE   | KEN  | Central
 Meru          | Meru          |   0.0599821 |   37.64 |       47226 | Kenya                 | KE   | KEN  | Eastern
 Garissa       | Garissa       |   -0.439626 |   39.67 |       65948 | Kenya                 | KE   | KEN  | North-Eastern
 Kendu Bay     | Kendu Bay     |   -0.359579 |   34.64 |       91248 | Kenya                 | KE   | KEN  | Nyanza
 Kisumu        | Kisumu        |  -0.0900346 |   34.75 |      306047 | Kenya                 | KE   | KEN  | Nyanza
 Nakuru        | Nakuru        |   -0.279997 |   36.07 |      312315 | Kenya                 | KE   | KEN  | Rift Valley
 Nanyuki       | Nanyuki       |    0.020398 |   37.06 |       34342 | Kenya                 | KE   | KEN  | Rift Valley
 Eldama Ravine | Eldama Ravine |   0.0503703 |   35.72 |     15052.5 | Kenya                 | KE   | KEN  | Rift Valley
 Kericho       | Kericho       |   -0.359579 |   35.28 |       67300 | Kenya                 | KE   | KEN  | Rift Valley
 Kakamega      | Kakamega      |    0.290407 |   34.73 |       63426 | Kenya                 | KE   | KEN  | Western
 Libreville    | Libreville    |    0.385389 | 9.45796 |      530756 | Gabon                 | GA   | GAB  | Estuaire
 Bifoum        | Bifoum        |   -0.332914 | 10.3832 |         134 | Gabon                 | GA   | GAB  | Moyen-Ogooué
 Butembo       | Butembo       |    0.130004 |   29.28 |      220512 | Congo (Kinshasa)      | CD   | COD  | Nord-Kivu
 Beni          | Beni          |    0.490447 |   29.45 |      211276 | Congo (Kinshasa)      | CD   | COD  | Nord-Kivu
 Boende        | Boende        |   -0.219587 |   20.86 |     24679.5 | Congo (Kinshasa)      | CD   | COD  | Équateur
 Mbandaka      | Mbandaka      |    0.040035 |   18.26 |      229590 | Congo (Kinshasa)      | CD   | COD  | Équateur
 Makoua        | Makoua        | -0.00957436 |   15.64 |       10335 | Congo (Brazzaville)   | CG   | COG  | Cuvette
 Owando        | Owando        |   -0.479623 |   15.92 |       29011 | Congo (Brazzaville)   | CG   | COG  | Cuvette
(31 rows)

emilyd=> select *
emilyd-> from Bydata B inner join Land L on B.kode=L.kode
emilyd-> where B.lnavn <> L.navn;
         navn          |         ascii         |    brdgr    |  lnggr   |     pop     |             lnavn              | kode | iso3 |        region        | kode |               navn               | pref  | iso
3 
-----------------------+-----------------------+-------------+----------+-------------+--------------------------------+------+------+----------------------+------+----------------------------------+-------+----
--
 Madingou              | Madingou              |      -4.164 |   13.554 |       22760 | Congo (Brazzaville)            | CG   | COG  | Bouenza              | CG   | Republic of the Congo            | 242   | COG
 Kinkala               | Kinkala               |      -4.356 |   14.762 |       13882 | Congo (Brazzaville)            | CG   | COG  | Pool                 | CG   | Republic of the Congo            | 242   | COG
 Ewo                   | Ewo                   |   -0.879599 |    14.82 |      7786.5 | Congo (Brazzaville)            | CG   | COG  | Cuvette-Ouest        | CG   | Republic of the Congo            | 242   | COG
 Impfondo              | Impfondo              |     1.64038 |    18.04 |       20859 | Congo (Brazzaville)            | CG   | COG  | Likouala             | CG   | Republic of the Congo            | 242   | COG
 Sembe                 | Sembe                 |     1.64038 |    14.58 |        6396 | Congo (Brazzaville)            | CG   | COG  | Sangha               | CG   | Republic of the Congo            | 242   | COG
 Moloundou             | Moloundou             |     2.03374 |  15.2167 |       12244 | Congo (Brazzaville)            | CG   | COG  | Sangha               | CG   | Republic of the Congo            | 242   | COG
 Owando                | Owando                |   -0.479623 |    15.92 |       29011 | Congo (Brazzaville)            | CG   | COG  | Cuvette              | CG   | Republic of the Congo            | 242   | COG
 Makoua                | Makoua                | -0.00957436 |    15.64 |       10335 | Congo (Brazzaville)            | CG   | COG  | Cuvette              | CG   | Republic of the Congo            | 242   | COG
 Sibiti                | Sibiti                |    -3.68961 |    13.35 |       20950 | Congo (Brazzaville)            | CG   | COG  | Lékoumou             | CG   | Republic of the Congo            | 242   | COG
 Mossendjo             | Mossendjo             |    -2.93963 |    12.72 |     24583.5 | Congo (Brazzaville)            | CG   | COG  | Niari                | CG   | Republic of the Congo            | 242   | COG
 Loubomo               | Loubomo               |     -4.1796 |    12.67 |     97929.5 | Congo (Brazzaville)            | CG   | COG  | Niari                | CG   | Republic of the Congo            | 242   | COG
 Gamboma               | Gamboma               |    -1.87949 |    15.85 |       20877 | Congo (Brazzaville)            | CG   | COG  | Plateaux             | CG   | Republic of the Congo            | 242   | COG
 Djambala              | Djambala              |     -2.5396 |    14.75 |      9650.5 | Congo (Brazzaville)            | CG   | COG  | Plateaux             | CG   | Republic of the Congo            | 242   | COG
 Ouesso                | Ouesso                |     1.60999 |    16.05 |     26117.5 | Congo (Brazzaville)            | CG   | COG  | Sangha               | CG   | Republic of the Congo            | 242   | COG
 Kayes                 | Kayes                 |    -4.18002 |    13.28 |       60629 | Congo (Brazzaville)            | CG   | COG  | Bouenza              | CG   | Republic of the Congo            | 242   | COG
 Pointe-Noire          | Pointe-Noire          |    -4.77001 |    11.88 |      602440 | Congo (Brazzaville)            | CG   | COG  | Kouilou              | CG   | Republic of the Congo            | 242   | COG
 Brazzaville           | Brazzaville           |    -4.25919 |  15.2847 | 1.25944e+06 | Congo (Brazzaville)            | CG   | COG  | Pool                 | CG   | Republic of the Congo            | 242   | COG
 Buluko                | Buluko                |   -0.756999 |   28.528 |        1192 | Congo (Kinshasa)               | CD   | COD  | Nord-Kivu            | CD   | Democratic Republic of the Congo | 243   | COD
 Zongo                 | Zongo                 |     4.33034 |   18.615 |       17667 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Libenge               | Libenge               |     3.66043 |    18.62 |       17402 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Bongandanga           | Bongandanga           |     1.51036 |    21.05 |        2896 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Ikela                 | Ikela                 |    -1.18294 |  23.2666 |         291 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Binga                 | Binga                 |     2.38341 |    20.42 |       64639 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Basankusu             | Basankusu             |     1.23371 |     19.8 |       52216 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Boende                | Boende                |   -0.219587 |    20.86 |     24679.5 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Gbadolite             | Gbadolite             |     4.29037 |  21.0199 |       35197 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Businga               | Businga               |     3.34038 |    20.87 |       31583 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Bosobolo              | Bosobolo              |     4.19038 |    19.88 |      8968.5 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Yangambi              | Yangambi              |    0.770378 |    24.43 |     18035.5 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Aketi                 | Aketi                 |     2.74046 |    23.78 |       46881 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Mongbwalu             | Mongbwalu             |     1.95044 |  30.0333 |        2819 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Bafwasende            | Bafwasende            |     1.08385 |  27.2666 |         149 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Bunia                 | Bunia                 |     1.56041 |    30.24 |       61537 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Wamba                 | Wamba                 |     2.14042 |    27.99 |       82122 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Basoko                | Basoko                |     1.24043 |    23.59 |       22953 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Kenge                 | Kenge                 |    -4.82959 |  16.8999 |         241 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Bolobo                | Bolobo                |    -2.15952 |    16.24 |     22605.5 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Kahemba               | Kahemba               |    -7.28293 |       19 |     45644.5 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Bulungu               | Bulungu               |    -4.54961 |     18.6 |     42310.5 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Lusanga               | Lusanga               |    -5.58293 |  16.5167 |         177 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Mangai                | Mangai                |    -4.03961 |    19.53 |       19946 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Kasongo-Lunda         | Kasongo-Lunda         |    -6.47962 |    16.83 |       18748 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Mushie                | Mushie                |    -3.01962 |    16.92 |     24013.5 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Dibaya                | Dibaya                |    -6.50954 |    22.87 |         603 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Mweka                 | Mweka                 |    -4.83962 |    21.57 |       45222 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Luebo                 | Luebo                 |    -5.34951 |    21.41 |     17682.5 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Demba                 | Demba                 |     -5.5096 |    22.26 |     17008.5 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Ilebo                 | Ilebo                 |     -4.3196 |    20.61 |     71125.5 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Moanda                | Moanda                |    -5.92291 |   12.355 |      153915 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Kimpese               | Kimpese               |     -5.5496 |  14.4333 |       10578 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Kasangulu             | Kasangulu             |    -4.57958 |    15.18 |       22645 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Mbanza-Ngungu         | Mbanza-Ngungu         |    -5.24962 |    14.86 |      141950 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Tshela                | Tshela                |    -4.96958 |    12.93 |       19896 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Mwenga                | Mwenga                |    -3.03823 |  28.4325 |        2216 | Congo (Kinshasa)               | CD   | COD  | Sud-Kivu             | CD   | Democratic Republic of the Congo | 243   | COD
 Kampene               | Kampene               |    -3.59954 |    26.67 |     19719.5 | Congo (Kinshasa)               | CD   | COD  | Maniema              | CD   | Democratic Republic of the Congo | 243   | COD
 Kalima                | Kalima                |    -2.50958 |    26.43 |         194 | Congo (Kinshasa)               | CD   | COD  | Maniema              | CD   | Democratic Republic of the Congo | 243   | COD
 Lubutu                | Lubutu                |   -0.732889 |  26.5833 |        1313 | Congo (Kinshasa)               | CD   | COD  | Maniema              | CD   | Democratic Republic of the Congo | 243   | COD
 Kabinda               | Kabinda               |    -6.12961 |    24.48 |       37366 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Lubao                 | Lubao                 |    -5.38956 |    25.75 |     26142.5 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Lusambo               | Lusambo               |    -4.96958 |    23.43 |       26803 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Gandajika             | Gandajika             |     -6.7396 |    23.96 |      105770 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Lodja                 | Lodja                 |    -3.48962 |    23.42 |       68244 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Dilolo                | Dilolo                |    -10.6996 |  22.3333 |        7854 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Nyunzu                | Nyunzu                |    -5.94957 |  28.0167 |       15397 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kasaji                | Kasaji                |    -10.3662 |    23.45 |       11969 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Luanza                | Luanza                |    -8.69959 |     28.7 |         861 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Moba                  | Moba                  |    -7.05958 |    29.72 |       10006 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Bukama                | Bukama                |    -9.20958 |    25.84 |     20900.5 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kaniama               | Kaniama               |    -7.56963 |    24.17 |     32946.5 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kipushi               | Kipushi               |    -11.7596 |    27.25 |     87839.5 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kambove               | Kambove               |    -10.8696 |     26.6 |     18934.5 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kongolo               | Kongolo               |    -5.37948 |    26.98 |     68572.5 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kabalo                | Kabalo                |    -6.04962 |    26.91 |       21851 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Beni                  | Beni                  |    0.490447 |    29.45 |      211276 | Congo (Kinshasa)               | CD   | COD  | Nord-Kivu            | CD   | Democratic Republic of the Congo | 243   | COD
 Lisala                | Lisala                |     2.14001 |    21.51 |       64270 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Gemena                | Gemena                |     3.26002 |    19.77 |      157848 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Buta                  | Buta                  |     2.81999 |    24.74 |       44195 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Watsa                 | Watsa                 |     3.04001 |    29.53 |     17721.5 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Isiro                 | Isiro                 |     2.75997 |    27.62 |      142136 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Bondo                 | Bondo                 |     3.80996 |    23.67 |     20688.5 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Inongo                | Inongo                |       -1.94 |    18.28 |       30181 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Tshikapa              | Tshikapa              |    -6.40996 |    20.77 |      201256 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Boma                  | Boma                  |    -5.82999 |    13.05 |      178638 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Bukavu                | Bukavu                |    -2.50999 |    28.84 |      331084 | Congo (Kinshasa)               | CD   | COD  | Sud-Kivu             | CD   | Democratic Republic of the Congo | 243   | COD
 Uvira                 | Uvira                 |    -3.36999 |    29.14 |      164353 | Congo (Kinshasa)               | CD   | COD  | Sud-Kivu             | CD   | Democratic Republic of the Congo | 243   | COD
 Kindu                 | Kindu                 |    -2.96392 |    25.91 |      199306 | Congo (Kinshasa)               | CD   | COD  | Maniema              | CD   | Democratic Republic of the Congo | 243   | COD
 Mwene-Ditu            | Mwene-Ditu            |          -7 |    23.44 |      153328 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Likasi                | Likasi                |      -10.97 |    26.78 |      428411 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Manono                | Manono                |    -7.30003 |    27.45 |       46111 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kamina                | Kamina                |    -8.73002 |    25.01 |      101180 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Mbandaka              | Mbandaka              |    0.040035 |    18.26 |      229590 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Kisangani             | Kisangani             |    0.520006 |    25.22 |      558814 | Congo (Kinshasa)               | CD   | COD  | Orientale            | CD   | Democratic Republic of the Congo | 243   | COD
 Bandundu              | Bandundu              |    -3.30999 |    17.38 |      107998 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Kananga               | Kananga               |    -5.89004 |     22.4 |      614273 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Occidental     | CD   | Democratic Republic of the Congo | 243   | COD
 Kasongo               | Kasongo               |    -4.45003 |    26.66 |       59059 | Congo (Kinshasa)               | CD   | COD  | Maniema              | CD   | Democratic Republic of the Congo | 243   | COD
 Mbuji-Mayi            | Mbuji-Mayi            |    -6.15003 |     23.6 | 1.08488e+06 | Congo (Kinshasa)               | CD   | COD  | Kasaï-Oriental       | CD   | Democratic Republic of the Congo | 243   | COD
 Kalemie               | Kalemie               |     -5.9333 |     29.2 |      176616 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Butembo               | Butembo               |    0.130004 |    29.28 |      220512 | Congo (Kinshasa)               | CD   | COD  | Nord-Kivu            | CD   | Democratic Republic of the Congo | 243   | COD
 Goma                  | Goma                  |     -1.6788 |  29.2218 |      144124 | Congo (Kinshasa)               | CD   | COD  | Nord-Kivu            | CD   | Democratic Republic of the Congo | 243   | COD
 Bumba                 | Bumba                 |     2.18998 |    22.46 |      128030 | Congo (Kinshasa)               | CD   | COD  | Équateur             | CD   | Democratic Republic of the Congo | 243   | COD
 Kikwit                | Kikwit                |    -5.03004 |    18.85 |      465973 | Congo (Kinshasa)               | CD   | COD  | Bandundu             | CD   | Democratic Republic of the Congo | 243   | COD
 Matadi                | Matadi                |    -5.81661 |    13.45 |      212986 | Congo (Kinshasa)               | CD   | COD  | Bas-Congo            | CD   | Democratic Republic of the Congo | 243   | COD
 Kolwezi               | Kolwezi               |    -10.7167 |  25.4724 |      418000 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Lubumbashi            | Lubumbashi            |      -11.68 |    27.48 | 1.11432e+06 | Congo (Kinshasa)               | CD   | COD  | Katanga              | CD   | Democratic Republic of the Congo | 243   | COD
 Kinshasa              | Kinshasa              |    -4.32972 |   15.315 | 6.70435e+06 | Congo (Kinshasa)               | CD   | COD  | Kinshasa City        | CD   | Democratic Republic of the Congo | 243   | COD
 Palikir               | Palikir               |     6.91664 |   158.15 |        4645 | Federated States of Micronesia | FM   | FSM  |                      | FM   | Micronesia                       | 691   | FSM
 St.-Benoit            | St.-Benoit            |    -21.0335 |  55.7128 |       23979 | France                         | RE   | FRA  | La Réunion           | RE   | Reunion                          | 262   | REU
 Dzaoudzi              | Dzaoudzi              |    -12.7871 |   45.275 |       23099 | France                         | YT   | FRA  | Moyotte              | YT   | Mayotte                          | 262   | MYT
 St.-Denis             | St.-Denis             |    -20.8789 |  55.4481 |      163621 | France                         | RE   | FRA  | La Réunion           | RE   | Reunion                          | 262   | REU
 Cacheu                | Cacheu                |      12.269 |  -16.165 |       10490 | Guinea Bissau                  | GW   | GNB  | Cacheu               | GW   | Guinea-Bissau                    | 245   | GNB
 Farim                 | Farim                 |      12.493 |  -15.227 |        6792 | Guinea Bissau                  | GW   | GNB  | Oio                  | GW   | Guinea-Bissau                    | 245   | GNB
 Fulacunda             | Fulacunda             |      11.773 |  -15.195 |        1311 | Guinea Bissau                  | GW   | GNB  | Quinara              | GW   | Guinea-Bissau                    | 245   | GNB
 Gabu                  | Gabu                  |       12.28 |  -14.234 |       14430 | Guinea Bissau                  | GW   | GNB  | Gabú                 | GW   | Guinea-Bissau                    | 245   | GNB
 Catio                 | Catio                 |     11.2167 | -15.1667 |        9898 | Guinea Bissau                  | GW   | GNB  | Tombali              | GW   | Guinea-Bissau                    | 245   | GNB
 Bolama                | Bolama                |      11.583 | -15.4828 |        9179 | Guinea Bissau                  | GW   | GNB  | Bolama               | GW   | Guinea-Bissau                    | 245   | GNB
 Bafata                | Bafata                |      12.167 |  -14.666 |     26112.5 | Guinea Bissau                  | GW   | GNB  | Bafatá               | GW   | Guinea-Bissau                    | 245   | GNB
 Bissau                | Bissau                |      11.865 | -15.5984 |      395684 | Guinea Bissau                  | GW   | GNB  | Bissau               | GW   | Guinea-Bissau                    | 245   | GNB
 Hong Kong             | Hong Kong             |      22.305 |  114.185 | 5.87879e+06 | Hong Kong S.A.R.               | HK   | HKG  |                      | HK   | Hong Kong                        | 852   | HKG
 Macau                 | Macau                 |      22.203 |  113.545 |      568700 | Macau S.A.R                    | MO   | MAC  |                      | MO   | Macau                            | 853   | MAC
 Ammochostos           | Ammochostos           |      35.125 |    33.95 |     33016.5 | Northern Cyprus                | CY   | CYN  |                      | CY   | Cyprus                           | 357   | CYP
 Laascaanood           | Laascaanood           |      8.4333 |  47.3167 |       60100 | Somaliland                     | SO   | SOL  |                      | SO   | Somalia                          | 252   | SOM
 Ceerigaabo            | Ceerigaabo            |     10.5833 |  47.3333 |      165000 | Somaliland                     | SO   | SOL  |                      | SO   | Somalia                          | 252   | SOM
 Boorama               | Boorama               |     9.94041 |    43.18 |       67664 | Somaliland                     | SO   | SOL  |                      | SO   | Somalia                          | 252   | SOM
emilyd=> select B.lnavn, L.navn
emilyd-> from Bydata B inner join Land L on B.kode=L.kode
emilyd-> where B.lnavn <> L.navn;
             lnavn              |               navn               
--------------------------------+----------------------------------
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Federated States of Micronesia | Micronesia
 France                         | Reunion
 France                         | Mayotte
 France                         | Reunion
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Hong Kong S.A.R.               | Hong Kong
 Macau S.A.R                    | Macau
 Northern Cyprus                | Cyprus
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Svalbard and Jan Mayen Islands | Svalbard and Jan Mayen
 The Bahamas                    | Bahamas
emilyd=> select B.lnavn, L.navn
from Bydata B inner join Land L on B.kode=L.kode
where B.lnavn <> L.navn;
             lnavn              |               navn               
--------------------------------+----------------------------------
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 Federated States of Micronesia | Micronesia
 France                         | Reunion
 France                         | Mayotte
 France                         | Reunion
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Guinea Bissau                  | Guinea-Bissau
 Hong Kong S.A.R.               | Hong Kong
 Macau S.A.R                    | Macau
 Northern Cyprus                | Cyprus
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Somaliland                     | Somalia
 Svalbard and Jan Mayen Islands | Svalbard and Jan Mayen
 The Bahamas                    | Bahamas
 The Bahamas                    | Bahamas
 The Gambia                     | Gambia
 The Gambia                     | Gambia
 The Gambia                     | Gambia
 The Gambia                     | Gambia
 The Gambia                     | Gambia
 The Gambia                     | Gambia
 The Gambia                     | Gambia
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States of America       | United States
 United States Virgin Islands   | U.S. Virgin Islands
 Vatican (Holy Sea)             | Vatican
(908 rows)

emilyd=>  select B.lnavn navn_i_Bydata, L.navn navn_i_Land
emilyd-> from Bydata B inner join Land L on B.kode=L.kode
emilyd-> where B.lnavn <> L.navn
emilyd-> -- helt likt setningen over hit ...
emilyd-> group by B.lnavn, L.navn;
         navn_i_bydata          |           navn_i_land            
--------------------------------+----------------------------------
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 The Gambia                     | Gambia
 France                         | Mayotte
 United States Virgin Islands   | U.S. Virgin Islands
 Guinea Bissau                  | Guinea-Bissau
 United States of America       | United States
 Macau S.A.R                    | Macau
 Hong Kong S.A.R.               | Hong Kong
 Northern Cyprus                | Cyprus
 Federated States of Micronesia | Micronesia
 Somaliland                     | Somalia
 France                         | Reunion
 Vatican (Holy Sea)             | Vatican
 The Bahamas                    | Bahamas
 Svalbard and Jan Mayen Islands | Svalbard and Jan Mayen
(16 rows)

emilyd=> select distinct B.lnavn navn_i_Bydata,L.navn navn_i_Land
emilyd-> from Bydata B inner join Land L on B.kode=L.kode
emilyd-> where B.lnavn <> L.navn;
         navn_i_bydata          |           navn_i_land            
--------------------------------+----------------------------------
 Congo (Brazzaville)            | Republic of the Congo
 Congo (Kinshasa)               | Democratic Republic of the Congo
 The Gambia                     | Gambia
 France                         | Mayotte
 United States Virgin Islands   | U.S. Virgin Islands
 Guinea Bissau                  | Guinea-Bissau
 United States of America       | United States
 Macau S.A.R                    | Macau
 Hong Kong S.A.R.               | Hong Kong
 Northern Cyprus                | Cyprus
 Federated States of Micronesia | Micronesia
 Somaliland                     | Somalia
 France                         | Reunion
 Vatican (Holy Sea)             | Vatican
 The Bahamas                    | Bahamas
 Svalbard and Jan Mayen Islands | Svalbard and Jan Mayen
(16 rows)

emilyd=> select L.kode as landkode, B.lnavn navn_i_Bydata, L.navn navn_i_Land
emilyd-> from Bydata B inner join Land L on B.kode=L.kode
emilyd-> where B.lnavn <> L.navn
emilyd-> group by B.lnavn, L.navn, L.kode;
 landkode |         navn_i_bydata          |           navn_i_land            
----------+--------------------------------+----------------------------------
 YT       | France                         | Mayotte
 US       | United States of America       | United States
 RE       | France                         | Reunion
 CD       | Congo (Kinshasa)               | Democratic Republic of the Congo
 GM       | The Gambia                     | Gambia
 HK       | Hong Kong S.A.R.               | Hong Kong
 MO       | Macau S.A.R                    | Macau
 GW       | Guinea Bissau                  | Guinea-Bissau
 CY       | Northern Cyprus                | Cyprus
 FM       | Federated States of Micronesia | Micronesia
 BS       | The Bahamas                    | Bahamas
 VA       | Vatican (Holy Sea)             | Vatican
 SJ       | Svalbard and Jan Mayen Islands | Svalbard and Jan Mayen
 SO       | Somaliland                     | Somalia
 VI       | United States Virgin Islands   | U.S. Virgin Islands
 CG       | Congo (Brazzaville)            | Republic of the Congo
(16 rows)

emilyd=> select B.lnavn navn_i_Bydata, L.navn navn_i_Land, count(*)
emilyd-> from Bydata B inner join Land L on B.kode=L.kode
emilyd-> where B.lnavn <> L.navn
emilyd-> -- helt likt setningen over hit ...
emilyd-> group by B.lnavn, L.navn;
         navn_i_bydata          |           navn_i_land            | count 
--------------------------------+----------------------------------+-------
 Congo (Brazzaville)            | Republic of the Congo            |    17
 Congo (Kinshasa)               | Democratic Republic of the Congo |    88
 The Gambia                     | Gambia                           |     7
 France                         | Mayotte                          |     1
 United States Virgin Islands   | U.S. Virgin Islands              |     1
 Guinea Bissau                  | Guinea-Bissau                    |     8
 United States of America       | United States                    |   769
 Macau S.A.R                    | Macau                            |     1
 Hong Kong S.A.R.               | Hong Kong                        |     1
 Northern Cyprus                | Cyprus                           |     1
 Federated States of Micronesia | Micronesia                       |     1
 Somaliland                     | Somalia                          |     7
 France                         | Reunion                          |     2
 Vatican (Holy Sea)             | Vatican                          |     1
 The Bahamas                    | Bahamas                          |     2
 Svalbard and Jan Mayen Islands | Svalbard and Jan Mayen           |     1
(16 rows)

emilyd=> select B.lnavn , L.navn, count(*) as antall_byer_nær_ekvator
emilyd-> from bydata B inner join Afrikaland A 
emilyd->               on B.kode=A.kode
emilyd->         inner join
emilyd->      Land L   on L.kode=A.kode
emilyd-> where B.brdgr between -0.5 and 0.5
emilyd-> group by B.lnavn, L.navn
emilyd-> order by B.lnavn;
         lnavn         |               navn               | antall_byer_nær_ekvator 
-----------------------+----------------------------------+-------------------------
 Congo (Brazzaville)   | Republic of the Congo            |                       2
 Congo (Kinshasa)      | Democratic Republic of the Congo |                       4
 Gabon                 | Gabon                            |                       2
 Kenya                 | Kenya                            |                      10
 Sao Tome and Principe | Sao Tome and Principe            |                       1
 Somalia               | Somalia                          |                       2
 Uganda                | Uganda                           |                      10
(7 rows)

emilyd=> select L.navn as land,
emilyd->        count(*) as antall_byer_nær_ekvator
emilyd-> from bydata B 
emilyd->         inner join
emilyd->      Land L   on L.kode=B.kode
emilyd-> where B.brdgr between -0.5 and 0.5
emilyd-> group by L.navn
emilyd-> having count(*) > 0
emilyd-> order by L.navn;
               land               | antall_byer_nær_ekvator 
----------------------------------+-------------------------
 Brazil                           |                       3
 Democratic Republic of the Congo |                       4
 Ecuador                          |                       4
 Gabon                            |                       2
 Indonesia                        |                       4
 Kenya                            |                      10
 Peru                             |                       1
 Republic of the Congo            |                       2
 Russia                           |                       1
 Sao Tome and Principe            |                       1
 Somalia                          |                       2
 Uganda                           |                      10
(12 rows)

emilyd=> select L.navn as land,
emilyd->        count(*) as antall_byer_nær_ekvator,
emilyd->        min(B.brdgr) as minst
emilyd-> from bydata B 
emilyd->         inner join
emilyd->      Land L   on L.kode=B.kode
emilyd-> where B.brdgr between -0.5 and 0.5
emilyd-> group by L.navn
emilyd-> having count(*) > 0
emilyd-> order by L.navn;
               land               | antall_byer_nær_ekvator |   minst   
----------------------------------+-------------------------+-----------
 Brazil                           |                       3 | -0.133236
 Democratic Republic of the Congo |                       4 | -0.219587
 Ecuador                          |                       4 | -0.310021
 Gabon                            |                       2 | -0.332914
 Indonesia                        |                       4 | -0.449599
 Kenya                            |                      10 | -0.439626
 Peru                             |                       1 | -0.116596
 Republic of the Congo            |                       2 | -0.479623
 Russia                           |                       1 |         0
 Sao Tome and Principe            |                       1 |  0.333402
 Somalia                          |                       2 | -0.356633
 Uganda                           |                      10 | -0.329607
(12 rows)

emilyd=> select L.navn as land,
emilyd->        count(*) as antall_byer_nær_ekvator,
emilyd->        min(B.brdgr) as minst
emilyd-> from bydata B 
emilyd->         inner join
emilyd->      Land L   on L.kode=B.kode
emilyd-> where B.brdgr between -0.5 and 0.5
emilyd-> group by L.navn
emilyd-> having count(*) > 4
emilyd-> order by L.navn;
  land  | antall_byer_nær_ekvator |   minst   
--------+-------------------------+-----------
 Kenya  |                      10 | -0.439626
 Uganda |                      10 | -0.329607
(2 rows)


