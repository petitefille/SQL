-- SQL 2
-- første del


emilyd=> \i lagdb.sql
psql:lagdb.sql:13: ERROR:  invalid byte sequence for encoding "UTF8": 0xf8
SET
psql:lagdb.sql:18: NOTICE:  view "antbyer" does not exist, skipping
DROP VIEW
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
psql:lagdb.sql:23: NOTICE:  table "afrikaland" does not exist, skipping
DROP TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
           List of relations
 Schema |    Name     | Type  | Owner  
--------+-------------+-------+--------
 landdb | bydata      | table | emilyd
 landdb | land        | table | emilyd
 landdb | landtlfkode | table | emilyd
 landdb | tallforland | table | emilyd
(4 rows)

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

emilyd=> select * from bydata
emilyd-> where kode = 'NO'
emilyd-> order by region, navn;
 navn | ascii | brdgr | lnggr | pop | lnavn | kode | iso3 | region 
------+-------+-------+-------+-----+-------+------+------+--------
(0 rows)

emilyd=> \i lagdb.sql
psql:lagdb.sql:13: ERROR:  invalid byte sequence for encoding "UTF8": 0xf8
SET
psql:lagdb.sql:18: NOTICE:  view "antbyer" does not exist, skipping
DROP VIEW
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
psql:lagdb.sql:23: NOTICE:  table "afrikaland" does not exist, skipping
DROP TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
           List of relations
 Schema |    Name     | Type  | Owner  
--------+-------------+-------+--------
 landdb | bydata      | table | emilyd
 landdb | land        | table | emilyd
 landdb | landtlfkode | table | emilyd
 landdb | tallforland | table | emilyd
(4 rows)

emilyd=> select * from bydata
where kode = 'NO'
order by region, navn;
     navn     |    ascii     |  brdgr  |  lnggr  |   pop   | lnavn  | kode | iso
3 |      region      
--------------+--------------+---------+---------+---------+--------+------+----
--+------------------
 Bærum        | Baerum       | 59.9135 | 11.3472 |  113659 | Norway | NO   | NOR
  | Akershus
 Arendal      | Arendal      | 58.4648 |   8.766 |   30916 | Norway | NO   | NOR
  | Aust-Agder
 Drammen      | Drammen      | 59.7572 | 10.1907 | 85437.5 | Norway | NO   | NOR
  | Buskerud
 Alta         | Alta         | 69.9666 | 23.2417 |   12077 | Norway | NO   | NOR
  | Finnmark
 Hammerfest   | Hammerfest   | 70.6613 |  23.688 |    9967 | Norway | NO   | NOR
  | Finnmark
 Kirkenes     | Kirkenes     |  69.725 | 30.0516 |    2728 | Norway | NO   | NOR
  | Finnmark
 Vadsø        | Vadso        | 70.0966 | 29.7657 |    5139 | Norway | NO   | NOR
  | Finnmark
 Hamar        | Hamar        |   60.82 |  11.069 |   29479 | Norway | NO   | NOR
  | Hedmark
 Bergen       | Bergen       |  60.391 | 5.32452 |  200390 | Norway | NO   | NOR
  | Hordaland
 Vossavangen  | Vossavangen  |   60.63 |   6.441 |    5571 | Norway | NO   | NOR
  | Hordaland
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
 Moss         | Moss         |  59.437 | 10.6692 | 35696.5 | Norway | NO   | NOR  | Ãstfold
(34 rows)

emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> select * from bydata
where kode = 'NO'
order by region, navn;
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
 Moss         | Moss         |  59.437 | 10.6692 | 35696.5 | Norway | NO   | NOR  | Ãstfold
(34 rows)

emilyd=> 
emilyd=> -- retter opp 'Ãstfold':
emilyd=> update bydata
emilyd-> set region = 'Østfold'
emilyd-> where navn = 'Moss';
UPDATE 1
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

emilyd=> select * from bydata
where kode = 'NO'
order by region, navn;
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

emilyd=> select * from bydata
emilyd-> where navn like '_____'
emilyd-> order by navn;
 navn  |  ascii   |   brdgr   |   lnggr    |     pop     |          lnavn           | kode | iso3 |             
   region                
-------+----------+-----------+------------+-------------+--------------------------+------+------+-------------
-------------------------
 'Ataq | 'Ataq    |     14.55 |       46.8 |       37315 | Yemen                    | YE   | YEM  | Shabwah
 Aarau | Aarau    |     47.39 |      8.034 |       15501 | Switzerland              | CH   | CHE  | Aargau
 Abaza | Abaza    |    52.669 |    90.0954 |     17638.5 | Russia                   | RU   | RUS  | Khakass
 Abuja | Abuja    |   9.08333 |    7.53333 |      869068 | Nigeria                  | NG   | NGA  | Federal Capi
tal Territory
 Abuna | Abuna    |  -9.69539 |   -65.3597 |        1929 | Brazil                   | BR   | BRA  | Rondônia
 Accra | Accra    |   5.55003 |  -0.216716 | 2.04213e+06 | Ghana                    | GH   | GHA  | Greater Accr
a
 Adana | Adana    |    36.995 |      35.32 | 1.24544e+06 | Turkey                   | TR   | TUR  | Adana
 Adrar | Adrar    |     27.87 |  -0.289967 |       56910 | Algeria                  | DZ   | DZA  | Adrar
 Afyon | Afyon    |   38.7504 |      30.55 |      151564 | Turkey                   | TR   | TUR  | Afyon
 Agana | Agana    |     13.47 |     144.75 |     61755.5 | Guam                     | GU   | GUM  | 
 Agapa | Agapa    |   71.4504 |      89.25 |          10 | Russia                   | RU   | RUS  | Taymyr
 Agdam | Agdam    |   40.9053 |    45.5564 |           0 | Azerbaijan               | AZ   | AZE  | Tovuz
 Ahvaz | Ahvaz    |     31.28 |      48.72 |      918572 | Iran                     | IR   | IRN  | Khuzestan
 Aigua | Aigua    |     -34.2 |     -54.75 |        2622 | Uruguay                  | UY   | URY  | Maldonado
 Aiken | Aiken    |   33.5495 |   -81.7206 |     36716.5 | United States of America | US   | USA  | South Caroli
na
 Ajmer | Ajmer    |     26.45 |      74.64 |      553948 | India                    | IN   | IND  | Rajasthan
 Aketi | Aketi    |   2.74046 |      23.78 |       46881 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Akita | Akita    |     39.71 |     140.09 |      300962 | Japan                    | JP   | JPN  | Akita
 Akola | Akola    |     20.71 |      77.01 |      466180 | India                    | IN   | IND  | Maharashtra
 Akron | Akron    |   41.0704 |     -81.52 |      451155 | United States of America | US   | USA  | Ohio
 Aksum | Aksum    |   14.1304 |      38.72 |       44368 | Ethiopia                 | ET   | ETH  | Tigray
 Akure | Akure    |    7.2504 |    5.19998 |      420594 | Nigeria                  | NG   | NGA  | Ondo
 Aldan | Aldan    |    58.603 |    125.389 |     18571.5 | Russia                   | RU   | RUS  | Sakha (Yakutia)
 Alert | Alert    |   82.4833 |     -62.25 |        97.5 | Canada                   | CA   | CAN  | Nunavut
 Algha | Algha    |   49.9032 |     57.335 |       28267 | Kazakhstan               | KZ   | KAZ  | Aqtöbe
 Alice | Alice    |   27.7505 |   -98.0705 |       21122 | United States of America | US   | USA  | Texas
 Altay | Altay    |   47.8666 |    88.1166 |      140670 | China                    | CN   | CHN  | Xinjiang Uygur
 Altay | Altay    |   46.3961 |     95.845 |       32488 | Mongolia                 | MN   | MNG  | Govi-Altay
 Alton | Alton    |    38.891 |   -90.1842 |       57386 | United States of America | US   | USA  | Illinois
 Alwar | Alwar    |   27.5454 |    76.6049 |      283228 | India                    | IN   | IND  | Rajasthan
 Amapa | Amapa    |   2.04999 |      -50.8 |        1947 | Brazil                   | BR   | BRA  | Amapá
 Ambon | Ambon    |  -3.71669 |      128.2 |      227561 | Indonesia                | ID   | IDN  | Maluku
 Amman | Amman    |     31.95 |    35.9333 |    1.06e+06 | Jordan                   | JO   | JOR  | Amman
 Anaco | Anaco    |      9.44 |     -64.46 |      100118 | Venezuela                | VE   | VEN  | Anzoátegui
 Ancud | Ancud    |    -41.87 |     -73.83 |       24241 | Chile                    | CL   | CHL  | Los Lagos
 Angol | Angol    |    -37.79 |     -72.71 |     38384.5 | Chile                    | CL   | CHL  | La Araucanía
 Aniak | Aniak    |   61.5787 |   -159.522 |         501 | United States of America | US   | USA  | Alaska
 Ansan | Ansan    |   37.3481 |     126.86 |      695110 | South Korea              | KR   | KOR  | Gyeonggi-do
 Aosta | Aosta    |    45.737 |      7.315 |       34062 | Italy                    | IT   | ITA  | Valle d'Aosta
 Apodi | Apodi    |  -5.65001 |      -37.8 |        8586 | Brazil                   | BR   | BRA  | Rio Grande do Norte
 Apolo | Apolo    |  -14.7196 |     -68.42 |        4189 | Bolivia                  | BO   | BOL  | La Paz
 Aqsay | Aqsay    |   51.1714 |    53.0349 |     30404.5 | Kazakhstan               | KZ   | KAZ  | West Kazakhstan
 Aqtau | Aqtau    |   43.6232 |    51.2365 |        4479 | Kazakhstan               | KZ   | KAZ  | Mangghystau
 Arawa | Arawa    |    -6.228 |    155.566 |       40266 | Papua New Guinea         | PG   | PNG  | North Solomons
 Araxa | Araxa    |  -19.5796 |     -46.95 |     70159.5 | Brazil                   | BR   | BRA  | Minas Gerais
 Arica | Arica    |     -18.5 |     -70.29 |      178446 | Chile                    | CL   | CHL  | Arica y Parinacota
 Arlit | Arlit    |     18.82 |    7.32998 |       90000 | Niger                    | NE   | NER  | Agadez
 Arlon | Arlon    |   49.6833 |     5.8167 |       26179 | Belgium                  | BE   | BEL  | Arlon
 Arras | Arras    |   50.2833 |    2.78333 |     55608.5 | France                   | FR   | FRA  | Nord-Pas-de-Calais
 Arxan | Arxan    |   47.1833 |    119.967 |       32023 | China                    | CN   | CHN  | Nei Mongol
 Asela | Asela    |   7.95041 |    39.1399 |       82240 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Asino | Asino    |   56.9931 |    86.1627 |     24732.5 | Russia                   | RU   | RUS  | Tomsk
 Asosa | Asosa    |    10.067 |    34.5333 |       24192 | Ethiopia                 | ET   | ETH  | Benshangul-Gumaz
 Assab | Assab    |     13.01 |      42.73 |      105496 | Eritrea                  | ER   | ERI  | Debubawi Keyih Bahri
 Assen | Assen    |        53 |       6.55 |       62237 | Netherlands              | NL   | NLD  | Drenthe
 Assis | Assis    |  -22.6596 |     -50.42 |       79133 | Brazil                   | BR   | BRA  | São Paulo
 Aswan | Aswan    |   24.0875 |    32.8989 |      277352 | Egypt                    | EG   | EGY  | Aswan
 Asyut | Asyut    |     27.19 |    31.1799 |      420585 | Egypt                    | EG   | EGY  | Asyut
 Atasu | Atasu    |   48.6903 |    71.6499 |       16400 | Kazakhstan               | KZ   | KAZ  | Qaraghandy
 Avare | Avare    |    -23.11 |     -48.93 |       70709 | Brazil                   | BR   | BRA  | São Paulo
 Awasa | Awasa    |      7.06 |     38.477 |      133097 | Ethiopia                 | ET   | ETH  | 
 Aweil | Aweil    |   8.76656 |       27.4 |       42725 | South Sudan              | SS   | SSD  | North Bahr-al-Ghazal
 Aybak | Aybak    |    36.261 |      68.04 |       24000 | Afghanistan              | AF   | AFG  | Samangan
 Aydin | Aydin    |     37.85 |      27.85 |      180940 | Turkey                   | TR   | TUR  | Aydin
 Azare | Azare    |   11.6804 |      10.19 |     87912.5 | Nigeria                  | NG   | NGA  | Bauchi
 Bacau | Bacau    |   46.5784 |    26.9196 |      185532 | Romania                  | RO   | ROU  | Bacau
 Bafia | Bafia    |   4.75039 |      11.23 |       41201 | Cameroon                 | CM   | CMR  | Centre
 Bafra | Bafra    |   41.5682 |    35.9069 |       95198 | Turkey                   | TR   | TUR  | Samsun
 Bakal | Bakal    |   54.9459 |    58.7959 |     24160.5 | Russia                   | RU   | RUS  | Chelyabinsk
 Balkh | Balkh    |   36.7501 |    66.8997 |      147426 | Afghanistan              | AF   | AFG  | Balkh
 Balti | Balti    |   47.7591 |    27.9053 |      135022 | Moldova                  | MD   | MDA  | Balti
 Banes | Banes    |   20.9629 |   -75.7186 |     47745.5 | Cuba                     | CU   | CUB  | Holguín
 Banff | Banff    |    51.178 |   -115.572 |        6897 | Canada                   | CA   | CAN  | Alberta
 Bannu | Bannu    |    32.989 |    70.5986 |      586210 | Pakistan                 | PK   | PAK  | N.W.F.P.
 Baoji | Baoji    |     34.38 |     107.15 |      800000 | China                    | CN   | CHN  | Shaanxi
 Basel | Basel    |   47.5804 |    7.59002 |      500318 | Switzerland              | CH   | CHE  | Basel-Stadt
 Basra | Basra    |   30.5135 |    47.8136 |      870000 | Iraq                     | IQ   | IRQ  | Al-Basrah
 Batna | Batna    |     35.57 |       6.17 |      269467 | Algeria                  | DZ   | DZA  | Batna
 Bauru | Bauru    |    -22.33 |     -49.08 |      307930 | Brazil                   | BR   | BRA  | São Paulo
 Bawku | Bawku    |   11.0604 |  -0.239996 |       65212 | Ghana                    | GH   | GHA  | Upper East
 Beian | Beian    |    48.239 |    126.482 |      154936 | China                    | CN   | CHN  | Heilongjiang
 Beira | Beira    |    -19.82 |      34.87 |      507196 | Mozambique               | MZ   | MOZ  | Sofala
 Bekiy | Bekiy    |  -24.2162 |    45.3166 |        4286 | Madagascar               | MG   | MDG  | Toliary
 Belem | Belem    |     -1.45 |     -48.48 | 1.78737e+06 | Brazil                   | BR   | BRA  | Pará
 Belen | Belen    |  -27.6496 |   -67.0333 |       11359 | Argentina                | AR   | ARG  | Catamarca
 Belen | Belen    |  -23.4695 |     -57.24 |        6490 | Paraguay                 | PY   | PRY  | Concepción
 Bello | Bello    |   6.32999 |     -75.57 |      456304 | Colombia                 | CO   | COL  | Antioquia
 Benha | Benha    |   30.4667 |    31.1833 |      167029 | Egypt                    | EG   | EGY  | Al Qalyubiyah
 Benxi | Benxi    |   41.3304 |     123.75 |      923933 | China                    | CN   | CHN  | Liaoning
 Berat | Berat    |     40.71 |     19.972 |       46866 | Albania                  | AL   | ALB  | Berat
 Berri | Berri    |  -34.2829 |      140.6 |        4523 | Australia                | AU   | AUS  | South Australia
 Beyla | Beyla    |     8.687 |     -8.657 |       13204 | Guinea                   | GN   | GIN  | Nzerekore
 Bidar | Bidar    |   17.9229 |    77.5175 |      252104 | India                    | IN   | IND  | Karnataka
 Bijar | Bijar    |   35.8741 |    47.5937 |       48806 | Iran                     | IR   | IRN  | Kordestan
 Bikin | Bikin    |   46.8203 |    134.265 |     19264.5 | Russia                   | RU   | RUS  | Khabarovsk
 Binga | Binga    |   2.38341 |      20.42 |       64639 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Birak | Birak    |   27.5333 |    14.2834 |     42432.5 | Libya                    | LY   | LBY  | Ash Shati'
 Birao | Birao    |   10.2837 |    22.7833 |        5641 | Central African Republic | CF   | CAF  | Vakaga
 Birsk | Birsk    |   55.4244 |    55.5443 |       33903 | Russia                   | RU   | RUS  | Bashkortostan
 Bitam | Bitam    |   2.08366 |    11.4834 |       13967 | Gabon                    | GA   | GAB  | Wouleu-Ntem
 Biysk | Biysk    |   52.5341 |      85.18 |      209796 | Russia                   | RU   | RUS  | Altay
 Blida | Blida    |   36.4203 |       2.83 |      388174 | Algeria                  | DZ   | DZA  | Blida
 Boaco | Boaco    |     12.47 |     -85.66 |       21572 | Nicaragua                | NI   | NIC  | Boaco
 Boffa | Boffa    |    10.185 |    -14.043 |        2332 | Guinea                   | GN   | GIN  | Boke
 Bogor | Bogor    |     -6.57 |     106.75 |      859000 | Indonesia                | ID   | IDN  | Jawa Barat
 Bogue | Bogue    |   16.5904 |     -14.27 |       10415 | Mauritania               | MR   | MRT  | Brakna
 Boise | Boise    |   43.6086 |   -116.227 |      242029 | United States of America | US   | USA  | Idaho
 Bombo | Bombo    |  0.583299 |    32.5333 |       48000 | Uganda                   | UG   | UGA  | Bamunanika
 Bonao | Bonao    |    18.942 |    -70.409 |       73269 | Dominican Republic       | DO   | DOM  | Monseñor Nouel
 Bondo | Bondo    |   3.80996 |      23.67 |     20688.5 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Borås | Boras    |   57.7304 |      12.92 |     64115.5 | Sweden                   | SE   | SWE  | Västra Götaland
 Bouar | Bouar    |   5.95001 |       15.6 |     31476.5 | Central African Republic | CF   | CAF  | Nana-Mambéré
 Bowen | Bowen    |  -20.0013 |    148.209 |       10983 | Australia                | AU   | AUS  | Queensland
 Braga | Braga    |    41.555 |   -8.42133 |      504326 | Portugal                 | PT   | PRT  | Braga
 Brest | Brest    |   48.3904 |   -4.49501 |      142914 | France                   | FR   | FRA  | Bretagne
 Brest | Brest    |      52.1 |       23.7 |      266775 | Belarus                  | BY   | BLR  | Brest
 Brits | Brits    |  -25.6296 |      27.78 |       81222 | South Africa             | ZA   | ZAF  | North West
 Brive | Brive    |   45.1504 |    1.53333 |       54457 | France                   | FR   | FRA  | Limousin
 Bryan | Bryan    |   30.6742 |   -96.3697 |      108156 | United States of America | US   | USA  | Texas
 Bumba | Bumba    |   2.18998 |      22.46 |      128030 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Bunia | Bunia    |   1.56041 |      30.24 |       61537 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Burco | Burco    |   9.52039 |      45.54 |      102932 | Somaliland               | SO   | SOL  | 
 Bursa | Bursa    |      40.2 |      29.07 | 1.42554e+06 | Turkey                   | TR   | TUR  | Bursa
 Busan | Busan    |   35.0951 |     129.01 |    3.48e+06 | South Korea              | KR   | KOR  | Busan
 Busia | Busia    |  0.454444 |    34.0758 |       47100 | Uganda                   | UG   | UGA  | Busia
 Butte | Butte    |   46.0039 |   -112.534 |       31478 | United States of America | US   | USA  | Montana
 Buzau | Buzau    |   45.1565 |    26.8065 |      130826 | Romania                  | RO   | ROU  | Buzau
 Bytom | Bytom    |     50.35 |      18.91 |      425716 | Poland                   | PL   | POL  | Silesian
 Bærum | Baerum   |   59.9135 |    11.3472 |      113659 | Norway                   | NO   | NOR  | Akershus
 Cadiz | Cadiz    |   10.9587 |    123.309 |      206105 | Philippines              | PH   | PHL  | Negros Occidental
 Cadiz | Cadiz    |    36.535 |   -6.22501 |      153932 | Spain                    | ES   | ESP  | Andalucía
 Cahul | Cahul    |   45.9079 |    28.1944 |     48949.5 | Moldova                  | MD   | MDA  | Cahul
 Caico | Caico    |  -6.45962 |      -37.1 |       42378 | Brazil                   | BR   | BRA  | Rio Grande do Norte
 Cairo | Cairo    |     30.05 |      31.25 | 9.81381e+06 | Egypt                    | EG   | EGY  | Al Qahirah
 Canas | Canas    |     10.43 |      -85.1 |       15365 | Costa Rica               | CR   | CRI  | Guanacaste
 Casma | Casma    |  -9.44001 |     -78.21 |       27421 | Peru                     | PE   | PER  | Ancash
 Catio | Catio    |   11.2167 |   -15.1667 |        9898 | Guinea Bissau            | GW   | GNB  | Tombali
 Ceres | Ceres    |  -15.3033 |   -49.6052 |     18658.5 | Brazil                   | BR   | BRA  | Goiás
 Ceuta | Ceuta    |    35.889 |     -5.307 |       78674 | Spain                    | ES   | ESP  | Ceuta
 Chauk | Chauk    |   20.9085 |     94.823 |     85016.5 | Myanmar                  | MM   | MMR  | Magway
 Chico | Chico    |   39.7286 |   -121.836 |     83226.5 | United States of America | US   | USA  | California
 Chita | Chita    |    52.055 |    113.465 |      293154 | Russia                   | RU   | RUS  | Chita
 Chlef | Chlef    |   36.1704 |    1.31996 |      449167 | Algeria                  | DZ   | DZA  | Chlef
 Choma | Choma    |  -16.8095 |      26.97 |       42324 | Zambia                   | ZM   | ZMB  | Southern
 Chone | Chone    | -0.689585 |     -80.09 |       40379 | Ecuador                  | EC   | ECU  | Manabi
 Chota | Chota    |  -6.54959 |     -78.65 |       13452 | Peru                     | PE   | PER  | Cajamarca
 Clare | Clare    |  -33.8329 |      138.6 |        2729 | Australia                | AU   | AUS  | South Australia
 Cliza | Cliza    |    -17.59 |     -65.93 |       12235 | Bolivia                  | BO   | BOL  | Cochabamba
 Coari | Coari    |  -4.07997 |     -63.13 |     51897.5 | Brazil                   | BR   | BRA  | Amazonas
 Coban | Coban    |     15.47 |     -90.38 |     59284.5 | Guatemala                | GT   | GTM  | Alta Verapaz
 Colac | Colac    |  -38.3395 |     143.58 |        7450 | Australia                | AU   | AUS  | Victoria
 Colon | Colon    |   9.36502 |    -79.875 |      170488 | Panama                   | PA   | PAN  | Colón
 Colon | Colon    |   22.7196 |   -80.9058 |       40677 | Cuba                     | CU   | CUB  | Matanzas
 Cooma | Cooma    |  -36.2396 |     149.12 |      5661.5 | Australia                | AU   | AUS  | New South Wales
 Corum | Corum    |     40.52 |      34.95 |      168544 | Turkey                   | TR   | TUR  | Çorum
 Cotui | Cotui    |    19.059 |    -70.152 |       41641 | Dominican Republic       | DO   | DOM  | Sánchez Ramírez
 Cowra | Cowra    |  -33.8296 |     148.68 |      5729.5 | Australia                | AU   | AUS  | New South Wales
 Craig | Craig    |   40.5173 |    -107.55 |      9315.5 | United States of America | US   | USA  | Colorado
 Crato | Crato    |   -7.2296 |     -39.42 |      164150 | Brazil                   | BR   | BRA  | Ceará
 Crato | Crato    |   -7.4639 |     -63.04 |      164150 | Brazil                   | BR   | BRA  | Amazonas
 Cubal | Cubal    |  -13.0396 |      14.24 |        4837 | Angola                   | AO   | AGO  | Benguela
 Cuevo | Cuevo    |    -20.45 |     -63.53 |         953 | Bolivia                  | BO   | BOL  | Santa Cruz
 Cusco | Cusco    |   -13.525 |   -71.9722 |      336661 | Peru                     | PE   | PER  | Cusco
 Dabou | Dabou    |   5.32036 |   -4.38995 |       71287 | Ivory Coast              | CI   | CIV  | Lagunes
 Daegu | Daegu    |   35.8668 |    128.607 |    2.46e+06 | South Korea              | KR   | KOR  | Taegu-gwangyoksi
 Dahuk | Dahuk    |   36.8667 |         43 |      620500 | Iraq                     | IQ   | IRQ  | Dihok
 Dakar | Dakar    |   14.7158 |   -17.4731 |  2.5402e+06 | Senegal                  | SN   | SEN  | Dakar
 Dalby | Dalby    |  -27.1939 |    151.266 |      9818.5 | Australia                | AU   | AUS  | Queensland
 Daloa | Daloa    |   6.88998 |      -6.45 |      235410 | Ivory Coast              | CI   | CIV  | Haut-Sassandra
 Daman | Daman    |    20.417 |      72.85 |       39737 | India                    | IN   | IND  | Dadra and Nagar Haveli
 Dar'a | Dar'a    |    32.625 |     36.105 |      122225 | Syria                    | SY   | SYR  | Dar`a
 Davao | Davao    |   7.11002 |     125.63 | 1.30725e+06 | Philippines              | PH   | PHL  | Davao Del Sur
 David | David    |   8.43332 |   -82.4333 |       96448 | Panama                   | PA   | PAN  | Chiriquí
 Dawei | Dawei    |    14.098 |     98.195 |      141498 | Myanmar                  | MM   | MMR  | Tanintharyi
 Dawra | Dawra    |   27.4629 |   -12.9922 |          10 | Morocco                  | MA   | MAR  | Laâyoune - Boujdour - Sa
kia El Hamra
 Dedza | Dedza    |  -14.3667 |    34.3333 |       15608 | Malawi                   | MW   | MWI  | Dedza
 Delhi | Delhi    |     28.67 |      77.23 | 1.17796e+07 | India                    | IN   | IND  | Delhi
 Demba | Demba    |   -5.5096 |      22.26 |     17008.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Denow | Denow    |   38.2772 |    67.8872 |      143134 | Uzbekistan               | UZ   | UZB  | Surkhandarya
 Derby | Derby    |     -17.3 |    123.967 |        3199 | Australia                | AU   | AUS  | Western Australia
 Dhaka | Dhaka    |   23.7231 |    90.4086 | 9.89917e+06 | Bangladesh               | BD   | BGD  | Dhaka
 Dhule | Dhule    |      20.9 |      74.77 |      423026 | India                    | IN   | IND  | Maharashtra
 Diffa | Diffa    |   13.3171 |    12.6089 |       29468 | Niger                    | NE   | NER  | Diffa
 Digby | Digby    |   44.6226 |   -65.7605 |      3000.5 | Canada                   | CA   | CAN  | Nova Scotia
 Dijon | Dijon    |   47.3304 |    5.03002 |      159864 | France                   | FR   | FRA  | Bourgogne
 Djado | Djado    |    21.015 |    12.3075 |          10 | Niger                    | NE   | NER  | Agadez
 Djibo | Djibo    |    14.099 |     -1.627 |       22223 | Burkina Faso             | BF   | BFA  | Soum
 Dondo | Dondo    |  -9.69002 |      14.43 |        2353 | Angola                   | AO   | AGO  | Cuanza Norte
 Dondo | Dondo    |  -19.6196 |      34.73 |     75217.5 | Mozambique               | MZ   | MOZ  | Sofala
 Dosso | Dosso    |     13.05 |        3.2 |     46481.5 | Niger                    | NE   | NER  | Dosso
 Douma | Duma     |   33.5833 |       36.4 |      406912 | Syria                    | SY   | SYR  | Damascus
 Dover | Dover    |   39.1581 |   -75.5247 |     54662.5 | United States of America | US   | USA  | Delaware
 Dover | Dover    |   51.1337 |    1.30001 |       32270 | United Kingdom           | GB   | GBR  | Kent
 Dubai | Dubai    |     25.23 |      55.28 | 1.25817e+06 | United Arab Emirates     | AE   | ARE  | Dubay
 Dubbo | Dubbo    |    -32.26 |    148.597 |     30467.5 | Australia                | AU   | AUS  | New South Wales
 Dulan | Dulan    |   36.1666 |    98.2666 |          50 | China                    | CN   | CHN  | Gansu
 Dumas | Dumas    |   35.8624 |   -101.967 |     13551.5 | United States of America | US   | USA  | Texas
 Dundo | Dundo    |  -7.38003 |      20.83 |       11985 | Angola                   | AO   | AGO  | Lunda Norte
 Dutse | Dutse    |   11.7992 |    9.35033 |       17129 | Nigeria                  | NG   | NGA  | Jigawa
 Eagle | Eagle    |    64.788 |     -141.2 |         104 | United States of America | US   | USA  | Alaska
 Elgin | Elgin    |   42.0395 |   -88.2899 |      244050 | United States of America | US   | USA  | Illinois
 Emden | Emden    |   53.3667 |    7.21665 |       49786 | Germany                  | DE   | DEU  | Niedersachsen
 Enugu | Enugu    |   6.45003 |        7.5 |      688862 | Nigeria                  | NG   | NGA  | Enugu
 Ertis | Ertis    |   53.3453 |    75.4499 |        6311 | Kazakhstan               | KZ   | KAZ  | Pavlodar
 Eseka | Eseka    |   3.65041 |    10.7666 |       14102 | Cameroon                 | CM   | CMR  | Centre
 Essen | Essen    |     51.45 |    7.01662 |  1.1578e+06 | Germany                  | DE   | DEU  | Nordrhein-Westfalen
 Evora | Evora    |     38.56 |     -7.906 |       55620 | Portugal                 | PT   | PRT  | Évora
 Falun | Falun    |    60.613 |     15.647 |       36477 | Sweden                   | SE   | SWE  | Dalarna
 Farah | Farah    |   32.3917 |    62.0968 |       58604 | Afghanistan              | AF   | AFG  | Farah
 Fargo | Fargo    |   46.8772 |   -96.7894 |      127472 | United States of America | US   | USA  | North Dakota
 Farim | Farim    |    12.493 |    -15.227 |        6792 | Guinea Bissau            | GW   | GNB  | Oio
 Flint | Flint    |   43.0129 |   -83.6875 |      206235 | United States of America | US   | USA  | Michigan
 Frias | Frias    |  -28.6496 |     -65.15 |       13594 | Argentina                | AR   | ARG  | Santiago del Estero
 Fujin | Fujin    |   47.2704 |     132.02 |     80092.5 | China                    | CN   | CHN  | Heilongjiang
 Fukui | Fukui    |   36.0704 |     136.22 |      241288 | Japan                    | JP   | JPN  | Fukui
 Fulin | Fulin    |     29.35 |    102.717 |        1049 | China                    | CN   | CHN  | Sichuan
 Furth | Furth    |     49.47 |         11 |      174934 | Germany                  | DE   | DEU  | Bayern
 Fuxin | Fuxin    |   42.0105 |     121.66 |      729525 | China                    | CN   | CHN  | Liaoning
 Gabes | Gabes    |   33.9004 |       10.1 |      164796 | Tunisia                  | TN   | TUN  | Gabès
 Gafsa | Gafsa    |   34.4204 |    8.78002 |      104018 | Tunisia                  | TN   | TUN  | Gafsa
 Galle | Galle    |   6.03001 |      80.24 |       96298 | Sri Lanka                | LK   | LKA  | Galle
 Gamba | Gamba    |  -2.65003 |         10 |      7230.5 | Gabon                    | GA   | GAB  | Ogooué-Maritime
 Ganca | Ganca    |    40.685 |      46.35 |      301700 | Azerbaijan               | AZ   | AZE  | Ganca
 Gaoua | Gaoua    |    10.325 |     -3.174 |       28023 | Burkina Faso             | BF   | BFA  | Poni
 Garca | Garca    |    -22.22 |     -49.66 |       38460 | Brazil                   | BR   | BRA  | São Paulo
 Gaspe | Gaspe    |   48.8373 |   -64.4934 |        3504 | Canada                   | CA   | CAN  | Québec
 Geita | Geita    |   -2.8662 |    32.1666 |        1536 | Tanzania                 | TZ   | TZA  | Mwanza
 Gejiu | Gejiu    |     23.38 |     103.15 |      142620 | China                    | CN   | CHN  | Yunnan
 Genoa | Genoa    |     44.41 |    8.93004 |      624724 | Italy                    | IT   | ITA  | Liguria
 Gijon | Gijon    |     43.53 |      -5.67 |      303712 | Spain                    | ES   | ESP  | Principado de Asturias
 Gimbi | Gimbi    |   9.16702 |    35.8333 |     22423.5 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Gimli | Gimli    |   50.6333 |        -97 |        2316 | Canada                   | CA   | CAN  | Manitoba
 Girga | Girga    |   26.3304 |      31.88 |      115476 | Egypt                    | EG   | EGY  | Suhaj
 Giyon | Giyon    |   8.53042 |      37.97 |       76464 | Ethiopia                 | ET   | ETH  | Addis Ababa
 Gombe | Gombe    |   10.2904 |      11.17 |      260312 | Nigeria                  | NG   | NGA  | Gombe
 Goure | Goure    |   13.9874 |      10.27 |     13291.5 | Niger                    | NE   | NER  | Zinder
 Guapi | Guapi    |    2.5604 |     -77.86 |       13853 | Colombia                 | CO   | COL  | Cauca
 Guide | Guide    |   36.0451 |    101.424 |        7642 | China                    | CN   | CHN  | Gansu
 Gusau | Gusau    |   12.1704 |       6.66 |      185925 | Nigeria                  | NG   | NGA  | Zamfara
 Gweru | Gweru    |    -19.45 |      29.82 |      164716 | Zimbabwe                 | ZW   | ZWE  | Midlands
 Gävle | Gavle    |    60.667 |    17.1666 |     68235.5 | Sweden                   | SE   | SWE  | Gävleborg
 Haeju | Haeju    |   38.0394 |    125.714 |      223314 | North Korea              | KP   | PRK  | Hwanghae-namdo
 Haifa | Haifa    |   32.8204 |      34.98 |      639150 | Israel                   | IL   | ISR  | Haifa
 Haiya | Haiya    |   18.3362 |    36.3842 |       17409 | Sudan                    | SD   | SDN  | Red Sea
 Hakha | Haka     |     22.65 |    93.6167 |       20000 | Myanmar                  | MM   | MMR  | Chin
 Hamah | Hamah    |   35.1503 |      36.73 |      439796 | Syria                    | SY   | SYR  | Hamah
 Hamar | Hamar    |     60.82 |     11.069 |       29479 | Norway                   | NO   | NOR  | Hedmark
 Hangu | Hangu    |    39.232 |    117.777 |      270581 | China                    | CN   | CHN  | Tianjin
 Hania | Hania    |   35.5122 |    24.0156 |     66646.5 | Greece                   | GR   | GRC  | Kriti
 Hanoi | Hanoi    |   21.0333 |     105.85 | 2.90464e+06 | Vietnam                  | VN   | VNM  | Thái Nguyên
 Haora | Haora    |   22.5804 |    88.3299 | 2.93466e+06 | India                    | IN   | IND  | West Bengal
 Hapur | Hapur    |   28.7437 |    77.7628 |      242920 | India                    | IN   | IND  | Uttar Pradesh
 Harar | Harar    |   9.31996 |      42.15 |      161150 | Ethiopia                 | ET   | ETH  | Harari
 Hatay | Hatay    |   36.2304 |      36.12 |      305564 | Turkey                   | TR   | TUR  | Hatay
 Havre | Havre    |   48.5452 |   -109.678 |     10266.5 | United States of America | US   | USA  | Montana
 Hechi | Hechi    |   23.0965 |    109.609 | 3.27519e+06 | China                    | CN   | CHN  | Guangxi
 Hefei | Hefei    |     31.85 |     117.28 | 1.71195e+06 | China                    | CN   | CHN  | Anhui
 Heihe | Heihe    |     50.25 |    127.446 |       54923 | China                    | CN   | CHN  | Heilongjiang
 Herat | Herat    |     34.33 |      62.17 |      439232 | Afghanistan              | AF   | AFG  | Hirat
 Hisar | Hisar    |     29.17 |     75.725 |      423039 | India                    | IN   | IND  | Haryana
 Hobbs | Hobbs    |   32.7126 |   -103.141 |     28375.5 | United States of America | US   | USA  | New Mexico
 Homer | Homer    |   59.6429 |   -151.548 |      5021.5 | United States of America | US   | USA  | Alaska
 Honda | Honda    |   5.19034 |     -74.75 |     31813.5 | Colombia                 | CO   | COL  | Tolima
 Horta | Horta    |   38.5347 |   -28.6448 |      6591.5 | Portugal                 | PT   | PRT  | Azores
 Hotan | Hotan    |   37.0997 |    79.9269 |      187865 | China                    | CN   | CHN  | Xinjiang Uygur
 Houma | Houma    |     35.62 |     111.21 |      102400 | China                    | CN   | CHN  | Shanxi
 Houma | Houma    |   29.5959 |   -90.7195 |       48196 | United States of America | US   | USA  | Louisiana
 Hubli | Hubli    |     15.36 |     75.125 |      841402 | India                    | IN   | IND  | Karnataka
 Hudur | Xuddur   |    4.1833 |    43.8667 |        1639 | Somalia                  | SO   | SOM  | Bakool
 Huize | Huize    |   26.3504 |    103.417 |        5170 | China                    | CN   | CHN  | Yunnan
 Hulin | Hulin    |    45.769 |    132.992 |       42559 | China                    | CN   | CHN  | Heilongjiang
 Idlib | Idlib    |   35.9297 |    36.6317 |      115786 | Syria                    | SY   | SYR  | Idlib
 Igrim | Igrim    |   63.1933 |    64.4194 |        9545 | Russia                   | RU   | RUS  | Khanty-Mansiy
 Ihosy | Ihosy    |  -22.3996 |    46.1167 |       13902 | Madagascar               | MG   | MDG  | Fianarantsoa
 Ikare | Ikare    |   7.53043 |       5.76 |      899966 | Nigeria                  | NG   | NGA  | Ondo
 Ikela | Ikela    |  -1.18294 |    23.2666 |         291 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Iksan | Iksan    |    35.941 |    126.945 |      261545 | South Korea              | KR   | KOR  | Jeollabuk-do
 Ilave | Ilave    |  -16.0796 |     -69.67 |       16033 | Peru                     | PE   | PER  | Callao
 Ilebo | Ilebo    |   -4.3196 |      20.61 |     71125.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Ipora | Ipora    |    -16.45 |     -51.13 |       23354 | Brazil                   | BR   | BRA  | Goiás
 Irati | Irati    |    -25.47 |     -50.66 |       41602 | Brazil                   | BR   | BRA  | Paraná
 Irbid | Irbid    |     32.55 |      35.85 |      471020 | Jordan                   | JO   | JOR  | Irbid
 Irbil | Irbil    |    36.179 |    44.0086 |      795870 | Iraq                     | IQ   | IRQ  | Arbil
 Irece | Irece    |     -11.3 |     -41.87 |     48079.5 | Brazil                   | BR   | BRA  | Bahia
 Ishim | Ishim    |   56.1502 |    69.4498 |       60798 | Russia                   | RU   | RUS  | Tyumen'
 Isiro | Isiro    |   2.75997 |      27.62 |      142136 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Itigi | Itigi    |  -5.69961 |      34.48 |       11534 | Tanzania                 | TZ   | TZA  | Singida
 Ituni | Ituni    |   5.43002 |     -58.25 |          75 | Guyana                   | GY   | GUY  | Upper Takutu-Upper Essequibo
 Ivdel | Ivdel    |   60.6936 |    60.4133 |     11466.5 | Russia                   | RU   | RUS  | Sverdlovsk
 Iwaki | Iwaki    |   37.0553 |     140.89 |      324677 | Japan                    | JP   | JPN  | Fukushima
 Izmir | Izmir    |   38.4361 |    27.1518 | 2.45491e+06 | Turkey                   | TR   | TUR  | Izmir
 Izmit | Kocaeli  |    40.776 |    29.9306 |      383558 | Turkey                   | TR   | TUR  | Kocaeli
 Jambi | Jambi    |  -1.58999 |     103.61 |      438706 | Indonesia                | ID   | IDN  | Jambi
 Jammu | Jammu    |   32.7118 |    74.8467 |      628284 | India                    | IN   | IND  | Jammu and Kashmir
 Jaque | Jaque    |   7.51896 |    -78.166 |         955 | Panama                   | PA   | PAN  | Darién
 Jatai | Jatai    |  -17.8796 |     -51.75 |       57135 | Brazil                   | BR   | BRA  | Goiás
 Jauja | Jauja    |  -11.7996 |      -75.5 |       21057 | Peru                     | PE   | PER  | Junín
 Jhang | Jhang    |   31.2804 |     72.325 |      341210 | Pakistan                 | PK   | PAK  | Punjab
 Jijel | Jijel    |    36.822 |      5.766 |      148000 | Algeria                  | DZ   | DZA  | Jijel
 Jilin | Jilin    |     43.85 |     126.55 | 2.13899e+06 | China                    | CN   | CHN  | Jilin
 Jinan | Jinan    |    36.675 |    116.995 | 2.43363e+06 | China                    | CN   | CHN  | Shandong
 Jinja | Jinja    |  0.440424 |    33.1999 |      195660 | Uganda                   | UG   | UGA  | Jinja
 Jinxi | Jinxi    |   40.7503 |     120.83 | 1.36962e+06 | China                    | CN   | CHN  | Liaoning
 Jizan | Jizan    |   16.9066 |    42.5566 |      100397 | Saudi Arabia             | SA   | SAU  | Jizan
 Juina | Juina    |  -11.3996 |      -59.5 |         980 | Brazil                   | BR   | BRA  | Mato Grosso
 Jumla | Jumla    |     29.25 |    82.2167 |        9073 | Nepal                    | NP   | NPL  | Karnali
 Junin | Junin    |  -11.1496 |     -76.01 |       11495 | Peru                     | PE   | PER  | Junín
 Junin | Junin    |  -34.5846 |   -60.9589 |     66141.5 | Argentina                | AR   | ARG  | Ciudad de Buenos Aires
 Kabul | Kabul    |   34.5167 |    69.1833 | 3.16027e+06 | Afghanistan              | AF   | AFG  | Kabul
 Kabwe | Kabwe    |    -14.44 |      28.45 |      188667 | Zambia                   | ZM   | ZMB  | Central
 Kaedi | Kaedi    |     16.15 |      -13.5 |       21656 | Senegal                  | SN   | SEN  | Matam
 Kafue | Kafue    |    -15.78 |      28.18 |     25725.5 | Zambia                   | ZM   | ZMB  | Southern
 Kailu | Kailu    |   43.5837 |      121.2 |        2809 | China                    | CN   | CHN  | Nei Mongol
 Kanab | Kanab    |   37.0474 |   -112.525 |        2861 | United States of America | US   | USA  | Utah
 Kandi | Kandi    |   11.1304 |    2.94002 |       73483 | Benin                    | BJ   | BEN  | Alibori
 Kandy | Kandy    |   7.27998 |      80.67 |      111701 | Sri Lanka                | LK   | LKA  | Kandy
 Kansk | Kansk    |     56.19 |      95.71 |     94420.5 | Russia                   | RU   | RUS  | Krasnoyarsk
 Kanye | Kanye    |  -24.9696 |      25.34 |     45773.5 | Botswana                 | BW   | BWA  | Southern
 Kaoma | Kaoma    |  -14.7796 |       24.8 |        7259 | Zambia                   | ZM   | ZMB  | Western
 Kapan | Kapan    |   39.2015 |     46.415 |       37724 | Azerbaijan               | AZ   | AZE  | Z?ngilan
 Karaj | Karaj    |   35.8004 |      50.97 |   1.423e+06 | Iran                     | IR   | IRN  | Tehran
 Karoi | Karoi    |  -16.8196 |      29.68 |       13194 | Zimbabwe                 | ZW   | ZWE  | Mashonaland West
 Karur | Karur    |   10.9504 |    78.0833 |       76915 | India                    | IN   | IND  | Tamil Nadu
 Kasur | Kasur    |   31.1254 |     74.455 |      290643 | Pakistan                 | PK   | PAK  | Punjab
 Katwe | Katwe    | -0.129619 |      29.92 |        1957 | Uganda                   | UG   | UGA  | Kasese
 Kayes | Kayes    |  -4.18002 |      13.28 |       60629 | Congo (Brazzaville)      | CG   | COG  | Bouenza
 Kayes | Kayes    |     14.45 |     -11.44 |       77207 | Mali                     | ML   | MLI  | Kayes
 Kazan | Kazan    |   55.7499 |    49.1263 | 1.01364e+06 | Russia                   | RU   | RUS  | Tatarstan
 Keffi | Keffi    |   8.84903 |    7.87362 |     77056.5 | Nigeria                  | NG   | NGA  | Nassarawa
 Kenai | Kenai    |   60.5544 |   -151.258 |      6580.5 | United States of America | US   | USA  | Alaska
 Kenge | Kenge    |  -4.82959 |    16.8999 |         241 | Congo (Kinshasa)         | CD   | COD  | Bandundu
 Kerch | Kerch    |   45.3685 |    36.4881 |      133972 | Ukraine                  | UA   | UKR  | Crimea
 Keren | Keren    |   15.6804 |      38.45 |      148242 | Eritrea                  | ER   | ERI  | Semenawi Keyih Bahri
 Kerma | Kerma    |   19.6337 |    30.4166 |        3928 | Sudan                    | SD   | SDN  | Northern
 Khiwa | Khiwa    |   41.3911 |    60.3557 |      102659 | Uzbekistan               | UZ   | UZB  | Khorezm
 Khvoy | Khvoy    |   38.5304 |      44.97 |      189049 | Iran                     | IR   | IRN  | West Azarbaijan
 Kiama | Kiama    |  -34.7096 |     150.84 |       10379 | Australia                | AU   | AUS  | New South Wales
 Kieta | Kieta    |  -6.21628 |    155.633 |      5284.5 | Papua New Guinea         | PG   | PNG  | North Solomons
 Kiffa | Kiffa    |     16.62 |      -11.4 |       73930 | Mauritania               | MR   | MRT  | Assaba
 Kilis | Kilis    |   36.7204 |      37.12 |       73320 | Turkey                   | TR   | TUR  | Gaziantep
 Kimba | Kimba    |  -33.1496 |    136.433 |         636 | Australia                | AU   | AUS  | South Australia
 Kimbe | Kimbe    |     -5.55 |    150.143 |       18847 | Papua New Guinea         | PG   | PNG  | West New Britain
 Kimry | Kimry    |   56.8691 |    37.3444 |       50531 | Russia                   | RU   | RUS  | Tver'
 Kindu | Kindu    |  -2.96392 |      25.91 |      199306 | Congo (Kinshasa)         | CD   | COD  | Maniema
 Kirov | Kirov    |   58.5901 |      49.67 |      457410 | Russia                   | RU   | RUS  | Kirov
 Kirov | Kirov    |   54.0852 |    34.3048 |       33852 | Russia                   | RU   | RUS  | Kaluga
 Kisii | Kisii    | -0.669586 |      34.76 |       28547 | Kenya                    | KE   | KEN  | Nyanza
 Kitwe | Kitwe    |    -12.81 |      28.22 |      402908 | Zambia                   | ZM   | ZMB  | Copperbelt
 Kizel | Kizel    |   59.0644 |    57.6343 |       21971 | Russia                   | RU   | RUS  | Perm'
 Kobuk | Kobuk    |   66.9072 |   -156.881 |         151 | United States of America | US   | USA  | Alaska
 Kochi | Kochi    |    10.015 |    76.2239 | 1.06185e+06 | India                    | IN   | IND  | Kerala
 Kochi | Kochi    |   33.5624 |    133.538 |      323095 | Japan                    | JP   | JPN  | Kochi
 Kogon | Kogon    |   39.7211 |    64.5458 |       85093 | Uzbekistan               | UZ   | UZB  | Bukhoro
 Kohat | Kohat    |   33.6027 |    71.4327 |      247227 | Pakistan                 | PK   | PAK  | N.W.F.P.
 Koidu | Koidu    |   8.44048 |     -10.85 |     45307.5 | Sierra Leone             | SL   | SLE  | Eastern
 Kolar | Kolar    |   13.1337 |    78.1334 |      135533 | India                    | IN   | IND  | Karnataka
 Kolda | Kolda    |   12.9104 |     -14.95 |       64038 | Senegal                  | SN   | SEN  | Kolda
 Komsa | Komsa    |    61.868 |    89.2577 |          10 | Russia                   | RU   | RUS  | Krasnoyarsk
 Konya | Konya    |    37.875 |     32.475 |      718680 | Turkey                   | TR   | TUR  | Konya
 Konza | Konza    |  -1.74962 |      37.12 |        2004 | Kenya                    | KE   | KEN  | Rift Valley
 Korce | Korce    |   40.6167 |    20.7667 |       58259 | Albania                  | AL   | ALB  | Korçë
 Korla | Korla    |     41.73 |      86.15 |      192919 | China                    | CN   | CHN  | Xinjiang Uygur
 Koror | Koror    |   7.34523 |    134.469 |       11200 | Palau                    | PW   | PLW  | 
 Kosti | Kosti    |     13.17 |      32.66 |      274463 | Sudan                    | SD   | SDN  | White Nile
 Kovda | Kovda    |   66.6903 |    32.8702 |          20 | Russia                   | RU   | RUS  | Murmansk
 Kovel | Kovel    |   51.2171 |    24.7166 |     68850.5 | Ukraine                  | UA   | UKR  | Volyn
 Koyuk | Koyuk    |   64.9403 |   -161.157 |         254 | United States of America | US   | USA  | Alaska
 Krabi | Krabi    |     8.052 |     98.912 |       31219 | Thailand                 | TH   | THA  | Krabi
 Kribi | Kribi    |   2.94043 |    9.91003 |       31473 | Cameroon                 | CM   | CMR  | Sud
 Kruje | Kruje    |    41.519 |     19.797 |       21286 | Albania                  | AL   | ALB  | Durrës
 Kuito | Kuito    |    -12.38 |      16.94 |      113955 | Angola                   | AO   | AGO  | Bié
 Kukes | Kukes    |    42.083 |     20.434 |       17832 | Albania                  | AL   | ALB  | Kukës
 Kulob | Kulob    |   37.9212 |    69.7757 |       96975 | Tajikistan               | TJ   | TJK  | Khatlon
 Kumba | Kumba    |   4.64037 |    9.43998 |      131122 | Cameroon                 | CM   | CMR  | Sud-Ouest
 Kumbo | Kumbo    |   6.22038 |      10.68 |       89728 | Cameroon                 | CM   | CMR  | Nord-Ouest
 Kursk | Kursk    |     51.74 |      36.19 |      398742 | Russia                   | RU   | RUS  | Kursk
 Kyoto | Kyoto    |     35.03 |     135.75 | 1.63232e+06 | Japan                    | JP   | JPN  | Kyoto
 Kyzyl | Kyzyl    |   51.7067 |    94.3831 |      106310 | Russia                   | RU   | RUS  | Tuva
 Lafia | Lafia    |   8.49042 |    8.52004 |     79470.5 | Nigeria                  | NG   | NGA  | Nassarawa
 Lagos | Lagos    |   6.44326 |    3.39153 | 4.73377e+06 | Nigeria                  | NG   | NGA  | Lagos
 Lahat | Lahat    |  -3.80004 |    103.533 |     50469.5 | Indonesia                | ID   | IDN  | Sumatera Selatan
 Lahij | Lahij    |   13.0582 |    44.8838 |     44831.5 | Yemen                    | YE   | YEM  | Lahij
 Lahti | Lahti    |   60.9939 |    25.6649 |       97508 | Finland                  | FI   | FIN  | Päijänne Tavastia
 Laiwu | Laiwu    |   36.2004 |     117.66 |      124108 | China                    | CN   | CHN  | Shandong
 Lajes | Lajes    |  -27.8096 |     -50.31 |      139972 | Brazil                   | BR   | BRA  | Santa Catarina
 Lamar | Lamar    |   38.0865 |   -102.619 |        8567 | United States of America | US   | USA  | Colorado
 Lamas | Lamas    |  -6.43001 |     -76.52 |       13098 | Peru                     | PE   | PER  | San Martín
 Lamia | Lamia    |    38.899 |     22.434 |       47246 | Greece                   | GR   | GRC  | Stereá Elláda
 Lanxi | Lanxi    |   46.2664 |    126.276 |       67011 | China                    | CN   | CHN  | Heilongjiang
 Laoag | Laoag    |   18.1988 |    120.594 |      154576 | Philippines              | PH   | PHL  | Ilocos Norte
 Latur | Latur    |   18.4004 |      76.57 |      361680 | India                    | IN   | IND  | Maharashtra
 Lecce | Lecce    |   40.3604 |      18.15 |      122942 | Italy                    | IT   | ITA  | Apulia
 Leeds | Leeds    |     53.83 |   -1.58002 |      992062 | United Kingdom           | GB   | GBR  | West Yorkshire
 Lensk | Lensk    |   60.7253 |    114.947 |     24641.5 | Russia                   | RU   | RUS  | Sakha (Yakutia)
 Levin | Levin    |  -40.6124 |    175.277 |       18764 | New Zealand              | NZ   | NZL  | Manawatu-Wanganui
 Lezhe | Lezhe    |    41.788 |     19.654 |       18695 | Albania                  | AL   | ALB  | Lezhë
 Lhasa | Lhasa    |    29.645 |       91.1 |      169160 | China                    | CN   | CHN  | Xizang
 Liege | Liege    |     50.63 |    5.58001 |      472803 | Belgium                  | BE   | BEL  | Liege
 Lihue | Lihue    |   21.9815 |   -159.371 |     10694.5 | United States of America | US   | USA  | Hawaii
 Lille | Lille    |     50.65 |    3.08001 |      636164 | France                   | FR   | FRA  | Nord-Pas-de-Calais
 Limbe | Limbe    |   4.03039 |    9.19002 |      142290 | Cameroon                 | CM   | CMR  | Sud-Ouest
 Lindi | Lindi    |       -10 |       39.7 |     27953.5 | Tanzania                 | TZ   | TZA  | Lindi
 Linxi | Linxi    |   43.5171 |    118.033 |         679 | China                    | CN   | CHN  | Nei Mongol
 Linyi | Linyi    |     35.08 |     118.33 | 1.17633e+06 | China                    | CN   | CHN  | Shandong
 Liuhe | Liuhe    |   42.2789 |    125.717 |     67956.5 | China                    | CN   | CHN  | Jilin
 Livny | Livny    |   52.4248 |    37.6044 |     52277.5 | Russia                   | RU   | RUS  | Orel
 Llica | Llica    |  -19.8496 |     -68.25 |         553 | Bolivia                  | BO   | BOL  | Potosí
 Lobos | Lobos    |  -35.1849 |   -59.0947 |       18278 | Argentina                | AR   | ARG  | Ciudad de Buenos Aires
 Lodja | Lodja    |  -3.48962 |      23.42 |       68244 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Logan | Logan    |   41.7359 |   -111.834 |       58664 | United States of America | US   | USA  | Utah
 Lorca | Lorca    |   37.6886 |   -1.69851 |     56541.5 | Spain                    | ES   | ESP  | Región de Murcia
 Louga | Louga    |   15.6104 |     -16.25 |       85075 | Senegal                  | SN   | SEN  | Louga
 Lovec | Lovec    |    43.138 |     24.719 |       42211 | Bulgaria                 | BG   | BGR  | Lovech
 Lubao | Lubao    |  -5.38956 |      25.75 |     26142.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Oriental
 Lucea | Lucea    |    18.443 |    -78.179 |        6289 | Jamaica                  | JM   | JAM  | Hanover
 Luebo | Luebo    |  -5.34951 |      21.41 |     17682.5 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Luena | Luena    |    -11.79 |       19.9 |     17276.5 | Angola                   | AO   | AGO  | Moxico
 Lujan | Lujan    |  -34.5796 |     -59.11 |     69744.5 | Argentina                | AR   | ARG  | Ciudad de Buenos Aires
 Luleå | Lulea    |   65.5966 |    22.1584 |     47094.5 | Sweden                   | SE   | SWE  | Norrbotten
 Luohe | Luohe    |     33.57 |     114.03 |      417356 | China                    | CN   | CHN  | Henan
 Luton | Luton    |   51.8804 |  -0.420011 |      214814 | United Kingdom           | GB   | GBR  | Luton
 Lutsk | Lutsk    |   50.7472 |    25.3334 |      211980 | Ukraine                  | UA   | UKR  | Volyn
 Luwuk | Luwuk    | -0.939595 |     122.79 |     43550.5 | Indonesia                | ID   | IDN  | Sulawesi Tengah
 Luxor | Luxor    |      25.7 |      32.65 |      548572 | Egypt                    | EG   | EGY  | Qina
 Ma'an | Ma'an    |    30.192 |     35.736 |       50350 | Jordan                   | JO   | JOR  | Ma`an
 Macae | Macae    |    -22.38 |     -41.79 |      133083 | Brazil                   | BR   | BRA  | Rio de Janeiro
 Macas | Macas    |  -2.30959 |     -78.12 |       20644 | Ecuador                  | EC   | ECU  | Morona Santiago
 Macau | Macau    |    22.203 |    113.545 |      568700 | Macau S.A.R              | MO   | MAC  | 
 Macia | Macia    |  -25.0195 |      33.09 |       13095 | Mozambique               | MZ   | MOZ  | Gaza
 Macon | Macon    |   32.8504 |   -83.6301 |      104932 | United States of America | US   | USA  | Georgia
 Mainz | Mainz    |   49.9825 |    8.27322 |      184997 | Germany                  | DE   | DEU  | Rheinland-Pfalz
 Malmö | Malmo    |   55.5833 |    13.0333 |      265448 | Sweden                   | SE   | SWE  | Skåne
 Mamou | Mamou    |   10.3804 |      -12.1 |       56386 | Guinea                   | GN   | GIN  | Mamou
 Manga | Manga    |    11.662 |     -1.065 |       15173 | Burkina Faso             | BF   | BFA  | Zoundwéogo
 Mango | Mango    |   10.3596 |   0.470813 |       40187 | Togo                     | TG   | TGO  | Savanes
 Manja | Manja    |  -21.4329 |    44.3333 |        1536 | Madagascar               | MG   | MDG  | Toliary
 Manpo | Manpo    |   41.1454 |    126.296 |      186827 | North Korea              | KP   | PRK  | Chagang-do
 Mansa | Mansa    |     -11.2 |      28.89 |       31357 | Zambia                   | ZM   | ZMB  | Luapula
 Manta | Manta    | -0.980006 |     -80.73 |      176941 | Ecuador                  | EC   | ECU  | Manabi
 Mapai | Mapai    |  -22.8427 |    31.9631 |         201 | Mozambique               | MZ   | MOZ  | Gaza
 Maqat | Maqat    |   47.6482 |    53.3265 |       12169 | Kazakhstan               | KZ   | KAZ  | Atyrau
 Marib | Marib    |    15.421 |     45.334 |       16794 | Yemen                    | YE   | YEM  | Ma'rib
 Marka | Marka    |   1.77657 |    44.8533 |        1958 | Somalia                  | SO   | SOM  | Shabeellaha Hoose
 Maues | Maues    |  -3.38963 |     -57.72 |       27518 | Brazil                   | BR   | BRA  | Amazonas
 Maydh | Maydh    |   10.9801 |    47.0975 |       30000 | Somaliland               | SO   | SOL  | 
 Mazyr | Mazyr    |    52.046 |    29.2722 |      100936 | Belarus                  | BY   | BLR  | Homyel'
 Mbala | Mbala    |  -8.84004 |      31.37 |       18384 | Zambia                   | ZM   | ZMB  | Northern
 Mbale | Mbale    |   1.09041 |      34.17 |      247084 | Uganda                   | UG   | UGA  | Bungokho
 Mbeya | Mbeya    |  -8.89001 |      33.43 |      261856 | Tanzania                 | TZ   | TZA  | Mbeya
 Mbulu | Mbulu    |   -3.8496 |      35.53 |       10421 | Tanzania                 | TZ   | TZA  | Arusha
 Medan | Medan    |   3.57997 |      98.65 | 1.93299e+06 | Indonesia                | ID   | IDN  | Sumatera Utara
 Medea | Medea    |   36.2704 |       2.77 |      145864 | Algeria                  | DZ   | DZA  | Médéa
 Melun | Melun    |   48.5333 |    2.66665 |      144192 | France                   | FR   | FRA  | Île-de-France
 Melut | Melut    |   10.4337 |       32.2 |        6407 | South Sudan              | SS   | SSD  | Upper Nile
 Mendi | Mendi    |  -6.14439 |    143.645 |     21685.5 | Papua New Guinea         | PG   | PNG  | Southern Highlands
 Mezen | Mezen    |   65.8522 |      44.24 |      2460.5 | Russia                   | RU   | RUS  | Arkhangel'sk
 Miami | Miami    |   25.7876 |   -80.2241 | 2.98395e+06 | United States of America | US   | USA  | Florida
 Miass | Miass    |   54.9954 |    60.0949 |      148834 | Russia                   | RU   | RUS  | Chelyabinsk
 Milan | Milan    |     45.47 |    9.20501 | 2.12583e+06 | Italy                    | IT   | ITA  | Lombardia
 Minas | Minas    |    -34.37 |     -55.23 |     39602.5 | Uruguay                  | UY   | URY  | Lavalleja
 Minna | Minna    |   9.61999 |    6.55003 |      249038 | Nigeria                  | NG   | NGA  | Niger
 Minot | Minot    |   48.2325 |   -101.296 |       37162 | United States of America | US   | USA  | North Dakota
 Minsk | Minsk    |      53.9 |    27.5666 | 1.69107e+06 | Belarus                  | BY   | BLR  | Minsk
 Mitla | Mitla    |    16.917 |      -96.4 |        4313 | Mexico                   | MX   | MEX  | Oaxaca
 Mocoa | Mocoa    |   1.14999 |     -76.63 |       22035 | Colombia                 | CO   | COL  | Putumayo
 Mokpo | Mokpo    |   34.8068 |    126.396 |      264210 | South Korea              | KR   | KOR  | Gwangju
 Molde | Molde    |   62.7483 |    7.18332 |     16171.5 | Norway                   | NO   | NOR  | Møre og Romsdal
 Mongo | Mongo    |   12.1837 |       18.7 |       27763 | Chad                     | TD   | TCD  | Guéra
 Mongu | Mongu    |  -15.2796 |      23.12 |     45098.5 | Zambia                   | ZM   | ZMB  | Western
 Mopti | Mopti    |     14.49 |   -4.18004 |     93269.5 | Mali                     | ML   | MLI  | Mopti
 Moree | Moree    |  -29.4699 |     149.83 |        8062 | Australia                | AU   | AUS  | New South Wales
 Moron | Moron    |   22.1098 |   -78.6275 |     57551.5 | Cuba                     | CU   | CUB  | Ciego de Ávila
 Moron | Moron    |   49.6453 |    100.154 |     24608.5 | Mongolia                 | MN   | MNG  | Hövsgöl
 Moshi | Moshi    |   -3.3396 |      37.34 |      463873 | Tanzania                 | TZ   | TZA  | Kilimanjaro
 Mosul | Mosul    |    36.345 |     43.145 | 1.22847e+06 | Iraq                     | IQ   | IRQ  | Ninawa
 Motul | Motul    |      21.1 |     -89.28 |       21181 | Mexico                   | MX   | MEX  | Yucatán
 Mpigi | Mpigi    |     0.225 |    32.3136 |       11082 | Uganda                   | UG   | UGA  | Mpigi
 Mpika | Mpika    |    -11.83 |      31.46 |     17242.5 | Zambia                   | ZM   | ZMB  | Northern
 Mudon | Mudon    |   16.2618 |    97.7215 |      120712 | Myanmar                  | MM   | MMR  | Mon
 Mugla | Mugla    |   37.2164 |    28.3639 |     44488.5 | Turkey                   | TR   | TUR  | Mugla
 Murom | Murom    |   55.5704 |      42.04 |      129109 | Russia                   | RU   | RUS  | Vladimir
 Musan | Musan    |   42.2304 |     129.23 |     50942.5 | North Korea              | KP   | PRK  | Hamgyong-bukto
 Mweka | Mweka    |  -4.83962 |      21.57 |       45222 | Congo (Kinshasa)         | CD   | COD  | Kasaï-Occidental
 Myeik | Myeik    |   12.4541 |    98.6115 |      220009 | Myanmar                  | MM   | MMR  | Tanintharyi
 Mzuzu | Mzuzu    |    -11.46 |      34.02 |      110201 | Malawi                   | MW   | MWI  | Mzimba
 Nadym | Nadym    |   65.5298 |    72.5148 |       26723 | Russia                   | RU   | RUS  | Yamal-Nenets
 Nagua | Nagua    |    19.376 |    -69.847 |       33862 | Dominican Republic       | DO   | DOM  | María Trinidad Sánchez
 Nalut | Nalut    |   31.8804 |      10.97 |     66418.5 | Libya                    | LY   | LBY  | Ghadamis
 Nampo | Nampo    |   38.7669 |    125.452 |      791000 | North Korea              | KP   | PRK  | Namp'o-si
 Namtu | Namtu    |   23.0837 |       97.4 |       48591 | Myanmar                  | MM   | MMR  | Shan
 Namur | Namur    |   50.4704 |    4.87003 |     97155.5 | Belgium                  | BE   | BEL  | Namur
 Nancy | Nancy    |   48.6837 |    6.20002 |      187155 | France                   | FR   | FRA  | Lorraine
 Nandi | Nandi    |  -17.7996 |    177.417 |       27329 | Fiji                     | FJ   | FJI  | Western
 Narva | Narva    |   59.3776 |    28.1603 |       65707 | Estonia                  | EE   | EST  | Ida-Viru
 Naryn | Naryn    |   41.4263 |    75.9911 |     44003.5 | Kyrgyzstan               | KG   | KGZ  | Naryn
 Nasca | Nasca    |    -14.83 |     -74.94 |       23387 | Peru                     | PE   | PER  | Ica
 Nasik | Nasik    |   20.0004 |      73.78 | 1.38125e+06 | India                    | IN   | IND  | Maharashtra
 Nasir | Nasir    |   8.60039 |    33.0666 |        1741 | South Sudan              | SS   | SSD  | Upper Nile
 Natal | Natal    |  -6.98383 |     -60.27 |      980588 | Brazil                   | BR   | BRA  | Amazonas
 Natal | Natal    |  -5.78002 |     -35.24 |      925522 | Brazil                   | BR   | BRA  | Rio Grande do Norte
 Nauta | Nauta    |  -4.57002 |     -73.78 |      2308.5 | Peru                     | PE   | PER  | Loreto
 Navoi | Navoi    |   40.1104 |     65.355 |      172276 | Uzbekistan               | UZ   | UZB  | Navoi
 Ndele | Ndele    |   8.40914 |     20.653 |      7355.5 | Central African Republic | CF   | CAF  | Bamingui-Bangoran
 Ndola | Ndola    |  -12.9999 |      28.65 |      395428 | Zambia                   | ZM   | ZMB  | Copperbelt
 Nebbi | Nebbi    |   2.47583 |    31.1025 |       30354 | Uganda                   | UG   | UGA  | Nebbi
 Neiba | Neiba    |   18.4666 |   -71.4166 |     22200.5 | Dominican Republic       | DO   | DOM  | Bahoruco
 Neiva | Neiva    |   2.93105 |   -75.3302 |      318566 | Colombia                 | CO   | COL  | Huila
 Nephi | Nephi    |   39.7103 |   -111.835 |        4960 | United States of America | US   | USA  | Utah
 Ngara | Ngara    |  -2.46953 |      30.65 |       10744 | Tanzania                 | TZ   | TZA  | Kagera
 Ngozi | Ngozi    |    -2.912 |     29.825 |       21506 | Burundi                  | BI   | BDI  | Ngozi
 Nguru | Nguru    |   12.8804 |      10.45 |       82481 | Nigeria                  | NG   | NGA  | Yobe
 Nigde | Nigde    |    37.976 |     34.694 |       91039 | Turkey                   | TR   | TUR  | Nigde
 Nikel | Nikel    |   69.4126 |    30.2188 |       15731 | Russia                   | RU   | RUS  | Murmansk
 Nimes | Nimes    |   43.8304 |    4.35001 |      158892 | France                   | FR   | FRA  | Languedoc-Roussillon
 Ninde | Ninde    |   26.6804 |     119.53 |      189624 | China                    | CN   | CHN  | Fujian
 Nizwa | Nizwa    |   22.9264 |    57.5314 |     70429.5 | Oman                     | OM   | OMN  | Ad Dakhliyah
 Nouna | Nouna    |    12.729 |      -3.86 |       29048 | Burkina Faso             | BF   | BFA  | Kossi
 Nowra | Nowra    |  -34.8828 |      150.6 |     61036.5 | Australia                | AU   | AUS  | New South Wales
 Nukus | Nukus    |     42.47 |     59.615 |      228211 | Uzbekistan               | UZ   | UZB  | Karakalpakstan
 Numan | Numan    |   9.46044 |      12.04 |       45173 | Nigeria                  | NG   | NGA  | Adamawa
 Numto | Numto    |   63.6667 |    71.3333 |          10 | Russia                   | RU   | RUS  | Khanty-Mansiy
 Nuqui | Nuqui    |   5.68518 |   -77.2746 |        1487 | Colombia                 | CO   | COL  | Chocó
 Nyeri | Nyeri    | -0.416997 |     36.951 |       51084 | Kenya                    | KE   | KEN  | Central
 Nzega | Nzega    |  -4.20963 |      33.18 |       18325 | Tanzania                 | TZ   | TZA  | Tabora
 Nzeto | Nzeto    |   -7.2296 |      12.86 |     19705.5 | Angola                   | AO   | AGO  | Zaire
 Obock | Obock    |   11.9734 |    43.2856 |       13142 | Djibouti                 | DJ   | DJI  | Obock
 Ocala | Ocala    |   29.1874 |   -82.1403 |       95470 | United States of America | US   | USA  | Florida
 Ocana | Ocana    |   8.24041 |     -73.35 |     83401.5 | Colombia                 | CO   | COL  | Norte de Santander
 Ogden | Ogden    |   41.2324 |   -111.968 |      227774 | United States of America | US   | USA  | Utah
 Okara | Okara    |   30.8104 |      73.45 |      223648 | Pakistan                 | PK   | PAK  | Punjab
 Olbia | Olbia    |   40.9143 |    9.51507 |       44341 | Italy                    | IT   | ITA  | Sardegna
 Olgiy | Olgiy    |   48.9337 |      89.95 |       31667 | Mongolia                 | MN   | MNG  | Bayan-Ölgiy
 Olmos | Olmos    |   -5.9796 |     -79.75 |      7579.5 | Peru                     | PE   | PER  | Lambayeque
 Omagh | Omagh    |      54.6 |       -7.3 |       18691 | United Kingdom           | GB   | GBR  | Omagh
 Omaha | Omaha    |     41.24 |     -96.01 |      643034 | United States of America | US   | USA  | Nebraska
 Onega | Onega    |   63.9271 |    38.0771 |     20447.5 | Russia                   | RU   | RUS  | Arkhangel'sk
 Opobo | Opobo    |    4.5704 |    7.55999 |       34911 | Nigeria                  | NG   | NGA  | Akwa Ibom
 Opole | Opole    |    50.685 |    17.9313 |      129544 | Poland                   | PL   | POL  | Opole
 Opuwo | Opuwo    |  -18.0596 |      13.82 |        4857 | Namibia                  | NA   | NAM  | Kunene
 Ormac | Ormac    |   11.0643 |    124.608 |      129964 | Philippines              | PH   | PHL  | Leyte
 Orsha | Orsha    |   54.5153 |    30.4215 |      130276 | Belarus                  | BY   | BLR  | Vitsyebsk
 Oruro | Oruro    |  -17.9799 |     -67.13 |      227592 | Bolivia                  | BO   | BOL  | Oruro
 Osaka | Osaka    |     34.75 |     135.46 | 6.94321e+06 | Japan                    | JP   | JPN  | Osaka
 Otaru | Otaru    |   43.1887 |    140.978 |      139260 | Japan                    | JP   | JPN  | Hokkaido
 Otavi | Otavi    |    -19.64 |     17.342 |        4562 | Namibia                  | NA   | NAM  | Otjozondjupa
 Oujda | Oujda    |     34.69 |   -1.90997 |      407322 | Morocco                  | MA   | MAR  | Oriental
 Outjo | Outjo    |  -20.1095 |      16.14 |      6363.5 | Namibia                  | NA   | NAM  | Kunene
 Ouyen | Ouyen    |  -35.0662 |    142.317 |         912 | Australia                | AU   | AUS  | Victoria
 Oytal | Oytal    |   42.9153 |    73.2549 |       16247 | Kazakhstan               | KZ   | KAZ  | Zhambyl
 Pa-an | Pa-an    |     16.85 |    97.6167 |       50000 | Myanmar                  | MM   | MMR  | Kayin
 Paarl | Paarl    |  -33.6996 |      18.96 |      159792 | South Africa             | ZA   | ZAF  | Western Cape
 Pabna | Pabna    |   24.0004 |      89.25 |      137888 | Bangladesh               | BD   | BGD  | Rajshahi
 Paita | Paita    |  -5.08999 |     -81.12 |     47891.5 | Peru                     | PE   | PER  | Piura
 Pakxe | Pakxe    |   15.1221 |    105.818 |     95553.5 | Laos                     | LA   | LAO  | Champasak
 Palma | Palma    |   39.5743 |    2.65425 |      319951 | Spain                    | ES   | ESP  | Islas Baleares
 Panda | Panda    |  -24.0629 |    34.7303 |         602 | Mozambique               | MZ   | MOZ  | Inhambane
 Paris | Paris    |   48.8667 |    2.33334 | 4.95759e+06 | France                   | FR   | FRA  | Île-de-France
 Parma | Parma    |   44.8104 |      10.32 |      164734 | Italy                    | IT   | ITA  | Emilia-Romagna
 Parnu | Parnu    |   58.3747 |    24.5136 |       40256 | Estonia                  | EE   | EST  | Pärnu
 Pasto | Pasto    |   1.21361 |   -77.2811 |      371138 | Colombia                 | CO   | COL  | Nariño
 Patna | Patna    |    25.625 |      85.13 | 1.87896e+06 | India                    | IN   | IND  | Bihar
 Patos | Patos    |  -7.01959 |     -37.29 |     85720.5 | Brazil                   | BR   | BRA  | Paraíba
 Patra | Patra    |     38.23 |      21.73 |      159580 | Greece                   | GR   | GRC  | Dytiki Ellada
 Pecos | Pecos    |   31.4158 |     -103.5 |        7991 | United States of America | US   | USA  | Texas
 Pemba | Pemba    |   -12.983 |    40.5323 |      109690 | Mozambique               | MZ   | MOZ  | Cabo Delgado
 Penza | Penza    |     53.18 |         45 |      491943 | Russia                   | RU   | RUS  | Penza
 Perth | Perth    |   -31.955 |     115.84 | 1.20611e+06 | Australia                | AU   | AUS  | Western Australia
 Perth | Perth    |   56.4003 |   -3.46998 |       39654 | United Kingdom           | GB   | GBR  | Perthshire and Kinross
 Pevek | Pevek    |   69.7008 |    170.313 |        4837 | Russia                   | RU   | RUS  | Chukchi Autonomous Okrug
 Phrae | Phrae    |   18.1533 |    100.163 |     28254.5 | Thailand                 | TH   | THA  | Phrae
 Picos | Picos    |     -7.08 |     -41.44 |     47694.5 | Brazil                   | BR   | BRA  | Piauí
 Pilar | Pilar    |  -26.8695 |      -58.3 |       28435 | Paraguay                 | PY   | PRY  | Ñeembucú
 Pinas | Pinas    |  -3.67002 |     -79.65 |       16981 | Ecuador                  | EC   | ECU  | El Oro
 Pinsk | Pinsk    |   52.1279 |    26.0941 |      120838 | Belarus                  | BY   | BLR  | Brest
 Pisco | Pisco    |    -13.71 |     -76.22 |       71538 | Peru                     | PE   | PER  | Ica
 Piura | Piura    |  -5.21003 |     -80.63 |      361199 | Peru                     | PE   | PER  | Piura
 Pizen | Pizen    |   49.7404 |      13.36 |      161043 | Czech Republic           | CZ   | CZE  | Karlovarský
 Plast | Plast    |   54.3685 |    60.8085 |     15480.5 | Russia                   | RU   | RUS  | Chelyabinsk
 Ponce | Ponce    |   18.0004 |   -66.6166 |      156484 | Puerto Rico              | PR   | PRI  | 
 Porto | Porto    |     41.15 |      -8.62 |      793316 | Portugal                 | PT   | PRT  | Porto
 Praia | Praia    |   14.9167 |   -23.5167 |      101112 | Cape Verde               | CV   | CPV  | 
 Praya | Praya    |  -8.72232 |    116.292 |       35183 | Indonesia                | ID   | IDN  | Nusa Tenggara Barat
 Price | Price    |   39.5998 |    -110.81 |        9175 | United States of America | US   | USA  | Utah
 Provo | Provo    |   40.2489 |   -111.638 |      231238 | United States of America | US   | USA  | Utah
 Pskov | Pskov    |     57.83 |    28.3299 |      189980 | Russia                   | RU   | RUS  | Pskov
 Qalat | Qalat    |   32.1123 |    66.8868 |       12191 | Afghanistan              | AF   | AFG  | Zabul
 Qoqon | Qoqon    |   40.5404 |      70.94 |      271250 | Uzbekistan               | UZ   | UZB  | Ferghana
 Quime | Quime    |    -16.98 |     -67.22 |      3224.5 | Bolivia                  | BO   | BOL  | La Paz
 Quito | Quito    | -0.214988 |   -78.5001 | 1.55041e+06 | Ecuador                  | EC   | ECU  | Pichincha
 Qulan | Qulan    |   42.9204 |     72.705 |       10200 | Kazakhstan               | KZ   | KAZ  | Zhambyl
 Rabat | Rabat    |   34.0253 |   -6.83613 | 1.68038e+06 | Morocco                  | MA   | MAR  | Rabat - Salé - Zemmour - Zaer
 Rafha | Rafha    |   29.6202 |    43.4948 |       64755 | Saudi Arabia             | SA   | SAU  | Al Hudud ash Shamaliyah
 Ramla | Ramla    |   31.9167 |    34.8667 |       63860 | Israel                   | IL   | ISR  | HaMerkaz
 Rasht | Rasht    |      37.3 |      49.63 |      544738 | Iran                     | IR   | IRN  | Gilan
 Raton | Raton    |   36.8974 |    -104.44 |        6820 | United States of America | US   | USA  | New Mexico
 Reims | Reims    |   49.2504 |    4.02998 |      177939 | France                   | FR   | FRA  | Champagne-Ardenne
 Reyes | Reyes    |  -14.3096 |     -67.37 |        7376 | Bolivia                  | BO   | BOL  | El Beni
 Rivas | Rivas    |   11.4404 |     -85.82 |       31117 | Nicaragua                | NI   | NIC  | Nicaragua
 Rivne | Rivne    |   50.6166 |    26.2528 |      253261 | Ukraine                  | UA   | UKR  | Rivne
 Rocha | Rocha    |   -34.483 |    -54.333 |     26194.5 | Uruguay                  | UY   | URY  | Rocha
 Rodeo | Rodeo    |  -30.2156 |     -69.14 |         701 | Argentina                | AR   | ARG  | San Juan
 Rodos | Rodos    |   36.4412 |    28.2225 |     56548.5 | Greece                   | GR   | GRC  | Notio Aigaio
 Rosso | Rosso    |    16.524 |   -15.8127 |       47203 | Mauritania               | MR   | MRT  | Trarza
 Rouen | Rouen    |   49.4304 |    1.07998 |      321418 | France                   | FR   | FRA  | Haute-Normandie
 Roura | Roura    |   4.72998 |     -52.33 |      2069.5 | France                   | GF   | FRA  | Guinaa
 Roxas | Roxas    |   11.5853 |    122.751 |     91880.5 | Philippines              | PH   | PHL  | Capiz
 Rudny | Rudny    |   52.9527 |      63.13 |      104236 | Kazakhstan               | KZ   | KAZ  | Qostanay
 Rundu | Rundu    |    -17.92 |    19.7499 |       43485 | Namibia                  | NA   | NAM  | Kavango
 Rzhev | Rzhev    |   56.2574 |    34.3275 |       62830 | Russia                   | RU   | RUS  | Tver'
 Sabha | Sabha    |   27.0333 |    14.4333 |      100249 | Libya                    | LY   | LBY  | Sabha
 Sadah | Sadah    |   16.9398 |    43.8498 |      105542 | Yemen                    | YE   | YEM  | Sa`dah
 Sagar | Sagar    |   23.8504 |      78.75 |      287786 | India                    | IN   | IND  | Madhya Pradesh
 Saida | Saida    |   34.8404 |   0.140033 |      134855 | Algeria                  | DZ   | DZA  | Saïda
 Saida | Saida    |    33.563 |    35.3688 |      173894 | Lebanon                  | LB   | LBN  | South Lebanon
 Saidu | Saidu    |     34.75 |      72.35 | 1.86031e+06 | Pakistan                 | PK   | PAK  | N.W.F.P.
 Salem | Salem    |   44.9281 |   -123.024 |      187966 | United States of America | US   | USA  | Oregon
 Salem | Salem    |   42.5225 |   -70.8831 |      188982 | United States of America | US   | USA  | Massachusetts
 Salem | Salem    |     11.67 |    78.1801 |      825698 | India                    | IN   | IND  | Tamil Nadu
 Salsk | Salsk    |   46.4775 |     41.542 |       54739 | Russia                   | RU   | RUS  | Rostov
 Salta | Salta    |  -24.7834 |   -65.4166 |      484646 | Argentina                | AR   | ARG  | Salta
 Salto | Salto    |  -31.3903 |   -57.9687 |      102756 | Uruguay                  | UY   | URY  | Salto
 Salum | Salum    |    31.567 |      25.15 |        7330 | Egypt                    | EG   | EGY  | Matruh
 Sanaa | Sanaa    |   15.3547 |    44.2066 | 1.92193e+06 | Yemen                    | YE   | YEM  | Amanat Al Asimah
 Sanya | Sanya    |   18.2591 |    109.504 |      253721 | China                    | CN   | CHN  | Hainan
 Satun | Satun    |    6.6167 |    100.067 |       34544 | Thailand                 | TH   | THA  | Satun
 Saveh | Saveh    |   35.0218 |    50.3314 |      145384 | Iran                     | IR   | IRN  | Markazi
 Scone | Scone    |  -32.0796 |     150.85 |        4624 | Australia                | AU   | AUS  | New South Wales
 Sebba | Sebba    |   13.4364 |   0.530443 |        3273 | Burkina Faso             | BF   | BFA  | Yagha
 Sefra | Sefra    |   32.7604 |  -0.579949 |       51118 | Algeria                  | DZ   | DZA  | Naâma
 Segou | Segou    |     13.44 |   -6.26002 |      107752 | Mali                     | ML   | MLI  | Ségou
 Selma | Selma    |   32.4076 |   -87.0212 |       19553 | United States of America | US   | USA  | Alabama
 Sembe | Sembe    |   1.64038 |      14.58 |        6396 | Congo (Brazzaville)      | CG   | COG  | Sangha
 Semey | Semey    |    50.435 |     80.275 |      302066 | Kazakhstan               | KZ   | KAZ  | East Kazakhstan
 Seoul | Seoul    |   37.5663 |        127 |   9.796e+06 | South Korea              | KR   | KOR  | Seoul
 Seres | Seres    |    41.086 |    23.5497 |     50910.5 | Greece                   | GR   | GRC  | Kentriki Makedonia
 Serov | Serov    |    59.615 |     60.585 |       91831 | Russia                   | RU   | RUS  | Sverdlovsk
 Setif | Setif    |     36.18 |    5.39997 |      274744 | Algeria                  | DZ   | DZA  | Sétif
 Shira | Shira    |   54.4914 |     89.953 |        4836 | Russia                   | RU   | RUS  | Khakass
 Shuya | Shuya    |   56.8543 |    41.3643 |     59585.5 | Russia                   | RU   | RUS  | Ivanovo
 Sibay | Sibay    |   52.7091 |    58.6387 |       54696 | Russia                   | RU   | RUS  | Bashkortostan
 Sibiu | Sibiu    |   45.7971 |    24.1371 |      153730 | Romania                  | RO   | ROU  | Sibiu
 Sibut | Sibut    |   5.73377 |    19.0833 |     26304.5 | Central African Republic | CF   | CAF  | Kémo
 Siena | Siena    |    43.317 |      11.35 |       48731 | Italy                    | IT   | ITA  | Toscana
 Siirt | Siirt    |    37.944 |     41.933 |      114034 | Turkey                   | TR   | TUR  | Siirt
 Sikar | Sikar    |   27.6104 |      75.14 |      318790 | India                    | IN   | IND  | Rajasthan
 Simao | Simao    |   22.7807 |    100.978 |      162725 | China                    | CN   | CHN  | Yunnan
 Simla | Simla    |      31.1 |    77.1666 |      173503 | India                    | IN   | IND  | Himachal Pradesh
 Sinop | Sinop    |    42.023 |     35.153 |       34834 | Turkey                   | TR   | TUR  | Sinop
 Sinop | Sinop    |    -11.85 |     -55.46 |        8961 | Brazil                   | BR   | BRA  | Mato Grosso
 Sirsa | Sirsa    |   29.4904 |      75.03 |      170884 | India                    | IN   | IND  | Haryana
 Sitia | Sitia    |   35.2004 |    26.0986 |        8770 | Greece                   | GR   | GRC  | Kriti
 Sitka | Sitka    |   57.0604 |   -135.328 |        8110 | United States of America | US   | USA  | Alaska
 Sivas | Sivas    |   39.7454 |     37.035 |      245802 | Turkey                   | TR   | TUR  | Sivas
 Skien | Skien    |      59.2 |    9.60002 |       73330 | Norway                   | NO   | NOR  | Telemark
 Sligo | Sligo    |   54.2671 |   -8.48332 |       17214 | Ireland                  | IE   | IRL  | Sligo
 Smara | Smara    |   26.7333 |   -11.6833 |       48149 | Morocco                  | MA   | MAR  | Guelmim - Es-Semara
 Sochi | Sochi    |     43.59 |      39.73 |      326639 | Russia                   | RU   | RUS  | Krasnodar
 Sofia | Sofia    |   42.6833 |    23.3167 | 1.02991e+06 | Bulgaria                 | BG   | BGR  | Grad Sofiya
 Sohag | Sohag    |   26.5504 |       31.7 |      404710 | Egypt                    | EG   | EGY  | Suhaj
 Sokol | Sokol    |   59.4648 |    40.1144 |     35637.5 | Russia                   | RU   | RUS  | Vologda
 Songo | Songo    |  -7.34959 |      14.85 |       10579 | Angola                   | AO   | AGO  | Uíge
 Sotik | Sotik    | -0.679559 |      35.12 |     36942.5 | Kenya                    | KE   | KEN  | Rift Valley
 Split | Split    |   43.5204 |      16.47 |      195528 | Croatia                  | HR   | HRV  | Splitsko-Dalmatinska
 Stans | Stans    |     46.95 |     8.3833 |        7475 | Switzerland              | CH   | CHE  | Nidwalden
 Stoke | Stoke    |   53.0004 |   -2.18001 |      325610 | United Kingdom           | GB   | GBR  | Stoke-on-Trent
 Sucre | Sucre    |   -19.041 |   -65.2595 |      223287 | Bolivia                  | BO   | BOL  | Chuquisaca
 Suhar | Suhar    |    24.362 |    56.7344 |      129812 | Oman                     | OM   | OMN  | Al Batnah
 Sumbe | Sumbe    |    -11.21 |      13.85 |     29638.5 | Angola                   | AO   | AGO  | Cuanza Sul
 Surat | Surat    |      21.2 |      72.84 | 3.36825e+06 | India                    | IN   | IND  | Dadra and Nagar Haveli
 Surin | Surin    |   14.8868 |    103.491 |     54604.5 | Thailand                 | TH   | THA  | Surin
 Suwon | Suwon    |   37.2578 |    127.011 |   1.078e+06 | South Korea              | KR   | KOR  | Gyeonggi-do
 Tabuk | Tabuk    |   28.3838 |     36.555 |      501704 | Saudi Arabia             | SA   | SAU  | Tabuk
 Tacna | Tacna    |       -18 |     -70.25 |      261042 | Peru                     | PE   | PER  | Tacna
 Tagum | Tagum    |   7.38214 |    125.802 |        6726 | Philippines              | PH   | PHL  | Davao del Norte
 Taian | Taian    |      36.2 |     117.12 |   1.629e+06 | China                    | CN   | CHN  | Shandong
 Taizz | Taizz    |   13.6045 |    44.0394 |      683111 | Yemen                    | YE   | YEM  | Ta`izz
 Takeo | Takeo    |   10.9838 |    104.783 |       15264 | Cambodia                 | KH   | KHM  | Takêv
 Talas | Talas    |   42.5184 |    72.2429 |       28646 | Kyrgyzstan               | KG   | KGZ  | Talas
 Talca | Talca    |   -35.455 |     -71.67 |      186284 | Chile                    | CL   | CHL  | Maule
 Tampa | Tampa    |    27.947 |   -82.4586 | 1.31923e+06 | United States of America | US   | USA  | Florida
 Tanga | Tanga    |  -5.07004 |      39.09 |      217156 | Tanzania                 | TZ   | TZA  | Tanga
 Tanta | Tanta    |   30.7904 |         31 |      404901 | Egypt                    | EG   | EGY  | Al Gharbiyah
 Taraz | Taraz    |      42.9 |     71.365 |      332724 | Kazakhstan               | KZ   | KAZ  | Zhambyl
 Taree | Taree    |  -31.8976 |    152.462 |     30131.5 | Australia                | AU   | AUS  | New South Wales
 Tarma | Tarma    |    -11.41 |     -75.73 |       25906 | Peru                     | PE   | PER  | Junín
 Tartu | Tartu    |   58.3839 |    26.7099 |     90033.5 | Estonia                  | EE   | EST  | Tartu
 Tatui | Tatui    |    -23.35 |     -47.86 |       81936 | Brazil                   | BR   | BRA  | São Paulo
 Taupo | Taupo    |   -38.693 |    176.077 |     17480.5 | New Zealand              | NZ   | NZL  | Auckland
 Tavda | Tavda    |   58.0536 |    65.2583 |       32401 | Russia                   | RU   | RUS  | Sverdlovsk
 Tawau | Tawau    |   4.27097 |    117.896 |      297996 | Malaysia                 | MY   | MYS  | Sabah
 Taxco | Taxco    |   18.5704 |   -99.6199 |       53217 | Mexico                   | MX   | MEX  | Guerrero
 Tegal | Tegal    |  -6.86957 |     109.12 |      237084 | Indonesia                | ID   | IDN  | Jawa Tengah
 Tejen | Tejen    |   37.3786 |     60.496 |     62649.5 | Turkmenistan             | TM   | TKM  | Ahal
 Tekax | Tekax    |      20.2 |     -89.28 |       20577 | Mexico                   | MX   | MEX  | Yucatán
 Tepic | Tepic    |   21.5054 |    -104.88 |      299686 | Mexico                   | MX   | MEX  | Nayarit
 Thies | Thies    |   14.8104 |     -16.93 |      293001 | Senegal                  | SN   | SEN  | Thiès
 Thika | Thika    |  -1.03959 |      37.09 |     93571.5 | Kenya                    | KE   | KEN  | Central
 Ticul | Ticul    |   20.4004 |     -89.53 |     30400.5 | Mexico                   | MX   | MEX  | Yucatán
 Tieli | Tieli    |   46.9504 |     128.05 |      109228 | China                    | CN   | CHN  | Heilongjiang
 Tiksi | Tiksi    |   71.6269 |    128.835 |        5700 | Russia                   | RU   | RUS  | Sakha (Yakutia)
 Timon | Timon    |    -5.115 |    -42.845 |      203157 | Brazil                   | BR   | BRA  | Maranhão
 Tobol | Tobol    |    52.698 |    62.5749 |      3913.5 | Kazakhstan               | KZ   | KAZ  | Qostanay
 Tokar | Tokar    |   18.4333 |    37.7333 |       47726 | Sudan                    | SD   | SDN  | Red Sea
 Tokat | Tokat    |    40.306 |     36.563 |      129702 | Turkey                   | TR   | TUR  | Tokat
 Tokyo | Tokyo    |    35.685 |    139.751 | 2.20063e+07 | Japan                    | JP   | JPN  | Tokyo
 Tomah | Tomah    |   43.9851 |   -90.5039 |     10796.5 | United States of America | US   | USA  | Wisconsin
 Tomsk | Tomsk    |    56.495 |     84.975 |      471950 | Russia                   | RU   | RUS  | Tomsk
 Topki | Topki    |   55.2802 |    85.6108 |       24672 | Russia                   | RU   | RUS  | Kemerovo
 Touba | Touba    |      8.28 |     -7.684 |       27504 | Ivory Coast              | CI   | CIV  | Bafing
 Tours | Tours    |   47.3804 |   0.699947 |      188858 | France                   | FR   | FRA  | Centre
 Tovuz | Tovuz    |   40.9922 |    45.6289 |       12626 | Azerbaijan               | AZ   | AZE  | Tovuz
 Trang | Trang    |    7.5634 |     99.608 |      103728 | Thailand                 | TH   | THA  | Trang
 Tsavo | Tsavo    |  -2.98278 |    38.4666 |         414 | Kenya                    | KE   | KEN  | Coast
 Tuban | Tuban    |  -6.89954 |     112.05 |       76242 | Indonesia                | ID   | IDN  | Jawa Timur
 Tulsa | Tulsa    |     36.12 |     -95.93 |      669434 | United States of America | US   | USA  | Oklahoma
 Tulua | Tulua    |   4.09038 |     -76.21 |      164282 | Colombia                 | CO   | COL  | Valle del Cauca
 Tulun | Tulun    |   54.5653 |    100.565 |       48407 | Russia                   | RU   | RUS  | Irkutsk
 Tumen | Tumen    |     42.97 |     129.82 |       89220 | China                    | CN   | CHN  | Jilin
 Tumut | Tumut    |  -35.3096 |     148.22 |        4873 | Australia                | AU   | AUS  | New South Wales
 Tunis | Tunis    |   36.8028 |    10.1797 | 1.57048e+06 | Tunisia                  | TN   | TUN  | Tunis
 Tunja | Tunja    |   5.55045 |     -73.37 |      139446 | Colombia                 | CO   | COL  | Boyacá
 Turbo | Turbo    |   8.10037 |     -76.74 |     42257.5 | Colombia                 | CO   | COL  | Antioquia
 Turin | Turin    |   45.0704 |    7.66996 | 1.25863e+06 | Italy                    | IT   | ITA  | Piemonte
 Turku | Turku    |   60.4539 |     22.255 |      175442 | Finland                  | FI   | FIN  | Finland Proper
 Tuzla | Tuzla    |   44.5505 |      18.68 |      143410 | Bosnia and Herzegovina   | BA   | BIH  | Tuzla
 Tyler | Tyler    |   32.3511 |   -95.3008 |      101562 | United States of America | US   | USA  | Texas
 Tynda | Tynda    |   55.1743 |    124.708 |       33187 | Russia                   | RU   | RUS  | Amur
 Udine | Udine    |     46.07 |      13.24 |      107020 | Italy                    | IT   | ITA  | Friuli-Venezia Giulia
 Uelen | Uelen    |   66.1541 |   -169.811 |         776 | Russia                   | RU   | RUS  | Chukchi Autonomous Okrug
 Ukhta | Ukhta    |     63.56 |      53.69 |     96396.5 | Russia                   | RU   | RUS  | Komi
 Ukiah | Ukiah    |   39.1542 |   -123.211 |     21826.5 | United States of America | US   | USA  | California
 Ulkan | Ulkan    |   55.9004 |    107.783 |          10 | Russia                   | RU   | RUS  | Irkutsk
 Ulsan | Ulsan    |   35.5467 |    129.317 | 1.01193e+06 | South Korea              | KR   | KOR  | Ulsan
 Uncia | Uncia    |    -18.47 |     -66.57 |        4723 | Bolivia                  | BO   | BOL  | Potosí
 Upata | Upata    |   8.02043 |     -62.41 |     53474.5 | Venezuela                | VE   | VEN  | Bolívar
 Urgut | Urgut    |   39.4007 |    67.2607 |       73524 | Uzbekistan               | UZ   | UZB  | Samarkand
 Urmia | Orumiyeh |     37.53 |         45 |      577307 | Iran                     | IR   | IRN  | West Azarbaijan
 Utica | Utica    |   43.1012 |   -75.2331 |       81870 | United States of America | US   | USA  | New York
 Uvira | Uvira    |  -3.36999 |      29.14 |      164353 | Congo (Kinshasa)         | CD   | COD  | Sud-Kivu
 Uyuni | Uyuni    |    -20.46 |     -66.83 |       11616 | Bolivia                  | BO   | BOL  | Potosí
 Uzhur | Uzhur    |   55.3292 |    89.8207 |     17424.5 | Russia                   | RU   | RUS  | Krasnoyarsk
 Vaasa | Vaasa    |      63.1 |       21.6 |       48930 | Finland                  | FI   | FIN  | Western Finland
 Vadsø | Vadso    |   70.0966 |    29.7657 |        5139 | Norway                   | NO   | NOR  | Finnmark
 Vaduz | Vaduz    |   47.1337 |    9.51667 |     20811.5 | Liechtenstein            | LI   | LIE  | 
 Varna | Varna    |   43.2156 |    27.8953 |      245522 | Bulgaria                 | BG   | BGR  | Varna
 Vejle | Vejle    |    55.709 |      9.535 |       51177 | Denmark                  | DK   | DNK  | Syddanmark
 Velsk | Velsk    |   61.0674 |    42.0974 |       25729 | Russia                   | RU   | RUS  | Arkhangel'sk
 Viana | Viana    |  -3.20959 |        -45 |     15808.5 | Brazil                   | BR   | BRA  | Maranhão
 Vichy | Vichy    |   46.1171 |    3.41668 |     35088.5 | France                   | FR   | FRA  | Auvergne
 Vigan | Vigan    |   17.5747 |    120.387 |       48545 | Philippines              | PH   | PHL  | Ilocos Sur
 Visby | Visby    |   57.6337 |       18.3 |     22281.5 | Sweden                   | SE   | SWE  | Gotland
 Viseu | Viseu    |    40.657 |      -7.91 |       26364 | Portugal                 | PT   | PRT  | Viseu
 Viseu | Viseu    |  -1.19648 |     -46.14 |      9992.5 | Brazil                   | BR   | BRA  | Pará
 Vitim | Vitim    |   59.4515 |    112.558 |        3843 | Russia                   | RU   | RUS  | Sakha (Yakutia)
 Vlore | Vlore    |   40.4774 |    19.4982 |     89508.5 | Albania                  | AL   | ALB  | Vlorë
 Volos | Volos    |     39.37 |      22.95 |     97528.5 | Greece                   | GR   | GRC  | Thessalia
 Volsk | Volsk    |   52.0347 |    47.3743 |       62027 | Russia                   | RU   | RUS  | Saratov
 Vyska | Vyska    |   55.3247 |    42.1644 |       60356 | Russia                   | RU   | RUS  | Nizhegorod
 Växjö | Vaxjo    |   56.8837 |    14.8167 |     53067.5 | Sweden                   | SE   | SWE  | Kronoberg
 Wabag | Wabag    |     -5.49 |    143.718 |        3958 | Papua New Guinea         | PG   | PNG  | Enga
 Wagin | Wagin    |  -33.2996 |     117.35 |      1037.5 | Australia                | AU   | AUS  | Western Australia
 Wajir | Wajir    |   1.75037 |      40.05 |       40240 | Kenya                    | KE   | KEN  | North-Eastern
 Wales | Wales    |   65.6096 |   -168.088 |          99 | United States of America | US   | USA  | Alaska
 Wamba | Wamba    |   2.14042 |      27.99 |       82122 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Warri | Warri    |   5.51996 |       5.76 |      683064 | Nigeria                  | NG   | NGA  | Delta
 Watsa | Watsa    |   3.04001 |      29.53 |     17721.5 | Congo (Kinshasa)         | CD   | COD  | Orientale
 Weipa | Weipa    |  -12.6666 |    141.867 |        2830 | Australia                | AU   | AUS  | Queensland
 Wewak | Wewak    |  -3.55349 |    143.637 |     21686.5 | Papua New Guinea         | PG   | PNG  | East Sepik
 Wonju | Wonju    |   37.3551 |     127.94 |      240898 | South Korea              | KR   | KOR  | Gangwon-do
 Wuhai | Wuhai    |   39.6647 |    106.812 |      218427 | China                    | CN   | CHN  | Nei Mongol
 Wuhan | Wuhan    |     30.58 |     114.27 |  5.7136e+06 | China                    | CN   | CHN  | Hubei
 Wuwei | Wuwei    |    37.928 |    102.641 |      493092 | China                    | CN   | CHN  | Gansu
 Xinyi | Xinyi    |     34.38 |     118.35 |      962656 | China                    | CN   | CHN  | Jiangsu
 Xinyu | Xinyu    |      27.8 |     114.93 |      505240 | China                    | CN   | CHN  | Jiangxi
 Yalta | Yalta    |   44.4993 |    34.1594 |     76814.5 | Ukraine                  | UA   | UKR  | Crimea
 Yamba | Yamba    |   -29.423 |    153.353 |        1806 | Australia                | AU   | AUS  | New South Wales
 Yanji | Yanji    |   42.8823 |    129.513 |      407848 | China                    | CN   | CHN  | Jilin
 Yasuj | Yasuj    |    30.659 |     51.594 |       96786 | Iran                     | IR   | IRN  | Kohgiluyeh and Buyer Ahmad
 Yaupi | Yaupi    |  -2.85431 |   -77.9363 |         293 | Ecuador                  | EC   | ECU  | Morona Santiago
 Yendi | Yendi    |   9.43373 | -0.0166504 |     30841.5 | Ghana                    | GH   | GHA  | Northern
 Yeosu | Yeosu    |   34.7368 |    127.746 |      302142 | South Korea              | KR   | KOR  | Gwangju
 Yeysk | Yeysk    |   46.6988 |    38.2634 |     76591.5 | Russia                   | RU   | RUS  | Krasnodar
 Yibin | Yibin    |     28.77 |     104.57 |      572056 | China                    | CN   | CHN  | Sichuan
 Yilan | Yilan    |     24.75 |     121.75 |      122916 | Taiwan                   | TW   | TWN  | Yilan
 Yomou | Yomou    |   7.57043 |   -9.26999 |      2607.5 | Guinea                   | GN   | GIN  | Nzerekore
 Yopal | Yopal    |     5.347 |    -72.406 |       61029 | Colombia                 | CO   | COL  | Casanare
 Young | Young    |  -34.3096 |     148.29 |        6422 | Australia                | AU   | AUS  | New South Wales
 Yulin | Yulin    |   38.2833 |    109.733 |      123415 | China                    | CN   | CHN  | Shaanxi
 Yulin | Yulin    |     22.63 |     110.15 |      637742 | China                    | CN   | CHN  | Guangxi
 Yumen | Yumen    |     39.83 |      97.73 |      233097 | China                    | CN   | CHN  | Gansu
 Yurga | Yurga    |   55.7258 |    84.8854 |     72495.5 | Russia                   | RU   | RUS  | Kemerovo
 Zabid | Zabid    |   14.1951 |    43.3155 |      102547 | Yemen                    | YE   | YEM  | Al Hudaydah
 Zabol | Zabol    |   31.0215 |    61.4815 |      177978 | Iran                     | IR   | IRN  | Sistan and Baluchestan
 Zadar | Zadar    |   44.1201 |    15.2623 |     59201.5 | Croatia                  | HR   | HRV  | Zadarska
 Zahle | Zahle    |   33.8501 |    35.9042 |       61192 | Lebanon                  | LB   | LBN  | Mount Lebanon
 Zakho | Zakho    |   37.1445 |    42.6872 |      114958 | Iraq                     | IQ   | IRQ  | Dihok
 Zalau | Zalau    |    47.175 |     23.063 |       63232 | Romania                  | RO   | ROU  | Salaj
 Zaria | Zaria    |     11.08 |    7.71001 |      754836 | Nigeria                  | NG   | NGA  | Kaduna
 Zemio | Zemio    |   5.03366 |    25.1333 |       19239 | Central African Republic | CF   | CAF  | Haut-Mbomou
 Zomba | Zomba    |    -15.39 |      35.31 |       80932 | Malawi                   | MW   | MWI  | Zomba
 Zongo | Zongo    |   4.33034 |     18.615 |       17667 | Congo (Kinshasa)         | CD   | COD  | Équateur
 Zorgo | Zorgo    |    12.243 |     -0.611 |       23892 | Burkina Faso             | BF   | BFA  | Ganzourgou
 Zouar | Zouar    |   20.4587 |    16.5278 |         204 | Chad                     | TD   | TCD  | Bet
 Zunyi | Zunyi    |      27.7 |     106.92 |      657646 | China                    | CN   | CHN  | Guizhou
 Århus | Aarhus   |   56.1572 |    10.2107 |      232326 | Denmark                  | DK   | DNK  | Midtjylland
(805 rows)

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

emilyd=> \d Land
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

emilyd=> \d LandTlfkode
         Table "landdb.landtlfkode"
 Column |         Type          | Modifiers 
--------+-----------------------+-----------
 navn   | text                  | not null
 pref   | character varying(20) | 
Indexes:
    "landtlfkode_pkey" PRIMARY KEY, btree (navn)

emilyd=> select * from Land;
 kode |               navn               |        pref         | iso3 
------+----------------------------------+---------------------+------
 AF   | Afghanistan                      | 93                  | AFG
 AL   | Albania                          | 355                 | ALB
 DZ   | Algeria                          | 213                 | DZA
 AS   | American Samoa                   | 1-684               | ASM
 AD   | Andorra                          | 376                 | AND
 AO   | Angola                           | 244                 | AGO
 AI   | Anguilla                         | 1-264               | AIA
 AQ   | Antarctica                       | 672                 | ATA
 AG   | Antigua and Barbuda              | 1-268               | ATG
 AR   | Argentina                        | 54                  | ARG
 AM   | Armenia                          | 374                 | ARM
 AW   | Aruba                            | 297                 | ABW
 AU   | Australia                        | 61                  | AUS
 AT   | Austria                          | 43                  | AUT
 AZ   | Azerbaijan                       | 994                 | AZE
 BS   | Bahamas                          | 1-242               | BHS
 BH   | Bahrain                          | 973                 | BHR
 BD   | Bangladesh                       | 880                 | BGD
 BB   | Barbados                         | 1-246               | BRB
 BY   | Belarus                          | 375                 | BLR
 BE   | Belgium                          | 32                  | BEL
 BZ   | Belize                           | 501                 | BLZ
 BJ   | Benin                            | 229                 | BEN
 BM   | Bermuda                          | 1-441               | BMU
 BT   | Bhutan                           | 975                 | BTN
 BO   | Bolivia                          | 591                 | BOL
 BA   | Bosnia and Herzegovina           | 387                 | BIH
 BW   | Botswana                         | 267                 | BWA
 BR   | Brazil                           | 55                  | BRA
 IO   | British Indian Ocean Territory   | 246                 | IOT
 VG   | British Virgin Islands           | 1-284               | VGB
 BN   | Brunei                           | 673                 | BRN
 BG   | Bulgaria                         | 359                 | BGR
 BF   | Burkina Faso                     | 226                 | BFA
 BI   | Burundi                          | 257                 | BDI
 KH   | Cambodia                         | 855                 | KHM
 CM   | Cameroon                         | 237                 | CMR
 CA   | Canada                           | 1                   | CAN
 CV   | Cape Verde                       | 238                 | CPV
 KY   | Cayman Islands                   | 1-345               | CYM
 CF   | Central African Republic         | 236                 | CAF
 TD   | Chad                             | 235                 | TCD
 CL   | Chile                            | 56                  | CHL
 CN   | China                            | 86                  | CHN
 CX   | Christmas Island                 | 61                  | CXR
 CC   | Cocos Islands                    | 61                  | CCK
 CO   | Colombia                         | 57                  | COL
 KM   | Comoros                          | 269                 | COM
 CK   | Cook Islands                     | 682                 | COK
 CR   | Costa Rica                       | 506                 | CRI
 HR   | Croatia                          | 385                 | HRV
 CU   | Cuba                             | 53                  | CUB
 CW   | Curacao                          | 599                 | CUW
 CY   | Cyprus                           | 357                 | CYP
 CZ   | Czech Republic                   | 420                 | CZE
 CD   | Democratic Republic of the Congo | 243                 | COD
 DK   | Denmark                          | 45                  | DNK
 DJ   | Djibouti                         | 253                 | DJI
 DM   | Dominica                         | 1-767               | DMA
 DO   | Dominican Republic               | 1-809, 1-829, 1-849 | DOM
 TL   | East Timor                       | 670                 | TLS
 EC   | Ecuador                          | 593                 | ECU
 EG   | Egypt                            | 20                  | EGY
 SV   | El Salvador                      | 503                 | SLV
 GQ   | Equatorial Guinea                | 240                 | GNQ
 ER   | Eritrea                          | 291                 | ERI
 EE   | Estonia                          | 372                 | EST
 ET   | Ethiopia                         | 251                 | ETH
 FK   | Falkland Islands                 | 500                 | FLK
 FO   | Faroe Islands                    | 298                 | FRO
 FJ   | Fiji                             | 679                 | FJI
 FI   | Finland                          | 358                 | FIN
 FR   | France                           | 33                  | FRA
 PF   | French Polynesia                 | 689                 | PYF
 GA   | Gabon                            | 241                 | GAB
 GM   | Gambia                           | 220                 | GMB
 GE   | Georgia                          | 995                 | GEO
 DE   | Germany                          | 49                  | DEU
 GH   | Ghana                            | 233                 | GHA
 GI   | Gibraltar                        | 350                 | GIB
 GR   | Greece                           | 30                  | GRC
 GL   | Greenland                        | 299                 | GRL
 GD   | Grenada                          | 1-473               | GRD
 GU   | Guam                             | 1-671               | GUM
 GT   | Guatemala                        | 502                 | GTM
 GG   | Guernsey                         | 44-1481             | GGY
 GN   | Guinea                           | 224                 | GIN
 GW   | Guinea-Bissau                    | 245                 | GNB
 GY   | Guyana                           | 592                 | GUY
 HT   | Haiti                            | 509                 | HTI
 HN   | Honduras                         | 504                 | HND
 HK   | Hong Kong                        | 852                 | HKG
 HU   | Hungary                          | 36                  | HUN
 IS   | Iceland                          | 354                 | ISL
 IN   | India                            | 91                  | IND
 ID   | Indonesia                        | 62                  | IDN
 IR   | Iran                             | 98                  | IRN
 IQ   | Iraq                             | 964                 | IRQ
 IE   | Ireland                          | 353                 | IRL
 IM   | Isle of Man                      | 44-1624             | IMN
 IL   | Israel                           | 972                 | ISR
 IT   | Italy                            | 39                  | ITA
 CI   | Ivory Coast                      | 225                 | CIV
 JM   | Jamaica                          | 1-876               | JAM
 JP   | Japan                            | 81                  | JPN
 JE   | Jersey                           | 44-1534             | JEY
 JO   | Jordan                           | 962                 | JOR
 KZ   | Kazakhstan                       | 7                   | KAZ
 KE   | Kenya                            | 254                 | KEN
 KI   | Kiribati                         | 686                 | KIR
 XK   | Kosovo                           | 383                 | XKX
 KW   | Kuwait                           | 965                 | KWT
 KG   | Kyrgyzstan                       | 996                 | KGZ
 LA   | Laos                             | 856                 | LAO
 LV   | Latvia                           | 371                 | LVA
 LB   | Lebanon                          | 961                 | LBN
 LS   | Lesotho                          | 266                 | LSO
 LR   | Liberia                          | 231                 | LBR
 LY   | Libya                            | 218                 | LBY
 LI   | Liechtenstein                    | 423                 | LIE
 LT   | Lithuania                        | 370                 | LTU
 LU   | Luxembourg                       | 352                 | LUX
 MO   | Macau                            | 853                 | MAC
 MK   | Macedonia                        | 389                 | MKD
 MG   | Madagascar                       | 261                 | MDG
 MW   | Malawi                           | 265                 | MWI
 MY   | Malaysia                         | 60                  | MYS
 MV   | Maldives                         | 960                 | MDV
 ML   | Mali                             | 223                 | MLI
 MT   | Malta                            | 356                 | MLT
 MH   | Marshall Islands                 | 692                 | MHL
 MR   | Mauritania                       | 222                 | MRT
 MU   | Mauritius                        | 230                 | MUS
 YT   | Mayotte                          | 262                 | MYT
 MX   | Mexico                           | 52                  | MEX
 FM   | Micronesia                       | 691                 | FSM
 MD   | Moldova                          | 373                 | MDA
 MC   | Monaco                           | 377                 | MCO
 MN   | Mongolia                         | 976                 | MNG
 ME   | Montenegro                       | 382                 | MNE
 MS   | Montserrat                       | 1-664               | MSR
 MA   | Morocco                          | 212                 | MAR
 MZ   | Mozambique                       | 258                 | MOZ
 MM   | Myanmar                          | 95                  | MMR
 NA   | Namibia                          | 264                 | NAM
 NR   | Nauru                            | 674                 | NRU
 NP   | Nepal                            | 977                 | NPL
 NL   | Netherlands                      | 31                  | NLD
 AN   | Netherlands Antilles             | 599                 | ANT
 NC   | New Caledonia                    | 687                 | NCL
 NZ   | New Zealand                      | 64                  | NZL
 NI   | Nicaragua                        | 505                 | NIC
 NE   | Niger                            | 227                 | NER
 NG   | Nigeria                          | 234                 | NGA
 NU   | Niue                             | 683                 | NIU
 KP   | North Korea                      | 850                 | PRK
 MP   | Northern Mariana Islands         | 1-670               | MNP
 NO   | Norway                           | 47                  | NOR
 OM   | Oman                             | 968                 | OMN
 PK   | Pakistan                         | 92                  | PAK
 PW   | Palau                            | 680                 | PLW
 PS   | Palestine                        | 970                 | PSE
 PA   | Panama                           | 507                 | PAN
 PG   | Papua New Guinea                 | 675                 | PNG
 PY   | Paraguay                         | 595                 | PRY
 PE   | Peru                             | 51                  | PER
 PH   | Philippines                      | 63                  | PHL
 PN   | Pitcairn                         | 64                  | PCN
 PL   | Poland                           | 48                  | POL
 PT   | Portugal                         | 351                 | PRT
 PR   | Puerto Rico                      | 1-787, 1-939        | PRI
 QA   | Qatar                            | 974                 | QAT
 CG   | Republic of the Congo            | 242                 | COG
 RE   | Reunion                          | 262                 | REU
 RO   | Romania                          | 40                  | ROU
 RU   | Russia                           | 7                   | RUS
 RW   | Rwanda                           | 250                 | RWA
 BL   | Saint Barthelemy                 | 590                 | BLM
 SH   | Saint Helena                     | 290                 | SHN
 KN   | Saint Kitts and Nevis            | 1-869               | KNA
 LC   | Saint Lucia                      | 1-758               | LCA
 MF   | Saint Martin                     | 590                 | MAF
 PM   | Saint Pierre and Miquelon        | 508                 | SPM
 VC   | Saint Vincent and the Grenadines | 1-784               | VCT
 WS   | Samoa                            | 685                 | WSM
 SM   | San Marino                       | 378                 | SMR
 ST   | Sao Tome and Principe            | 239                 | STP
 SA   | Saudi Arabia                     | 966                 | SAU
 SN   | Senegal                          | 221                 | SEN
 RS   | Serbia                           | 381                 | SRB
 SC   | Seychelles                       | 248                 | SYC
 SL   | Sierra Leone                     | 232                 | SLE
 SG   | Singapore                        | 65                  | SGP
 SX   | Sint Maarten                     | 1-721               | SXM
 SK   | Slovakia                         | 421                 | SVK
 SI   | Slovenia                         | 386                 | SVN
 SB   | Solomon Islands                  | 677                 | SLB
 SO   | Somalia                          | 252                 | SOM
 ZA   | South Africa                     | 27                  | ZAF
 KR   | South Korea                      | 82                  | KOR
 SS   | South Sudan                      | 211                 | SSD
 ES   | Spain                            | 34                  | ESP
 LK   | Sri Lanka                        | 94                  | LKA
 SD   | Sudan                            | 249                 | SDN
 SR   | Suriname                         | 597                 | SUR
 SJ   | Svalbard and Jan Mayen           | 47                  | SJM
 SZ   | Swaziland                        | 268                 | SWZ
 SE   | Sweden                           | 46                  | SWE
 CH   | Switzerland                      | 41                  | CHE
 SY   | Syria                            | 963                 | SYR
 TW   | Taiwan                           | 886                 | TWN
 TJ   | Tajikistan                       | 992                 | TJK
 TZ   | Tanzania                         | 255                 | TZA
 TH   | Thailand                         | 66                  | THA
 TG   | Togo                             | 228                 | TGO
 TK   | Tokelau                          | 690                 | TKL
 TO   | Tonga                            | 676                 | TON
 TT   | Trinidad and Tobago              | 1-868               | TTO
 TN   | Tunisia                          | 216                 | TUN
 TR   | Turkey                           | 90                  | TUR
 TM   | Turkmenistan                     | 993                 | TKM
 TC   | Turks and Caicos Islands         | 1-649               | TCA
 TV   | Tuvalu                           | 688                 | TUV
 VI   | U.S. Virgin Islands              | 1-340               | VIR
 UG   | Uganda                           | 256                 | UGA
 UA   | Ukraine                          | 380                 | UKR
 AE   | United Arab Emirates             | 971                 | ARE
 GB   | United Kingdom                   | 44                  | GBR
 US   | United States                    | 1                   | USA
 UY   | Uruguay                          | 598                 | URY
 UZ   | Uzbekistan                       | 998                 | UZB
 VU   | Vanuatu                          | 678                 | VUT
 VA   | Vatican                          | 379                 | VAT
 VE   | Venezuela                        | 58                  | VEN
 VN   | Vietnam                          | 84                  | VNM
 WF   | Wallis and Futuna                | 681                 | WLF
 EH   | Western Sahara                   | 212                 | ESH
 YE   | Yemen                            | 967                 | YEM
 ZM   | Zambia                           | 260                 | ZMB
 ZW   | Zimbabwe                         | 263                 | ZWE
(240 rows)

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
emilyd=> select * from LandTlfkode;
            navn             | pref 
-----------------------------+------
 Algeria                     | 213
 Angola                      | 244
 Ascension Island            | 247
 Benin                       | 229
 Botswana                    | 267
 Burkina Faso                | 226
 Burundi                     | 257
 Cameroon                    | 237
 Cape Verde                  | 238
 Central African Republic    | 236
 Chad                        | 235
 Comoros                     | 269
 Congo                       | 242
 Congo, Dem. Rep. of (Zaire) | 243
 Djibouti                    | 253
 Egypt                       | 20
 Equatorial Guinea           | 240
 Eritrea                     | 291
 Ethiopia                    | 251
 Gabon Republic              | 241
 Gambia                      | 220
 Ghana                       | 233
 Guinea                      | 224
 Guinea-Bissau               | 245
 Ivory Coast (Côte d'Ivoire) | 225
 Kenya                       | 254
 Lesotho                     | 266
 Liberia                     | 231
 Libya                       | 218
 Madagascar                  | 261
 Malawi                      | 265
 Mali                        | 223
 Mauritania                  | 222
 Mauritius                   | 230
 Morocco                     | 212
 Mozambique                  | 258
 Namibia                     | 264
 Niger                       | 227
 Nigeria                     | 234
 Reunion Island              | 262
 Rwanda                      | 250
 Sao Tome & Principe         | 239
 Senegal                     | 221
 Seychelles Islands          | 248
 Sierra Leone                | 232
 Somalia                     | 252
 South Africa                | 27
 St. Helena                  | 290
 Sudan                       | 249
 Swaziland                   | 268
 Tanzania                    | 255
 Togo                        | 228
 Tunisia                     | 216
 Uganda                      | 256
 Zambia                      | 260
 Zimbabwe                    | 263
(56 rows)

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
emilyd=> 
emilyd=> 
emilyd=> 
emilyd=> select l.kode, l.navn
emilyd-> from land l join landtlfkode k on l.pref= k.pref;
 kode |               navn               
------+----------------------------------
 DZ   | Algeria
 AO   | Angola
 BJ   | Benin
 BW   | Botswana
 BF   | Burkina Faso
 BI   | Burundi
 CM   | Cameroon
 CV   | Cape Verde
 CF   | Central African Republic
 TD   | Chad
 KM   | Comoros
 CD   | Democratic Republic of the Congo
 DJ   | Djibouti
 EG   | Egypt
 GQ   | Equatorial Guinea
 ER   | Eritrea
 ET   | Ethiopia
 GA   | Gabon
 GM   | Gambia
 GH   | Ghana
 GN   | Guinea
 GW   | Guinea-Bissau
 CI   | Ivory Coast
 KE   | Kenya
 LS   | Lesotho
 LR   | Liberia
 LY   | Libya
 MG   | Madagascar
 MW   | Malawi
 ML   | Mali
 MR   | Mauritania
 MU   | Mauritius
 YT   | Mayotte
 MA   | Morocco
 MZ   | Mozambique
 NA   | Namibia
 NE   | Niger
 NG   | Nigeria
 CG   | Republic of the Congo
 RE   | Reunion
 RW   | Rwanda
 SH   | Saint Helena
 ST   | Sao Tome and Principe
 SN   | Senegal
 SC   | Seychelles
 SL   | Sierra Leone
 SO   | Somalia
 ZA   | South Africa
 SD   | Sudan
 SZ   | Swaziland
 TZ   | Tanzania
 TG   | Togo
 TN   | Tunisia
 UG   | Uganda
 EH   | Western Sahara
 ZM   | Zambia
 ZW   | Zimbabwe
(57 rows)

emilyd=> 
emilyd=> drop table if exists Afrikaland;
NOTICE:  table "afrikaland" does not exist, skipping
DROP TABLE
emilyd=> create table Afrikaland (
emilyd(>        kode char(2) primary key,
emilyd(>        navn text unique
emilyd(> );
CREATE TABLE
emilyd=> 
emilyd=> select * from Afrikaland;
 kode | navn 
------+------
(0 rows)

emilyd=> select l.kode, l.navn
emilyd-> from land l join landtlfkode k on l.pref = k.pref;
 kode |               navn               
------+----------------------------------
 DZ   | Algeria
 AO   | Angola
 BJ   | Benin
 BW   | Botswana
 BF   | Burkina Faso
 BI   | Burundi
 CM   | Cameroon
 CV   | Cape Verde
 CF   | Central African Republic
 TD   | Chad
 KM   | Comoros
 CD   | Democratic Republic of the Congo
 DJ   | Djibouti
 EG   | Egypt
 GQ   | Equatorial Guinea
 ER   | Eritrea
 ET   | Ethiopia
 GA   | Gabon
 GM   | Gambia
 GH   | Ghana
 GN   | Guinea
 GW   | Guinea-Bissau
 CI   | Ivory Coast
 KE   | Kenya
 LS   | Lesotho
 LR   | Liberia
 LY   | Libya
 MG   | Madagascar
 MW   | Malawi
 ML   | Mali
 MR   | Mauritania
 MU   | Mauritius
 YT   | Mayotte
 MA   | Morocco
 MZ   | Mozambique
 NA   | Namibia
 NE   | Niger
 NG   | Nigeria
 CG   | Republic of the Congo
 RE   | Reunion
 RW   | Rwanda
 SH   | Saint Helena
 ST   | Sao Tome and Principe
 SN   | Senegal
 SC   | Seychelles
 SL   | Sierra Leone
 SO   | Somalia
 ZA   | South Africa
 SD   | Sudan
 SZ   | Swaziland
 TZ   | Tanzania
 TG   | Togo
 TN   | Tunisia
 UG   | Uganda
 EH   | Western Sahara
 ZM   | Zambia
 ZW   | Zimbabwe
(57 rows)

emilyd=> insert into Afrikaland
emilyd-> select l.kode, l.navn
emilyd-> from land l join landtlfkode k on l.pref=k.pref;
INSERT 0 57
emilyd=> select * from Afrikaland; 
 kode |               navn               
------+----------------------------------
 DZ   | Algeria
 AO   | Angola
 BJ   | Benin
 BW   | Botswana
 BF   | Burkina Faso
 BI   | Burundi
 CM   | Cameroon
 CV   | Cape Verde
 CF   | Central African Republic
 TD   | Chad
 KM   | Comoros
 CD   | Democratic Republic of the Congo
 DJ   | Djibouti
 EG   | Egypt
 GQ   | Equatorial Guinea
 ER   | Eritrea
 ET   | Ethiopia
 GA   | Gabon
 GM   | Gambia
 GH   | Ghana
 GN   | Guinea
 GW   | Guinea-Bissau
 CI   | Ivory Coast
 KE   | Kenya
 LS   | Lesotho
 LR   | Liberia
 LY   | Libya
 MG   | Madagascar
 MW   | Malawi
 ML   | Mali
 MR   | Mauritania
 MU   | Mauritius
 YT   | Mayotte
 MA   | Morocco
 MZ   | Mozambique
 NA   | Namibia
 NE   | Niger
 NG   | Nigeria
 CG   | Republic of the Congo
 RE   | Reunion
 RW   | Rwanda
 SH   | Saint Helena
 ST   | Sao Tome and Principe
 SN   | Senegal
 SC   | Seychelles
 SL   | Sierra Leone
 SO   | Somalia
 ZA   | South Africa
 SD   | Sudan
 SZ   | Swaziland
 TZ   | Tanzania
 TG   | Togo
 TN   | Tunisia
 UG   | Uganda
 EH   | Western Sahara
 ZM   | Zambia
 ZW   | Zimbabwe
(57 rows)

emilyd=> select L.kode, L.navn
emilyd-> from land L, landtlfkode K
emilyd-> where  L.pref = K.pref;
 kode |               navn               
------+----------------------------------
 DZ   | Algeria
 AO   | Angola
 BJ   | Benin
 BW   | Botswana
 BF   | Burkina Faso
 BI   | Burundi
 CM   | Cameroon
 CV   | Cape Verde
 CF   | Central African Republic
 TD   | Chad
 KM   | Comoros
 CD   | Democratic Republic of the Congo
 DJ   | Djibouti
 EG   | Egypt
 GQ   | Equatorial Guinea
 ER   | Eritrea
 ET   | Ethiopia
 GA   | Gabon
 GM   | Gambia
 GH   | Ghana
 GN   | Guinea
 GW   | Guinea-Bissau
 CI   | Ivory Coast
 KE   | Kenya
 LS   | Lesotho
 LR   | Liberia
 LY   | Libya
 MG   | Madagascar
 MW   | Malawi
 ML   | Mali
 MR   | Mauritania
 MU   | Mauritius
 YT   | Mayotte
 MA   | Morocco
 MZ   | Mozambique
 NA   | Namibia
 NE   | Niger
 NG   | Nigeria
 CG   | Republic of the Congo
 RE   | Reunion
 RW   | Rwanda
 SH   | Saint Helena
 ST   | Sao Tome and Principe
 SN   | Senegal
 SC   | Seychelles
 SL   | Sierra Leone
 SO   | Somalia
 ZA   | South Africa
 SD   | Sudan
 SZ   | Swaziland
 TZ   | Tanzania
 TG   | Togo
 TN   | Tunisia
 UG   | Uganda
 EH   | Western Sahara
 ZM   | Zambia
 ZW   | Zimbabwe
(57 rows)

emilyd=> \d person
Did not find any relation named "person".
emilyd=> \d
           List of relations
 Schema |    Name     | Type  | Owner  
--------+-------------+-------+--------
 landdb | afrikaland  | table | emilyd
 landdb | bydata      | table | emilyd
 landdb | land        | table | emilyd
 landdb | landtlfkode | table | emilyd
 landdb | tallforland | table | emilyd
(5 rows)

emilyd=> 










