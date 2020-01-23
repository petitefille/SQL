[emilyd@skullion landDB]$ cd ver1.0
[emilyd@skullion ver1.0]$ ls
20171006.sql  cities.sql  countries.sql  states.sql
[emilyd@skullion ver1.0]$ psql -h dbpg-ifi-kurs -U emilyd -d emilyd
Password for user emilyd: 

psql (9.2.23, server 9.6.6)
WARNING: psql version 9.2, server version 9.6.
         Some psql features might not work.
SSL connection (cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256)
Type "help" for help.

emilyd=> 
emilyd=> \q
[emilyd@skullion ver1.0]$ psql -h dbpg-ifi-kurs -U emilyd -d emilyd
Password for user emilyd: 
psql (9.2.23, server 9.6.6)
WARNING: psql version 9.2, server version 9.6.
         Some psql features might not work.
SSL connection (cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256)
Type "help" for help.

emilyd=> create schema landdb; 
ERROR:  schema "landdb" already exists
emilyd=> set search_path to landdb;
SET
emilyd=> drop  TABLE IF EXISTS countries;
NOTICE:  table "countries" does not exist, skipping
DROP TABLE
emilyd=> drop  TABLE IF EXISTS states;
NOTICE:  table "states" does not exist, skipping
DROP TABLE
emilyd=> drop  TABLE IF EXISTS cities;
NOTICE:  table "cities" does not exist, skipping
DROP TABLE
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
emilyd=> select C.sortname, C.name
emilyd-> from countries;
ERROR:  missing FROM-clause entry for table "c"
LINE 1: select C.sortname, C.name
               ^
emilyd=> select * from countries;
 id  | sortname |                 name                 | phonecode 
-----+----------+--------------------------------------+-----------
   1 | AF       | Afghanistan                          |        93
   2 | AL       | Albania                              |       355
   3 | DZ       | Algeria                              |       213
   4 | AS       | American Samoa                       |      1684
   5 | AD       | Andorra                              |       376
   6 | AO       | Angola                               |       244
   7 | AI       | Anguilla                             |      1264
   8 | AQ       | Antarctica                           |         0
   9 | AG       | Antigua And Barbuda                  |      1268
  10 | AR       | Argentina                            |        54
  11 | AM       | Armenia                              |       374
  12 | AW       | Aruba                                |       297
  13 | AU       | Australia                            |        61
  14 | AT       | Austria                              |        43
  15 | AZ       | Azerbaijan                           |       994
  16 | BS       | Bahamas The                          |      1242
  17 | BH       | Bahrain                              |       973
  18 | BD       | Bangladesh                           |       880
  19 | BB       | Barbados                             |      1246
  20 | BY       | Belarus                              |       375
  21 | BE       | Belgium                              |        32
emilyd=> 
emilyd=> select C.sortname, C.name 
emilyd-> from countries;
ERROR:  missing FROM-clause entry for table "c"
LINE 1: select C.sortname, C.name 
               ^
emilyd=> select C.sortname, C.name 
from countries C;
 sortname |                 name                 
----------+--------------------------------------
 AF       | Afghanistan
 AL       | Albania
 DZ       | Algeria
 AS       | American Samoa
 AD       | Andorra
 AO       | Angola
 AI       | Anguilla
 AQ       | Antarctica
 AG       | Antigua And Barbuda
 AR       | Argentina
 AM       | Armenia
 AW       | Aruba
 AU       | Australia
 AT       | Austria
 AZ       | Azerbaijan
 BS       | Bahamas The
 BH       | Bahrain
 BD       | Bangladesh
 BB       | Barbados
 BY       | Belarus
 BE       | Belgium
 BZ       | Belize
 BJ       | Benin
 BM       | Bermuda
 BT       | Bhutan
 BO       | Bolivia
 BA       | Bosnia and Herzegovina
 BW       | Botswana
 BV       | Bouvet Island
 BR       | Brazil
 IO       | British Indian Ocean Territory
 BN       | Brunei
 BG       | Bulgaria
 BF       | Burkina Faso
 BI       | Burundi
 KH       | Cambodia
 CM       | Cameroon
 CA       | Canada
 CV       | Cape Verde
 KY       | Cayman Islands
 CF       | Central African Republic
 TD       | Chad
 CL       | Chile
 CN       | China
 CX       | Christmas Island
 CC       | Cocos (Keeling) Islands
 CO       | Colombia
 KM       | Comoros
 CG       | Republic Of The Congo
 CD       | Democratic Republic Of The Congo
 CK       | Cook Islands
 CR       | Costa Rica
 CI       | Cote D'Ivoire (Ivory Coast)
 HR       | Croatia (Hrvatska)
 CU       | Cuba
 CY       | Cyprus
 CZ       | Czech Republic
 DK       | Denmark
 DJ       | Djibouti
 DM       | Dominica
 DO       | Dominican Republic
 TP       | East Timor
 EC       | Ecuador
 EG       | Egypt
 SV       | El Salvador
 GQ       | Equatorial Guinea
 ER       | Eritrea
 EE       | Estonia
 ET       | Ethiopia
 XA       | External Territories of Australia
 FK       | Falkland Islands
 FO       | Faroe Islands
 FJ       | Fiji Islands
 FI       | Finland
 FR       | France
 GF       | French Guiana
 PF       | French Polynesia
 TF       | French Southern Territories
 GA       | Gabon
 GM       | Gambia The
 GE       | Georgia
 DE       | Germany
 GH       | Ghana
 GI       | Gibraltar
 GR       | Greece
 GL       | Greenland
 GD       | Grenada
 GP       | Guadeloupe
 GU       | Guam
 GT       | Guatemala
 XU       | Guernsey and Alderney
 GN       | Guinea
 GW       | Guinea-Bissau
 GY       | Guyana
 HT       | Haiti
 HM       | Heard and McDonald Islands
 HN       | Honduras
 HK       | Hong Kong S.A.R.
 HU       | Hungary
 IS       | Iceland
 IN       | India
 ID       | Indonesia
 IR       | Iran
 IQ       | Iraq
 IE       | Ireland
 IL       | Israel
 IT       | Italy
 JM       | Jamaica
 JP       | Japan
 XJ       | Jersey
 JO       | Jordan
 KZ       | Kazakhstan
 KE       | Kenya
 KI       | Kiribati
 KP       | Korea North
 KR       | Korea South
 KW       | Kuwait
 KG       | Kyrgyzstan
 LA       | Laos
 LV       | Latvia
 LB       | Lebanon
 LS       | Lesotho
 LR       | Liberia
 LY       | Libya
 LI       | Liechtenstein
 LT       | Lithuania
 LU       | Luxembourg
 MO       | Macau S.A.R.
 MK       | Macedonia
 MG       | Madagascar
 MW       | Malawi
 MY       | Malaysia
 MV       | Maldives
 ML       | Mali
 MT       | Malta
 XM       | Man (Isle of)
 MH       | Marshall Islands
 MQ       | Martinique
 MR       | Mauritania
 MU       | Mauritius
 YT       | Mayotte
 MX       | Mexico
 FM       | Micronesia
 MD       | Moldova
 MC       | Monaco
 MN       | Mongolia
 MS       | Montserrat
 MA       | Morocco
 MZ       | Mozambique
 MM       | Myanmar
 NA       | Namibia
 NR       | Nauru
 NP       | Nepal
 AN       | Netherlands Antilles
 NL       | Netherlands The
 NC       | New Caledonia
 NZ       | New Zealand
 NI       | Nicaragua
 NE       | Niger
 NG       | Nigeria
 NU       | Niue
 NF       | Norfolk Island
 MP       | Northern Mariana Islands
 NO       | Norway
 OM       | Oman
 PK       | Pakistan
 PW       | Palau
 PS       | Palestinian Territory Occupied
 PA       | Panama
 PG       | Papua new Guinea
 PY       | Paraguay
 PE       | Peru
 PH       | Philippines
 PN       | Pitcairn Island
 PL       | Poland
 PT       | Portugal
 PR       | Puerto Rico
 QA       | Qatar
 RE       | Reunion
 RO       | Romania
 RU       | Russia
 RW       | Rwanda
 SH       | Saint Helena
 KN       | Saint Kitts And Nevis
 LC       | Saint Lucia
 PM       | Saint Pierre and Miquelon
 VC       | Saint Vincent And The Grenadines
 WS       | Samoa
 SM       | San Marino
 ST       | Sao Tome and Principe
 SA       | Saudi Arabia
 SN       | Senegal
 RS       | Serbia
 SC       | Seychelles
 SL       | Sierra Leone
 SG       | Singapore
 SK       | Slovakia
 SI       | Slovenia
 XG       | Smaller Territories of the UK
 SB       | Solomon Islands
 SO       | Somalia
 ZA       | South Africa
 GS       | South Georgia
 SS       | South Sudan
 ES       | Spain
 LK       | Sri Lanka
 SD       | Sudan
 SR       | Suriname
 SJ       | Svalbard And Jan Mayen Islands
 SZ       | Swaziland
 SE       | Sweden
 CH       | Switzerland
 SY       | Syria
 TW       | Taiwan
 TJ       | Tajikistan
 TZ       | Tanzania
 TH       | Thailand
 TG       | Togo
 TK       | Tokelau
 TO       | Tonga
 TT       | Trinidad And Tobago
 TN       | Tunisia
 TR       | Turkey
 TM       | Turkmenistan
 TC       | Turks And Caicos Islands
 TV       | Tuvalu
 UG       | Uganda
 UA       | Ukraine
 AE       | United Arab Emirates
 GB       | United Kingdom
 US       | United States
 UM       | United States Minor Outlying Islands
 UY       | Uruguay
 UZ       | Uzbekistan
 VU       | Vanuatu
 VA       | Vatican City State (Holy See)
 VE       | Venezuela
 VN       | Vietnam
 VG       | Virgin Islands (British)
 VI       | Virgin Islands (US)
 WF       | Wallis And Futuna Islands
 EH       | Western Sahara
 YE       | Yemen
 YU       | Yugoslavia
 ZM       | Zambia
 ZW       | Zimbabwe
(246 rows)

emilyd=>  drop table if exists Land;
DROP TABLE
emilyd=> drop table if exists Regioner;
NOTICE:  table "regioner" does not exist, skipping
DROP TABLE
emilyd=> drop table if exists Byer;
NOTICE:  table "byer" does not exist, skipping
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
emilyd=> drop  TABLE IF EXISTS countries;
DROP TABLE
emilyd=> drop  TABLE IF EXISTS states;
DROP TABLE
emilyd=> drop  TABLE IF EXISTS cities;
DROP TABLE
emilyd=> 
emilyd=> select *
emilyd-> from Land natural join regioner;
 lkode |                lnavn                 | rid  |             rnavn              
-------+--------------------------------------+------+--------------------------------
 IN    | India                                |    1 | Andaman and Nicobar Islands
 IN    | India                                |    2 | Andhra Pradesh
 IN    | India                                |    3 | Arunachal Pradesh
 IN    | India                                |    4 | Assam
 IN    | India                                |    5 | Bihar
 IN    | India                                |    6 | Chandigarh
 IN    | India                                |    7 | Chhattisgarh
 IN    | India                                |    8 | Dadra and Nagar Haveli
 IN    | India                                |    9 | Daman and Diu
 IN    | India                                |   10 | Delhi
 IN    | India                                |   11 | Goa
 IN    | India                                |   12 | Gujarat
 IN    | India                                |   13 | Haryana
 IN    | India                                |   14 | Himachal Pradesh
 IN    | India                                |   15 | Jammu and Kashmir
 IN    | India                                |   16 | Jharkhand
 IN    | India                                |   17 | Karnataka
 IN    | India                                |   18 | Kenmore
 IN    | India                                |   19 | Kerala
 IN    | India                                |   20 | Lakshadweep
 IN    | India                                |   21 | Madhya Pradesh
emilyd=> 
emilyd=> select *
emilyd-> from Land natural join regioner natural join byer;
 rid  | lkode |              lnavn               |            rnavn            |  bid  |             bnavn              
------+-------+----------------------------------+-----------------------------+-------+--------------------------------
    1 | IN    | India                            | Andaman and Nicobar Islands |     1 | Bombuflat
    1 | IN    | India                            | Andaman and Nicobar Islands |     2 | Garacharma
    1 | IN    | India                            | Andaman and Nicobar Islands |     3 | Port Blair
    1 | IN    | India                            | Andaman and Nicobar Islands |     4 | Rangat
    2 | IN    | India                            | Andhra Pradesh              |     5 | Addanki
    2 | IN    | India                            | Andhra Pradesh              |     6 | Adivivaram
    2 | IN    | India                            | Andhra Pradesh              |     7 | Adoni
    2 | IN    | India                            | Andhra Pradesh              |     8 | Aganampudi
    2 | IN    | India                            | Andhra Pradesh              |     9 | Ajjaram
    2 | IN    | India                            | Andhra Pradesh              |    10 | Akividu
    2 | IN    | India                            | Andhra Pradesh              |    11 | Akkarampalle
    2 | IN    | India                            | Andhra Pradesh              |    12 | Akkayapalle
    2 | IN    | India                            | Andhra Pradesh              |    13 | Akkireddipalem
    2 | IN    | India                            | Andhra Pradesh              |    14 | Alampur
    2 | IN    | India                            | Andhra Pradesh              |    15 | Amalapuram
    2 | IN    | India                            | Andhra Pradesh              |    16 | Amudalavalasa
    2 | IN    | India                            | Andhra Pradesh              |    17 | Amur
    2 | IN    | India                            | Andhra Pradesh              |    18 | Anakapalle
    2 | IN    | India                            | Andhra Pradesh              |    19 | Anantapur
    2 | IN    | India                            | Andhra Pradesh              |    20 | Andole
    2 | IN    | India                            | Andhra Pradesh              |    21 | Atmakur
    2 | IN    | India                            | Andhra Pradesh              |    22 | Attili
    2 | IN    | India                            | Andhra Pradesh              |    23 | Avanigadda
    2 | IN    | India                            | Andhra Pradesh              |    24 | Badepalli
    2 | IN    | India                            | Andhra Pradesh              |    25 | Badvel
    2 | IN    | India                            | Andhra Pradesh              |    26 | Balapur
    2 | IN    | India                            | Andhra Pradesh              |    27 | Bandarulanka
    2 | IN    | India                            | Andhra Pradesh              |    28 | Banganapalle
    2 | IN    | India                            | Andhra Pradesh              |    29 | Bapatla
    2 | IN    | India                            | Andhra Pradesh              |    30 | Bapulapadu
    2 | IN    | India                            | Andhra Pradesh              |    31 | Belampalli
    2 | IN    | India                            | Andhra Pradesh              |    32 | Bestavaripeta
    2 | IN    | India                            | Andhra Pradesh              |    33 | Betamcherla
    2 | IN    | India                            | Andhra Pradesh              |    34 | Bhattiprolu
    2 | IN    | India                            | Andhra Pradesh              |    35 | Bhimavaram
    2 | IN    | India                            | Andhra Pradesh              |    36 | Bhimunipatnam
    2 | IN    | India                            | Andhra Pradesh              |    37 | Bobbili
    2 | IN    | India                            | Andhra Pradesh              |    38 | Bombuflat
    2 | IN    | India                            | Andhra Pradesh              |    39 | Bommuru
    2 | IN    | India                            | Andhra Pradesh              |    40 | Bugganipalle
    2 | IN    | India                            | Andhra Pradesh              |    41 | Challapalle
    2 | IN    | India                            | Andhra Pradesh              |    42 | Chandur
    2 | IN    | India                            | Andhra Pradesh              |    43 | Chatakonda
    2 | IN    | India                            | Andhra Pradesh              |    44 | Chemmumiahpet
    2 | IN    | India                            | Andhra Pradesh              |    45 | Chidiga
    2 | IN    | India                            | Andhra Pradesh              |    46 | Chilakaluripet
    2 | IN    | India                            | Andhra Pradesh              |    47 | Chimakurthy
    2 | IN    | India                            | Andhra Pradesh              |    48 | Chinagadila
    2 | IN    | India                            | Andhra Pradesh              |    49 | Chinagantyada
    2 | IN    | India                            | Andhra Pradesh              |    50 | Chinnachawk
    2 | IN    | India                            | Andhra Pradesh              |    51 | Chintalavalasa
    2 | IN    | India                            | Andhra Pradesh              |    52 | Chipurupalle
    2 | IN    | India                            | Andhra Pradesh              |    53 | Chirala
    2 | IN    | India                            | Andhra Pradesh              |    54 | Chittoor
    2 | IN    | India                            | Andhra Pradesh              |    55 | Chodavaram
    2 | IN    | India                            | Andhra Pradesh              |    56 | Choutuppal
    2 | IN    | India                            | Andhra Pradesh              |    57 | Chunchupalle
    2 | IN    | India                            | Andhra Pradesh              |    58 | Cuddapah
    2 | IN    | India                            | Andhra Pradesh              |    59 | Cumbum
    2 | IN    | India                            | Andhra Pradesh              |    60 | Darnakal
    2 | IN    | India                            | Andhra Pradesh              |    61 | Dasnapur
    2 | IN    | India                            | Andhra Pradesh              |    62 | Dauleshwaram
    2 | IN    | India                            | Andhra Pradesh              |    63 | Dharmavaram
    2 | IN    | India                            | Andhra Pradesh              |    64 | Dhone
    2 | IN    | India                            | Andhra Pradesh              |    65 | Dommara Nandyal
    2 | IN    | India                            | Andhra Pradesh              |    66 | Dowlaiswaram
    2 | IN    | India                            | Andhra Pradesh              |    67 | East Godavari Dist.
    2 | IN    | India                            | Andhra Pradesh              |    68 | Eddumailaram
    2 | IN    | India                            | Andhra Pradesh              |    69 | Edulapuram
    2 | IN    | India                            | Andhra Pradesh              |    70 | Ekambara kuppam
    2 | IN    | India                            | Andhra Pradesh              |    71 | Eluru
    2 | IN    | India                            | Andhra Pradesh              |    72 | Enikapadu
    2 | IN    | India                            | Andhra Pradesh              |    73 | Fakirtakya
    2 | IN    | India                            | Andhra Pradesh              |    74 | Farrukhnagar
    2 | IN    | India                            | Andhra Pradesh              |    75 | Gaddiannaram
    2 | IN    | India                            | Andhra Pradesh              |    76 | Gajapathinagaram
    2 | IN    | India                            | Andhra Pradesh              |    77 | Gajularega
    2 | IN    | India                            | Andhra Pradesh              |    78 | Gajuvaka
    2 | IN    | India                            | Andhra Pradesh              |    79 | Gannavaram
    2 | IN    | India                            | Andhra Pradesh              |    80 | Garacharma
    2 | IN    | India                            | Andhra Pradesh              |    81 | Garimellapadu
    2 | IN    | India                            | Andhra Pradesh              |    82 | Giddalur
    2 | IN    | India                            | Andhra Pradesh              |    83 | Godavarikhani
    2 | IN    | India                            | Andhra Pradesh              |    84 | Gopalapatnam
    2 | IN    | India                            | Andhra Pradesh              |    85 | Gopalur
    2 | IN    | India                            | Andhra Pradesh              |    86 | Gorrekunta
    2 | IN    | India                            | Andhra Pradesh              |    87 | Gudivada
    2 | IN    | India                            | Andhra Pradesh              |    88 | Gudur
    2 | IN    | India                            | Andhra Pradesh              |    89 | Guntakal
    2 | IN    | India                            | Andhra Pradesh              |    90 | Guntur
    2 | IN    | India                            | Andhra Pradesh              |    91 | Guti
    2 | IN    | India                            | Andhra Pradesh              |    92 | Hindupur
    2 | IN    | India                            | Andhra Pradesh              |    93 | Hukumpeta
    2 | IN    | India                            | Andhra Pradesh              |    94 | Ichchapuram
    2 | IN    | India                            | Andhra Pradesh              |    95 | Isnapur
    2 | IN    | India                            | Andhra Pradesh              |    96 | Jaggayyapeta
    2 | IN    | India                            | Andhra Pradesh              |    97 | Jallaram Kamanpur
    2 | IN    | India                            | Andhra Pradesh              |    98 | Jammalamadugu
    2 | IN    | India                            | Andhra Pradesh              |    99 | Jangampalli
    2 | IN    | India                            | Andhra Pradesh              |   100 | Jarjapupeta
    2 | IN    | India                            | Andhra Pradesh              |   101 | Kadiri
    2 | IN    | India                            | Andhra Pradesh              |   102 | Kaikalur
    2 | IN    | India                            | Andhra Pradesh              |   103 | Kakinada
    2 | IN    | India                            | Andhra Pradesh              |   104 | Kallur
    2 | IN    | India                            | Andhra Pradesh              |   105 | Kalyandurg
    2 | IN    | India                            | Andhra Pradesh              |   106 | Kamalapuram
    2 | IN    | India                            | Andhra Pradesh              |   107 | Kamareddi
    2 | IN    | India                            | Andhra Pradesh              |   108 | Kanapaka
    2 | IN    | India                            | Andhra Pradesh              |   109 | Kanigiri
    2 | IN    | India                            | Andhra Pradesh              |   110 | Kanithi
    2 | IN    | India                            | Andhra Pradesh              |   111 | Kankipadu
    2 | IN    | India                            | Andhra Pradesh              |   112 | Kantabamsuguda
    2 | IN    | India                            | Andhra Pradesh              |   113 | Kanuru
    2 | IN    | India                            | Andhra Pradesh              |   114 | Karnul
    2 | IN    | India                            | Andhra Pradesh              |   115 | Katheru
    2 | IN    | India                            | Andhra Pradesh              |   116 | Kavali
    2 | IN    | India                            | Andhra Pradesh              |   117 | Kazipet
    2 | IN    | India                            | Andhra Pradesh              |   118 | Khanapuram Haveli
    2 | IN    | India                            | Andhra Pradesh              |   119 | Kodar
    2 | IN    | India                            | Andhra Pradesh              |   120 | Kollapur
    2 | IN    | India                            | Andhra Pradesh              |   121 | Kondapalem
    2 | IN    | India                            | Andhra Pradesh              |   122 | Kondapalle
    2 | IN    | India                            | Andhra Pradesh              |   123 | Kondukur
    2 | IN    | India                            | Andhra Pradesh              |   124 | Kosgi
    2 | IN    | India                            | Andhra Pradesh              |   125 | Kothavalasa
    2 | IN    | India                            | Andhra Pradesh              |   126 | Kottapalli
    2 | IN    | India                            | Andhra Pradesh              |   127 | Kovur
    2 | IN    | India                            | Andhra Pradesh              |   128 | Kovurpalle
    2 | IN    | India                            | Andhra Pradesh              |   129 | Kovvur
    2 | IN    | India                            | Andhra Pradesh              |   130 | Krishna
    2 | IN    | India                            | Andhra Pradesh              |   131 | Kuppam
    2 | IN    | India                            | Andhra Pradesh              |   132 | Kurmannapalem
    2 | IN    | India                            | Andhra Pradesh              |   133 | Kurnool
    2 | IN    | India                            | Andhra Pradesh              |   134 | Lakshettipet
    2 | IN    | India                            | Andhra Pradesh              |   135 | Lalbahadur Nagar
    2 | IN    | India                            | Andhra Pradesh              |   136 | Machavaram
    2 | IN    | India                            | Andhra Pradesh              |   137 | Macherla
    2 | IN    | India                            | Andhra Pradesh              |   138 | Machilipatnam
    2 | IN    | India                            | Andhra Pradesh              |   139 | Madanapalle
    2 | IN    | India                            | Andhra Pradesh              |   140 | Madaram
    2 | IN    | India                            | Andhra Pradesh              |   141 | Madhuravada
    2 | IN    | India                            | Andhra Pradesh              |   142 | Madikonda
    2 | IN    | India                            | Andhra Pradesh              |   143 | Madugule
    2 | IN    | India                            | Andhra Pradesh              |   144 | Mahabubnagar
    2 | IN    | India                            | Andhra Pradesh              |   145 | Mahbubabad
    2 | IN    | India                            | Andhra Pradesh              |   146 | Malkajgiri
    2 | IN    | India                            | Andhra Pradesh              |   147 | Mamilapalle
    2 | IN    | India                            | Andhra Pradesh              |   148 | Mancheral
    2 | IN    | India                            | Andhra Pradesh              |   149 | Mandapeta
    2 | IN    | India                            | Andhra Pradesh              |   150 | Mandasa
    2 | IN    | India                            | Andhra Pradesh              |   151 | Mangalagiri
    2 | IN    | India                            | Andhra Pradesh              |   152 | Manthani
    2 | IN    | India                            | Andhra Pradesh              |   153 | Markapur
    2 | IN    | India                            | Andhra Pradesh              |   154 | Marturu
    2 | IN    | India                            | Andhra Pradesh              |   155 | Metpalli
    2 | IN    | India                            | Andhra Pradesh              |   156 | Mindi
    2 | IN    | India                            | Andhra Pradesh              |   157 | Mirpet
    2 | IN    | India                            | Andhra Pradesh              |   158 | Moragudi
    2 | IN    | India                            | Andhra Pradesh              |   159 | Mothugudam
    2 | IN    | India                            | Andhra Pradesh              |   160 | Nagari
    2 | IN    | India                            | Andhra Pradesh              |   161 | Nagireddipalle
    2 | IN    | India                            | Andhra Pradesh              |   162 | Nandigama
    2 | IN    | India                            | Andhra Pradesh              |   163 | Nandikotkur
    2 | IN    | India                            | Andhra Pradesh              |   164 | Nandyal
    2 | IN    | India                            | Andhra Pradesh              |   165 | Narasannapeta
    2 | IN    | India                            | Andhra Pradesh              |   166 | Narasapur
    2 | IN    | India                            | Andhra Pradesh              |   167 | Narasaraopet
    2 | IN    | India                            | Andhra Pradesh              |   168 | Narayanavanam
    2 | IN    | India                            | Andhra Pradesh              |   169 | Narsapur
    2 | IN    | India                            | Andhra Pradesh              |   170 | Narsingi
    2 | IN    | India                            | Andhra Pradesh              |   171 | Narsipatnam
    2 | IN    | India                            | Andhra Pradesh              |   172 | Naspur
    2 | IN    | India                            | Andhra Pradesh              |   173 | Nathayyapalem
    2 | IN    | India                            | Andhra Pradesh              |   174 | Nayudupeta
    2 | IN    | India                            | Andhra Pradesh              |   175 | Nelimaria
    2 | IN    | India                            | Andhra Pradesh              |   176 | Nellore
    2 | IN    | India                            | Andhra Pradesh              |   177 | Nidadavole
    2 | IN    | India                            | Andhra Pradesh              |   178 | Nuzvid
    2 | IN    | India                            | Andhra Pradesh              |   179 | Omerkhan daira
    2 | IN    | India                            | Andhra Pradesh              |   180 | Ongole
    2 | IN    | India                            | Andhra Pradesh              |   181 | Osmania University
    2 | IN    | India                            | Andhra Pradesh              |   182 | Pakala
    2 | IN    | India                            | Andhra Pradesh              |   183 | Palakole
    2 | IN    | India                            | Andhra Pradesh              |   184 | Palakurthi
    2 | IN    | India                            | Andhra Pradesh              |   185 | Palasa
    2 | IN    | India                            | Andhra Pradesh              |   186 | Palempalle
    2 | IN    | India                            | Andhra Pradesh              |   187 | Palkonda
    2 | IN    | India                            | Andhra Pradesh              |   188 | Palmaner
    2 | IN    | India                            | Andhra Pradesh              |   189 | Pamur
    2 | IN    | India                            | Andhra Pradesh              |   190 | Panjim
    2 | IN    | India                            | Andhra Pradesh              |   191 | Papampeta
    2 | IN    | India                            | Andhra Pradesh              |   192 | Parasamba
    2 | IN    | India                            | Andhra Pradesh              |   193 | Parvatipuram
    2 | IN    | India                            | Andhra Pradesh              |   194 | Patancheru
    2 | IN    | India                            | Andhra Pradesh              |   195 | Payakaraopet
    2 | IN    | India                            | Andhra Pradesh              |   196 | Pedagantyada
    2 | IN    | India                            | Andhra Pradesh              |   197 | Pedana
    2 | IN    | India                            | Andhra Pradesh              |   198 | Peddapuram
    2 | IN    | India                            | Andhra Pradesh              |   199 | Pendurthi
    2 | IN    | India                            | Andhra Pradesh              |   200 | Penugonda
    2 | IN    | India                            | Andhra Pradesh              |   201 | Penukonda
    2 | IN    | India                            | Andhra Pradesh              |   202 | Phirangipuram
    2 | IN    | India                            | Andhra Pradesh              |   203 | Pithapuram
    2 | IN    | India                            | Andhra Pradesh              |   204 | Ponnur
    2 | IN    | India                            | Andhra Pradesh              |   205 | Port Blair
    2 | IN    | India                            | Andhra Pradesh              |   206 | Pothinamallayyapalem
    2 | IN    | India                            | Andhra Pradesh              |   207 | Prakasam
    2 | IN    | India                            | Andhra Pradesh              |   208 | Prasadampadu
    2 | IN    | India                            | Andhra Pradesh              |   209 | Prasantinilayam
    2 | IN    | India                            | Andhra Pradesh              |   210 | Proddatur
    2 | IN    | India                            | Andhra Pradesh              |   211 | Pulivendla
    2 | IN    | India                            | Andhra Pradesh              |   212 | Punganuru
    2 | IN    | India                            | Andhra Pradesh              |   213 | Puttur
    2 | IN    | India                            | Andhra Pradesh              |   214 | Qutubullapur
    2 | IN    | India                            | Andhra Pradesh              |   215 | Rajahmundry
    2 | IN    | India                            | Andhra Pradesh              |   216 | Rajamahendri
    2 | IN    | India                            | Andhra Pradesh              |   217 | Rajampet
    2 | IN    | India                            | Andhra Pradesh              |   218 | Rajendranagar
    2 | IN    | India                            | Andhra Pradesh              |   219 | Rajoli
    2 | IN    | India                            | Andhra Pradesh              |   220 | Ramachandrapuram
    2 | IN    | India                            | Andhra Pradesh              |   221 | Ramanayyapeta
    2 | IN    | India                            | Andhra Pradesh              |   222 | Ramapuram
    2 | IN    | India                            | Andhra Pradesh              |   223 | Ramarajupalli
    2 | IN    | India                            | Andhra Pradesh              |   224 | Ramavarappadu
    2 | IN    | India                            | Andhra Pradesh              |   225 | Rameswaram
    2 | IN    | India                            | Andhra Pradesh              |   226 | Rampachodavaram
    2 | IN    | India                            | Andhra Pradesh              |   227 | Ravulapalam
    2 | IN    | India                            | Andhra Pradesh              |   228 | Rayachoti
    2 | IN    | India                            | Andhra Pradesh              |   229 | Rayadrug
    2 | IN    | India                            | Andhra Pradesh              |   230 | Razam
    2 | IN    | India                            | Andhra Pradesh              |   231 | Razole
    2 | IN    | India                            | Andhra Pradesh              |   232 | Renigunta
    2 | IN    | India                            | Andhra Pradesh              |   233 | Repalle
    2 | IN    | India                            | Andhra Pradesh              |   234 | Rishikonda
    2 | IN    | India                            | Andhra Pradesh              |   235 | Salur
    2 | IN    | India                            | Andhra Pradesh              |   236 | Samalkot
    2 | IN    | India                            | Andhra Pradesh              |   237 | Sattenapalle
    2 | IN    | India                            | Andhra Pradesh              |   238 | Seetharampuram
    2 | IN    | India                            | Andhra Pradesh              |   239 | Serilungampalle
    2 | IN    | India                            | Andhra Pradesh              |   240 | Shankarampet
    2 | IN    | India                            | Andhra Pradesh              |   241 | Shar
    2 | IN    | India                            | Andhra Pradesh              |   242 | Singarayakonda
    2 | IN    | India                            | Andhra Pradesh              |   243 | Sirpur
    2 | IN    | India                            | Andhra Pradesh              |   244 | Sirsilla
    2 | IN    | India                            | Andhra Pradesh              |   245 | Sompeta
    2 | IN    | India                            | Andhra Pradesh              |   246 | Sriharikota
    2 | IN    | India                            | Andhra Pradesh              |   247 | Srikakulam
    2 | IN    | India                            | Andhra Pradesh              |   248 | Srikalahasti
    2 | IN    | India                            | Andhra Pradesh              |   249 | Sriramnagar
    2 | IN    | India                            | Andhra Pradesh              |   250 | Sriramsagar
    2 | IN    | India                            | Andhra Pradesh              |   251 | Srisailam
    2 | IN    | India                            | Andhra Pradesh              |   252 | Srisailamgudem Devasthanam
    2 | IN    | India                            | Andhra Pradesh              |   253 | Sulurpeta
    2 | IN    | India                            | Andhra Pradesh              |   254 | Suriapet
    2 | IN    | India                            | Andhra Pradesh              |   255 | Suryaraopet
    2 | IN    | India                            | Andhra Pradesh              |   256 | Tadepalle
    2 | IN    | India                            | Andhra Pradesh              |   257 | Tadepalligudem
    2 | IN    | India                            | Andhra Pradesh              |   258 | Tadpatri
    2 | IN    | India                            | Andhra Pradesh              |   259 | Tallapalle
    2 | IN    | India                            | Andhra Pradesh              |   260 | Tanuku
    2 | IN    | India                            | Andhra Pradesh              |   261 | Tekkali
    2 | IN    | India                            | Andhra Pradesh              |   262 | Tenali
    2 | IN    | India                            | Andhra Pradesh              |   263 | Tigalapahad
    2 | IN    | India                            | Andhra Pradesh              |   264 | Tiruchanur
    2 | IN    | India                            | Andhra Pradesh              |   265 | Tirumala
    2 | IN    | India                            | Andhra Pradesh              |   266 | Tirupati
    2 | IN    | India                            | Andhra Pradesh              |   267 | Tirvuru
    2 | IN    | India                            | Andhra Pradesh              |   268 | Trimulgherry
    2 | IN    | India                            | Andhra Pradesh              |   269 | Tuni
    2 | IN    | India                            | Andhra Pradesh              |   270 | Turangi
    2 | IN    | India                            | Andhra Pradesh              |   271 | Ukkayapalli
    2 | IN    | India                            | Andhra Pradesh              |   272 | Ukkunagaram
    2 | IN    | India                            | Andhra Pradesh              |   273 | Uppal Kalan
    2 | IN    | India                            | Andhra Pradesh              |   274 | Upper Sileru
    2 | IN    | India                            | Andhra Pradesh              |   275 | Uravakonda
    2 | IN    | India                            | Andhra Pradesh              |   276 | Vadlapudi
    2 | IN    | India                            | Andhra Pradesh              |   277 | Vaparala
    2 | IN    | India                            | Andhra Pradesh              |   278 | Vemalwada
    2 | IN    | India                            | Andhra Pradesh              |   279 | Venkatagiri
    2 | IN    | India                            | Andhra Pradesh              |   280 | Venkatapuram
    2 | IN    | India                            | Andhra Pradesh              |   281 | Vepagunta
    2 | IN    | India                            | Andhra Pradesh              |   282 | Vetapalem
    2 | IN    | India                            | Andhra Pradesh              |   283 | Vijayapuri
    2 | IN    | India                            | Andhra Pradesh              |   284 | Vijayapuri South
    2 | IN    | India                            | Andhra Pradesh              |   285 | Vijayawada
    2 | IN    | India                            | Andhra Pradesh              |   286 | Vinukonda
    2 | IN    | India                            | Andhra Pradesh              |   287 | Visakhapatnam
    2 | IN    | India                            | Andhra Pradesh              |   288 | Vizianagaram
    2 | IN    | India                            | Andhra Pradesh              |   289 | Vuyyuru
    2 | IN    | India                            | Andhra Pradesh              |   290 | Wanparti
    2 | IN    | India                            | Andhra Pradesh              |   291 | West Godavari Dist.
    2 | IN    | India                            | Andhra Pradesh              |   292 | Yadagirigutta
    2 | IN    | India                            | Andhra Pradesh              |   293 | Yarada
    2 | IN    | India                            | Andhra Pradesh              |   294 | Yellamanchili
    2 | IN    | India                            | Andhra Pradesh              |   295 | Yemmiganur
    2 | IN    | India                            | Andhra Pradesh              |   296 | Yenamalakudru
    2 | IN    | India                            | Andhra Pradesh              |   297 | Yendada
    2 | IN    | India                            | Andhra Pradesh              |   298 | Yerraguntla
    3 | IN    | India                            | Arunachal Pradesh           |   299 | Along
    3 | IN    | India                            | Arunachal Pradesh           |   300 | Basar
    3 | IN    | India                            | Arunachal Pradesh           |   301 | Bondila
    3 | IN    | India                            | Arunachal Pradesh           |   302 | Changlang
    3 | IN    | India                            | Arunachal Pradesh           |   303 | Daporijo
    3 | IN    | India                            | Arunachal Pradesh           |   304 | Deomali
    3 | IN    | India                            | Arunachal Pradesh           |   305 | Itanagar
    3 | IN    | India                            | Arunachal Pradesh           |   306 | Jairampur
    3 | IN    | India                            | Arunachal Pradesh           |   307 | Khonsa
    3 | IN    | India                            | Arunachal Pradesh           |   308 | Naharlagun
    3 | IN    | India                            | Arunachal Pradesh           |   309 | Namsai
    3 | IN    | India                            | Arunachal Pradesh           |   310 | Pasighat
    3 | IN    | India                            | Arunachal Pradesh           |   311 | Roing
    3 | IN    | India                            | Arunachal Pradesh           |   312 | Seppa
    3 | IN    | India                            | Arunachal Pradesh           |   313 | Tawang
    3 | IN    | India                            | Arunachal Pradesh           |   314 | Tezu
    3 | IN    | India                            | Arunachal Pradesh           |   315 | Ziro
    4 | IN    | India                            | Assam                       |   316 | Abhayapuri
    4 | IN    | India                            | Assam                       |   317 | Ambikapur
    4 | IN    | India                            | Assam                       |   318 | Amguri
    4 | IN    | India                            | Assam                       |   319 | Anand Nagar
    4 | IN    | India                            | Assam                       |   320 | Badarpur
    4 | IN    | India                            | Assam                       |   321 | Badarpur Railway Town
    4 | IN    | India                            | Assam                       |   322 | Bahbari Gaon
    4 | IN    | India                            | Assam                       |   323 | Bamun Sualkuchi
    4 | IN    | India                            | Assam                       |   324 | Barbari
    4 | IN    | India                            | Assam                       |   325 | Barpathar
    4 | IN    | India                            | Assam                       |   326 | Barpeta
    4 | IN    | India                            | Assam                       |   327 | Barpeta Road
    4 | IN    | India                            | Assam                       |   328 | Basugaon
    4 | IN    | India                            | Assam                       |   329 | Bihpuria
    4 | IN    | India                            | Assam                       |   330 | Bijni
    4 | IN    | India                            | Assam                       |   331 | Bilasipara
    4 | IN    | India                            | Assam                       |   332 | Biswanath Chariali
    4 | IN    | India                            | Assam                       |   333 | Bohori
    4 | IN    | India                            | Assam                       |   334 | Bokajan
    4 | IN    | India                            | Assam                       |   335 | Bokokhat
    4 | IN    | India                            | Assam                       |   336 | Bongaigaon
    4 | IN    | India                            | Assam                       |   337 | Bongaigaon Petro-chemical Town
    4 | IN    | India                            | Assam                       |   338 | Borgolai
    4 | IN    | India                            | Assam                       |   339 | Chabua
    4 | IN    | India                            | Assam                       |   340 | Chandrapur Bagicha
    4 | IN    | India                            | Assam                       |   341 | Chapar
    4 | IN    | India                            | Assam                       |   342 | Chekonidhara
    4 | IN    | India                            | Assam                       |   343 | Choto Haibor
    4 | IN    | India                            | Assam                       |   344 | Dergaon
    4 | IN    | India                            | Assam                       |   345 | Dharapur
    4 | IN    | India                            | Assam                       |   346 | Dhekiajuli
    4 | IN    | India                            | Assam                       |   347 | Dhemaji
    4 | IN    | India                            | Assam                       |   348 | Dhing
    4 | IN    | India                            | Assam                       |   349 | Dhubri
    4 | IN    | India                            | Assam                       |   350 | Dhuburi
    4 | IN    | India                            | Assam                       |   351 | Dibrugarh
    4 | IN    | India                            | Assam                       |   352 | Digboi
    4 | IN    | India                            | Assam                       |   353 | Digboi Oil Town
    4 | IN    | India                            | Assam                       |   354 | Dimaruguri
    4 | IN    | India                            | Assam                       |   355 | Diphu
    4 | IN    | India                            | Assam                       |   356 | Dispur
    4 | IN    | India                            | Assam                       |   357 | Doboka
    4 | IN    | India                            | Assam                       |   358 | Dokmoka
    4 | IN    | India                            | Assam                       |   359 | Donkamokan
    4 | IN    | India                            | Assam                       |   360 | Duliagaon
    4 | IN    | India                            | Assam                       |   361 | Duliajan
    4 | IN    | India                            | Assam                       |   362 | Duliajan No.1
    4 | IN    | India                            | Assam                       |   363 | Dum Duma
    4 | IN    | India                            | Assam                       |   364 | Durga Nagar
    4 | IN    | India                            | Assam                       |   365 | Gauripur
    4 | IN    | India                            | Assam                       |   366 | Goalpara
    4 | IN    | India                            | Assam                       |   367 | Gohpur
    4 | IN    | India                            | Assam                       |   368 | Golaghat
    4 | IN    | India                            | Assam                       |   369 | Golakganj
    4 | IN    | India                            | Assam                       |   370 | Gossaigaon
    4 | IN    | India                            | Assam                       |   371 | Guwahati
    4 | IN    | India                            | Assam                       |   372 | Haflong
    4 | IN    | India                            | Assam                       |   373 | Hailakandi
    4 | IN    | India                            | Assam                       |   374 | Hamren
    4 | IN    | India                            | Assam                       |   375 | Hauli
    4 | IN    | India                            | Assam                       |   376 | Hauraghat
    4 | IN    | India                            | Assam                       |   377 | Hojai
    4 | IN    | India                            | Assam                       |   378 | Jagiroad
    4 | IN    | India                            | Assam                       |   379 | Jagiroad Paper Mill
    4 | IN    | India                            | Assam                       |   380 | Jogighopa
    4 | IN    | India                            | Assam                       |   381 | Jonai Bazar
    4 | IN    | India                            | Assam                       |   382 | Jorhat
    4 | IN    | India                            | Assam                       |   383 | Kampur Town
    4 | IN    | India                            | Assam                       |   384 | Kamrup
    4 | IN    | India                            | Assam                       |   385 | Kanakpur
    4 | IN    | India                            | Assam                       |   386 | Karimganj
    4 | IN    | India                            | Assam                       |   387 | Kharijapikon
    4 | IN    | India                            | Assam                       |   388 | Kharupetia
    4 | IN    | India                            | Assam                       |   389 | Kochpara
    4 | IN    | India                            | Assam                       |   390 | Kokrajhar
    4 | IN    | India                            | Assam                       |   391 | Kumar Kaibarta Gaon
    4 | IN    | India                            | Assam                       |   392 | Lakhimpur
    4 | IN    | India                            | Assam                       |   393 | Lakhipur
    4 | IN    | India                            | Assam                       |   394 | Lala
    4 | IN    | India                            | Assam                       |   395 | Lanka
    4 | IN    | India                            | Assam                       |   396 | Lido Tikok
    4 | IN    | India                            | Assam                       |   397 | Lido Town
    4 | IN    | India                            | Assam                       |   398 | Lumding
    4 | IN    | India                            | Assam                       |   399 | Lumding Railway Colony
    4 | IN    | India                            | Assam                       |   400 | Mahur
    4 | IN    | India                            | Assam                       |   401 | Maibong
    4 | IN    | India                            | Assam                       |   402 | Majgaon
    4 | IN    | India                            | Assam                       |   403 | Makum
    4 | IN    | India                            | Assam                       |   404 | Mangaldai
    4 | IN    | India                            | Assam                       |   405 | Mankachar
    4 | IN    | India                            | Assam                       |   406 | Margherita
    4 | IN    | India                            | Assam                       |   407 | Mariani
    4 | IN    | India                            | Assam                       |   408 | Marigaon
    4 | IN    | India                            | Assam                       |   409 | Moran
    4 | IN    | India                            | Assam                       |   410 | Moranhat
    4 | IN    | India                            | Assam                       |   411 | Nagaon
    4 | IN    | India                            | Assam                       |   412 | Naharkatia
    4 | IN    | India                            | Assam                       |   413 | Nalbari
    4 | IN    | India                            | Assam                       |   414 | Namrup
    4 | IN    | India                            | Assam                       |   415 | Naubaisa Gaon
    4 | IN    | India                            | Assam                       |   416 | Nazira
    4 | IN    | India                            | Assam                       |   417 | New Bongaigaon Railway Colony
    4 | IN    | India                            | Assam                       |   418 | Niz-Hajo
    4 | IN    | India                            | Assam                       |   419 | North Guwahati
    4 | IN    | India                            | Assam                       |   420 | Numaligarh
    4 | IN    | India                            | Assam                       |   421 | Palasbari
    4 | IN    | India                            | Assam                       |   422 | Panchgram
    4 | IN    | India                            | Assam                       |   423 | Pathsala
    4 | IN    | India                            | Assam                       |   424 | Raha
    4 | IN    | India                            | Assam                       |   425 | Rangapara
    4 | IN    | India                            | Assam                       |   426 | Rangia
    4 | IN    | India                            | Assam                       |   427 | Salakati
    4 | IN    | India                            | Assam                       |   428 | Sapatgram
    4 | IN    | India                            | Assam                       |   429 | Sarthebari
    4 | IN    | India                            | Assam                       |   430 | Sarupathar
    4 | IN    | India                            | Assam                       |   431 | Sarupathar Bengali
    4 | IN    | India                            | Assam                       |   432 | Senchoagaon
    4 | IN    | India                            | Assam                       |   433 | Sibsagar
    4 | IN    | India                            | Assam                       |   434 | Silapathar
    4 | IN    | India                            | Assam                       |   435 | Silchar
    4 | IN    | India                            | Assam                       |   436 | Silchar Part-X
    4 | IN    | India                            | Assam                       |   437 | Sonari
    4 | IN    | India                            | Assam                       |   438 | Sorbhog
    4 | IN    | India                            | Assam                       |   439 | Sualkuchi
    4 | IN    | India                            | Assam                       |   440 | Tangla
    4 | IN    | India                            | Assam                       |   441 | Tezpur
    4 | IN    | India                            | Assam                       |   442 | Tihu
    4 | IN    | India                            | Assam                       |   443 | Tinsukia
    4 | IN    | India                            | Assam                       |   444 | Titabor
    4 | IN    | India                            | Assam                       |   445 | Udalguri
    4 | IN    | India                            | Assam                       |   446 | Umrangso
    4 | IN    | India                            | Assam                       |   447 | Uttar Krishnapur Part-I
    5 | IN    | India                            | Bihar                       |   448 | Amarpur
    5 | IN    | India                            | Bihar                       |   449 | Ara
    5 | IN    | India                            | Bihar                       |   450 | Araria
    5 | IN    | India                            | Bihar                       |   451 | Areraj
    5 | IN    | India                            | Bihar                       |   452 | Asarganj
    5 | IN    | India                            | Bihar                       |   453 | Aurangabad
    5 | IN    | India                            | Bihar                       |   454 | Bagaha
    5 | IN    | India                            | Bihar                       |   455 | Bahadurganj
    5 | IN    | India                            | Bihar                       |   456 | Bairgania
    5 | IN    | India                            | Bihar                       |   457 | Bakhtiyarpur
    5 | IN    | India                            | Bihar                       |   458 | Banka
emilyd=> select rnavn, count(*) as antall_med_samme_navn
emilyd-> from Regioner
emilyd-> group by rnavn
emilyd-> order by antall_med_samme_navn desc;
             rnavn              | antall_med_samme_navn 
--------------------------------+-----------------------
 Western                        |                     9
 Eastern                        |                     7
 Central                        |                     7
 Saint George                   |                     6
 Saint John                     |                     6
 Northern                       |                     6
 Centre                         |                     5
 Saint Andrew                   |                     5
 Nord                           |                     4
 Amazonas                       |                     4
 Saint Peter                    |                     4
 San Juan                       |                     4
 Distrito Federal               |                     4
 Saint Patrick                  |                     3
 Saint Mary                     |                     3
 La Paz                         |                     3
 Gaza                           |                     3
 Saint Martin                   |                     3
 Sud                            |                     3
 Saint Thomas                   |                     3
 Ontario                        |                     3
 Bolivar                        |                     3
 Southern                       |                     3
 Saint-Pierre                   |                     3
 Cordoba                        |                     3
 Littoral                       |                     2
 Luxembourg                     |                     2
 Saint Mark                     |                     2
 Florida                        |                     2
 Leon                           |                     2
 Saint Saviour                  |                     2
 Victoria                       |                     2
 Bari                           |                     2
 Rio Negro                      |                     2
 Plateaux                       |                     2
 Østfold                        |                     2
 Christmas Island               |                     2
 Montenegro                     |                     2
 Cordillera                     |                     2
 Saint Joseph                   |                     2
 Bethlehem                      |                     2
 Utah                           |                     2
 Jura                           |                     2
 Mwanza                         |                     2
 Vojvodina                      |                     2
 Granada                        |                     2
 Auvergne                       |                     2
 Santa Cruz                     |                     2
 Toledo                         |                     2
 San Salvador                   |                     2
 Sucre                          |                     2
 Amsterdam                      |                     2
 Adrar                          |                     2
 Kosovo and Metohija            |                     2
 Auckland                       |                     2
 Punjab                         |                     2
 Saint David                    |                     2
 Western Province               |                     2
 Saint Paul                     |                     2
 Savanes                        |                     2
 Huila                          |                     2
 Armagh                         |                     2
 Misiones                       |                     2
 ash-Sharqiyah                  |                     2
 Kangweon                       |                     2
 Para                           |                     2
 Schleswig-Holstein             |                     2
 Saint James                    |                     2
 Saint Philip                   |                     2
 ash-Shamal                     |                     2
 Plateau                        |                     2
 La Libertad                    |                     2
 South Georgia                  |                     2
 Sark                           |                     2
 Manchester                     |                     2
 La Rioja                       |                     2
 al-Bahr-al-Ahmar               |                     2
 Central Equatoria              |                     2
 Limburg                        |                     2
 San Jose                       |                     2
 Valletta                       |                     2
 Colon                          |                     2
 Choiseul                       |                     2
 Montana                        |                     2
 Buxoro Viloyati                |                     2
 Central Serbia                 |                     2
 Ouest                          |                     2
 Noord-Holland                  |                     2
 Thies                          |                     1
 Storstrom                      |                     1
 Nomos Attikis                  |                     1
 Mon                            |                     1
 Canton Ticino                  |                     1
 Mayo                           |                     1
 Ovorhangaj                     |                     1
 Ntcheu                         |                     1
 Narathiwat                     |                     1
 Neuquen                        |                     1
 al-Qahira                      |                     1
 Elazig                         |                     1
 Hatay                          |                     1
 Tunceli                        |                     1
 Agana Heights                  |                     1
 Bokeo                          |                     1
 Gaaf Alif                      |                     1
 Chiayi Shih                    |                     1
 Exuma and Cays                 |                     1
 Chon Buri                      |                     1
 Northern Territory             |                     1
 Ahuachapan                     |                     1
 Podkarpackie                   |                     1
 Lugo                           |                     1
 Khmel'nyts'ka                  |                     1
 Iles sous le Vent              |                     1
 Ngaraard                       |                     1
 Guatemala                      |                     1
 Kagawa                         |                     1
 Wilaya de Bejaia               |                     1
 Fujian                         |                     1
 Verona                         |                     1
 Distrito de Leiria             |                     1
 Ranong                         |                     1
 Su urnes                       |                     1
 Mashonaland West               |                     1
 Larcay                         |                     1
 Seine-et-Marne                 |                     1
 Mara                           |                     1
 Zomba Municipality             |                     1
 Sayda'                         |                     1
 East Yorkshire                 |                     1
 Uthai Thani                    |                     1
 Jilfah                         |                     1
 Oklahoma                       |                     1
 Bolu                           |                     1
 Bern                           |                     1
 Berkshire                      |                     1
 Presidente Hayes               |                     1
 Vellise                        |                     1
 Ucayali                        |                     1
 Seoul                          |                     1
 Gopalganj                      |                     1
 Tigray                         |                     1
 Trarza                         |                     1
 Madinat Dimashq                |                     1
 Chontales                      |                     1
 Laguna                         |                     1
 Conwy                          |                     1
 Tochigi                        |                     1
 Namur                          |                     1
 Obcina Vitanje                 |                     1
 al-Hudud-ash-Shamaliyah        |                     1
 Paschim Medinipur              |                     1
 Liaoning                       |                     1
 Kalimantan Barat               |                     1
 Hawaii                         |                     1
 Chuvashija                     |                     1
 Balears                        |                     1
 Madinat San'a                  |                     1
 Louga                          |                     1
 Bitola                         |                     1
 Bilecik                        |                     1
 Tulcea                         |                     1
 Falkland Islands               |                     1
 Kohgiluyeh-e Boyerahmad        |                     1
 Mures                          |                     1
 Serrai                         |                     1
 Puntarenas                     |                     1
 al-Mahrah                      |                     1
 Gash-Barka                     |                     1
 Zakarpats'ka                   |                     1
 Panchagarh                     |                     1
 Yerushalayim                   |                     1
 Venezia                        |                     1
 Matagalpa                      |                     1
 Upper Austria                  |                     1
 Abruzzi                        |                     1
 Nanumanga                      |                     1
 Yunnan                         |                     1
 Braga                          |                     1
 Niamey                         |                     1
 Paysandu                       |                     1
 ar-Rifa'a                      |                     1
 al-Wad                         |                     1
 Ilfov                          |                     1
 Kuala Lumpur                   |                     1
 Moxico                         |                     1
 Nor ara Eysturoy               |                     1
 Bikini                         |                     1
 Madriz                         |                     1
 Sowa                           |                     1
 Yogyakarta                     |                     1
 Hudh-ash-Sharqi                |                     1
 Rjazan                         |                     1
 Nahr-an-Nil                    |                     1
 Aruba                          |                     1
 Najran                         |                     1
 Straz nad Nisou                |                     1
 Pohjois-Savo                   |                     1
 Varese                         |                     1
 Roos-shire                     |                     1
 Cyangugu                       |                     1
 Davao                          |                     1
 Aksaray                        |                     1
 Maysan                         |                     1
 Guanacaste                     |                     1
 Lower Saxony                   |                     1
 Kyunggi-do                     |                     1
 Aimeliik                       |                     1
 Yunlin                         |                     1
 Zanzan                         |                     1
 El Seybo                       |                     1
 Wexford                        |                     1
 Sina ash-Shamaliyah            |                     1
 Tristan da Cunha               |                     1
 Bangkok                        |                     1
 Ustecky                        |                     1
 Embera                         |                     1
 Escuintla                      |                     1
 Ilia                           |                     1
 Patuakhali                     |                     1
 Zug                            |                     1
 Issyk-Kul                      |                     1
 Stavern                        |                     1
 Jamtland                       |                     1
 Perth                          |                     1
 Ayacucho                       |                     1
 Ratnapuraya                    |                     1
 Skopje                         |                     1
 Dumyat                         |                     1
 Ghazzah                        |                     1
 Papua                          |                     1
 Debar                          |                     1
 Gaborone                       |                     1
 Beru                           |                     1
 Canendiyu                      |                     1
 Dublin                         |                     1
 Sandaun                        |                     1
 Grand Bassa                    |                     1
 Puke                           |                     1
 California                     |                     1
 Ash Sharqiyah                  |                     1
 Pomorskie                      |                     1
 Pohjois-Karjala                |                     1
 Hovsgol                        |                     1
 Komarom-Esztergom              |                     1
 Merida                         |                     1
 Ohio                           |                     1
 Lezhe                          |                     1
 Janakpur                       |                     1
 Southern Highlands             |                     1
 Francistown                    |                     1
 Gandaki                        |                     1
 Cotes-d'Armor                  |                     1
 Rongelap                       |                     1
 Lasithi                        |                     1
 Borno                          |                     1
 Dibre                          |                     1
 Zagreb                         |                     1
 Likiep                         |                     1
 Rivnens'ka                     |                     1
 Khanshalah                     |                     1
 Zaire                          |                     1
 Sector claimed by New Zealand  |                     1
 Sevastopol'                    |                     1
 Siem Reab                      |                     1
 Andorra la Vella               |                     1
 Bucuresti                      |                     1
 Dodoma                         |                     1
 Rarotonga                      |                     1
 al-Qayrawan                    |                     1
 Hadramaut                      |                     1
 Rinpung                        |                     1
 Forecariah                     |                     1
 Tamanghasat                    |                     1
 Corozal                        |                     1
 Saint George Basseterre        |                     1
 Batangas                       |                     1
 Dorset                         |                     1
 Thai Nguyen                    |                     1
 San Miguel                     |                     1
 Bonnet Bay                     |                     1
 Macerata                       |                     1
 Floreal                        |                     1
 Tokyo                          |                     1
 Aranuka                        |                     1
 Cusco                          |                     1
 Giurgiu                        |                     1
 Gharb Bahr-al-Ghazal           |                     1
 Lorestan                       |                     1
 Cortes                         |                     1
 Hajdu-Bihar                    |                     1
 al-Khartum                     |                     1
 Caesarea                       |                     1
 Abemana                        |                     1
 Nusa Tenggara Timur            |                     1
 al-Manamah                     |                     1
 Kiryat Yam                     |                     1
 schlobborn                     |                     1
 Da Nang                        |                     1
 Ita-Suomen Laani               |                     1
 Liege                          |                     1
 Surin                          |                     1
 Port of Spain                  |                     1
 Sud-Bandama                    |                     1
 Olomoucky                      |                     1
 Brussel                        |                     1
 Cocos Islands                  |                     1
 Saint Clement                  |                     1
 Rondonia                       |                     1
 Distrito Central               |                     1
 Tukuma                         |                     1
 Saskatchewan                   |                     1
 Jonkoping                      |                     1
 Sud-Comoe                      |                     1
 Rennell and Bellona            |                     1
 Xaignabury                     |                     1
 Lilongwe City                  |                     1
 Yonne                          |                     1
 Ziguinchor                     |                     1
 Taitung                        |                     1
 Nator                          |                     1
 Kyungbuk-Do                    |                     1
 Wicklow                        |                     1
 Madhya Pradesh                 |                     1
 Hamerkaz                       |                     1
 Gorenjska                      |                     1
 Pabna                          |                     1
 Riviere du Rempart             |                     1
 Polska                         |                     1
 Bishkek                        |                     1
 Manu'a                         |                     1
 Timphu                         |                     1
 Zanjan                         |                     1
 Namu                           |                     1
 Bay of Plenty                  |                     1
 Telemark                       |                     1
 Castle Hill                    |                     1
 Shariatpur                     |                     1
 Lautem                         |                     1
 Bankstown                      |                     1
 Boralesgamuwa                  |                     1
 Central Boteti                 |                     1
 Eastern Cape                   |                     1
 Maranhao                       |                     1
 Jihochesky                     |                     1
 Leitrim                        |                     1
 Lambayeque                     |                     1
 Satu Mare                      |                     1
 Miaoli                         |                     1
 Polva                          |                     1
 Evros                          |                     1
 Tacuarembo                     |                     1
 Alajuela                       |                     1
 Ioannina                       |                     1
 Solo                           |                     1
 Portland                       |                     1
 Saint Pierre du Bois           |                     1
 Hwanghaenamdo                  |                     1
 Hunan                          |                     1
 Chanthaburi                    |                     1
 Yaracuy                        |                     1
 Huambo                         |                     1
 La Vega                        |                     1
 Surat Thani                    |                     1
 Wallis                         |                     1
 Bie                            |                     1
 Mansakonko                     |                     1
 Naples                         |                     1
 Panevezhio                     |                     1
 Shtip                          |                     1
 Hsinchu Hsien                  |                     1
 Malsi e Madhe                  |                     1
 Taza-Al Hoceima-Taounate       |                     1
 Gambella                       |                     1
 Odes'ka                        |                     1
 Tilimsan                       |                     1
 Tarapaca                       |                     1
 al-Wakrah                      |                     1
 Luapala                        |                     1
 Dadra and Nagar Haveli         |                     1
 Permet                         |                     1
 Grand Port                     |                     1
 Salerno                        |                     1
 Sagarmatha                     |                     1
 Central Bobonong               |                     1
 East Berbice-Corentyne         |                     1
 Kompienga                      |                     1
 Bio Bio                        |                     1
 Antalya                        |                     1
 Sassandra                      |                     1
 Dikhil                         |                     1
 Yanggang                       |                     1
 Nay Pyi Taw                    |                     1
 Viljandi                       |                     1
 Brindisi                       |                     1
 San Cristobal                  |                     1
 al-Jufrah                      |                     1
 Guipuzcoa                      |                     1
 Coquimbo                       |                     1
 Melilla                        |                     1
 Southern Province              |                     1
 Mardin                         |                     1
 Harju                          |                     1
 Bedfordshire                   |                     1
 Morelos                        |                     1
 Aydin                          |                     1
 Goyang-si                      |                     1
 Goa                            |                     1
 Atiu                           |                     1
 Sakikdah                       |                     1
 Habiganj                       |                     1
 Ngchesar                       |                     1
 Kostroma                       |                     1
 Westmoreland                   |                     1
 Smoljan                        |                     1
 Quinara                        |                     1
 Pathum Thani                   |                     1
 Batnah                         |                     1
 Grand Cayman                   |                     1
 Correze                        |                     1
 Saint Brelade                  |                     1
 Grad Zagreb                    |                     1
 Irbid                          |                     1
 Varsinais-Suomi                |                     1
 Koubia                         |                     1
 Hubei                          |                     1
 Milne Bay                      |                     1
 Savanne                        |                     1
 Santa Barbara                  |                     1
 Charente-Maritime              |                     1
 Aquitaine                      |                     1
 Matanzas                       |                     1
 Gisenyi                        |                     1
 Tuamasaga                      |                     1
 Jijili                         |                     1
 Libertador General Bernardo O' |                     1
 Tennessee                      |                     1
 Utrecht                        |                     1
 West Lothian                   |                     1
 Gironde                        |                     1
 Guizhou                        |                     1
 Tarn-et-Garonne                |                     1
 Susah                          |                     1
 Gazni                          |                     1
 Dimashq                        |                     1
 Morogoro                       |                     1
 Guayas                         |                     1
 Moyen-Ogooue                   |                     1
 Govisumber                     |                     1
 Jaen                           |                     1
 Fakaofo                        |                     1
 Lalmanir Hat                   |                     1
 Krapina-Zagorje                |                     1
 Pichincha                      |                     1
 Satupa'itea                    |                     1
 Ainaro                         |                     1
 Somme                          |                     1
 Kano                           |                     1
 Northern Cape                  |                     1
 Pondicherry                    |                     1
 Petrik                         |                     1
 Sunamganj                      |                     1
 Bavaria                        |                     1
 Khorasan                       |                     1
 Albacete                       |                     1
 Delhi                          |                     1
 Shanghai                       |                     1
 Limousin                       |                     1
 Stara Zagora                   |                     1
 Mitiaro                        |                     1
 Hawke's Bay                    |                     1
 Northants                      |                     1
 Chaco                          |                     1
 Ouargla                        |                     1
 Torba                          |                     1
 Basse                          |                     1
 Solola                         |                     1
 Frosinone                      |                     1
 South Yorkshire                |                     1
 Nong Khai                      |                     1
 Madaniyin                      |                     1
 Shamal Bahr-al-Ghazal          |                     1
 Selibe Phikwe                  |                     1
 Connecticut                    |                     1
 Solothurn                      |                     1
 Nairobi                        |                     1
 Aasiaat                        |                     1
 Krong Preah Sihanouk           |                     1
 Tirikunamalaya                 |                     1
 Chiang Rai                     |                     1
 Jammu and Kashmir              |                     1
 al-'Aqabah                     |                     1
 Sinaloa                        |                     1
 Andhra Pradesh                 |                     1
 Wurttemberg                    |                     1
 Kaohsiung Shih                 |                     1
 Nampula                        |                     1
 Manufahi                       |                     1
 Long Island                    |                     1
 Dalaba                         |                     1
 South Tyrol                    |                     1
 Teramo                         |                     1
 Suhbaatar                      |                     1
 Cayo                           |                     1
 Cibitoke                       |                     1
 Kharkov                        |                     1
 Nusa Tenggara Barat            |                     1
 Tropoje                        |                     1
 Angermanland                   |                     1
 Kirovohrad                     |                     1
 Riau Kepulauan                 |                     1
 Fier                           |                     1
 Syddanmark                     |                     1
 East Dunbartonshire            |                     1
 Armavir                        |                     1
 Nangarhar                      |                     1
 Niari                          |                     1
 Kavala                         |                     1
 Kartuzy                        |                     1
 Ebonyi                         |                     1
 Dobeles                        |                     1
 North West                     |                     1
 British Columbia               |                     1
 Nottinghamshire                |                     1
 Pernambuco                     |                     1
 Nampo                          |                     1
 Aluksnes                       |                     1
 Chiayi Hsien                   |                     1
 Ogooue-Ivindo                  |                     1
 Omaheke                        |                     1
 Sulawesi Selatan               |                     1
 East Sepik                     |                     1
 Palencia                       |                     1
 Gourma                         |                     1
 Orjol                          |                     1
 Hants                          |                     1
 Hertfordshire                  |                     1
 Peqin                          |                     1
 Miyagi                         |                     1
 Tarawa North                   |                     1
 Bajan-Olgij                    |                     1
 Bolama                         |                     1
 Barahona                       |                     1
 Kaeseong                       |                     1
 Banten                         |                     1
 Ferrara                        |                     1
 Rota                           |                     1
 Icel                           |                     1
 Wasit                          |                     1
 Nidwalden                      |                     1
 Lansi-Suomen Laani             |                     1
 Ararat                         |                     1
 Zachodnio-Pomorskie            |                     1
 Estado de Mexico               |                     1
 Concepcion                     |                     1
 Central Serowe-Palapye         |                     1
 Chumphon                       |                     1
 Rayong                         |                     1
 Wotje                          |                     1
 Mekele                         |                     1
 Van                            |                     1
 Kuna Yala                      |                     1
 Pennsylvania                   |                     1
 Abu Zabi                       |                     1
 Lima y Callao                  |                     1
 Kidal                          |                     1
 Paris                          |                     1
 Shizuoka                       |                     1
 Arges                          |                     1
 Aiga-i-le-Tai                  |                     1
 Pamplempousses                 |                     1
 Zlitan                         |                     1
 Weinstrabe                     |                     1
 Salta                          |                     1
 Ayeyarwady                     |                     1
 Moquegua                       |                     1
 East Sussex                    |                     1
 Taranaki                       |                     1
 Volta                          |                     1
 Fars                           |                     1
 Samsun                         |                     1
 Arhus                          |                     1
 Hios                           |                     1
 Saint Helier                   |                     1
 Majuro                         |                     1
 Guantanamo                     |                     1
 Kalmar                         |                     1
 Valkas                         |                     1
 Copperbelt                     |                     1
 North Western Province         |                     1
 Ardahan                        |                     1
 Terengganu                     |                     1
 Alpes-Maritimes                |                     1
 Wejherowo                      |                     1
 Tajurah                        |                     1
 Sivas                          |                     1
 Taraz                          |                     1
 Baa                            |                     1
 Santa Rosa                     |                     1
 Tighina                        |                     1
 Singave                        |                     1
 Mandiana                       |                     1
 Hamburg                        |                     1
 Osmaniye                       |                     1
 Sangha                         |                     1
 Bulacan                        |                     1
 Murmansk                       |                     1
 Biltine                        |                     1
 Etela-Karjala                  |                     1
 Brasov                         |                     1
 Yaren                          |                     1
 Caraga                         |                     1
 Jundubah                       |                     1
 Podravska                      |                     1
 Norrbotten                     |                     1
 Ang Thong                      |                     1
 Matabeleland South             |                     1
 Grevena                        |                     1
 Bistrita-Nasaud                |                     1
 Yun-Lin Hsien                  |                     1
 Kabul                          |                     1
 Kirov                          |                     1
 Warab                          |                     1
 Jarian-al-Batnah               |                     1
 Varazhdin                      |                     1
 Kaolack                        |                     1
 Yamanashi                      |                     1
 Nei Monggol                    |                     1
 Atlantico                      |                     1
 Chagangdo                      |                     1
 Heerbrugg                      |                     1
 Bam                            |                     1
 Ciego de Avila                 |                     1
 Arunachal Pradesh              |                     1
 al-Jaza'ir                     |                     1
 Dobroszyce                     |                     1
 Bazega                         |                     1
 Mari                           |                     1
 Hrodna                         |                     1
 al-Kufrah                      |                     1
 Vaslui                         |                     1
 Tuy                            |                     1
 Agadez                         |                     1
 Maputo                         |                     1
 Cross River                    |                     1
 Ngardmau                       |                     1
 Balaka                         |                     1
 Sonsorol                       |                     1
 Massachusetts                  |                     1
 Isle of Wight                  |                     1
 Mangaia                        |                     1
 Inner Harbour                  |                     1
 Saint Viatre                   |                     1
 Piaui                          |                     1
 Louisiana                      |                     1
 Kalmykija                      |                     1
 Stockholm                      |                     1
 Picardy                        |                     1
 Gumushane                      |                     1
 Mahiljow                       |                     1
 Hokkaido                       |                     1
 Khuzestan                      |                     1
 Nizhnij Novgorod               |                     1
 Demerara-Mahaica               |                     1
 Loch Garman                    |                     1
 Alanija                        |                     1
 Monsenor Nouel                 |                     1
 Maulvi Bazar                   |                     1
 Sina al-Janubiyah              |                     1
 Resen                          |                     1
 Borgo Maggiore                 |                     1
 Abrantes                       |                     1
 Norfolk Island                 |                     1
 Las Palmas                     |                     1
 'Ayn Tamushanat                |                     1
 Mondol Kiri                    |                     1
 Fezzan                         |                     1
 Lara                           |                     1
 Minskaja Voblasts'             |                     1
 Akita                          |                     1
 Kanem                          |                     1
 Attopu                         |                     1
 Tokat                          |                     1
 Oise                           |                     1
 Land Thuringen                 |                     1
 Webling                        |                     1
 Dowa                           |                     1
 Atua                           |                     1
 Bitlis                         |                     1
 Karlovac                       |                     1
 Madaripur                      |                     1
 Jwaneng                        |                     1
 Chittagong Division            |                     1
 Pordenone                      |                     1
 Collines                       |                     1
 Melekeok                       |                     1
 Mongar                         |                     1
 Pesaro-Urbino                  |                     1
 Aga                            |                     1
 Muslim Mindanao                |                     1
 Ibb                            |                     1
 Bu Jaydur                      |                     1
 Klecany                        |                     1
 al-Janub                       |                     1
 Gorj                           |                     1
 Fulham                         |                     1
 Shumen                         |                     1
 an-Nil-al-Azraq                |                     1
 Kentucky                       |                     1
 Nord Extreme                   |                     1
 Eure-et-Loir                   |                     1
 Paramaribo                     |                     1
 Guangxi                        |                     1
 Cienfuegos                     |                     1
 Bubanza                        |                     1
 Pontevedra                     |                     1
 Samche-Zhavaheti               |                     1
 Chiradzulu                     |                     1
 Taichung Shih                  |                     1
 Maryland and Grand Kru         |                     1
 Kamphaeng Phet                 |                     1
 Kerman                         |                     1
 Mbomou                         |                     1
 Bayt Lahm                      |                     1
 Ujae                           |                     1
 Podlaskie                      |                     1
 Bijayah                        |                     1
 Nonouti                        |                     1
 Kocaeli                        |                     1
 Sembilan                       |                     1
 Diourbel                       |                     1
 Chalatenango                   |                     1
 Biminis                        |                     1
 La Union                       |                     1
 Kibuye                         |                     1
 Madre de Dios                  |                     1
 Gauteng                        |                     1
 Cuvette                        |                     1
 Manisa                         |                     1
 Abseron                        |                     1
 Naugaon                        |                     1
 Putumayo                       |                     1
 Cascade                        |                     1
 Sondrio                        |                     1
 as-Sulaymaniyah                |                     1
 Edirne                         |                     1
 Jakarta                        |                     1
 Kayanza                        |                     1
 Mae Hong Son                   |                     1
 Mahama                         |                     1
 Rajhrad                        |                     1
 al-Ladhiqiyah                  |                     1
 Dedza                          |                     1
 Schwyz                         |                     1
 Wrexham                        |                     1
 Kotaik                         |                     1
 Trinity Palmetto Point         |                     1
 Apurimac                       |                     1
 Verbano-Cusio-Ossola           |                     1
 Marrakech-Tensift-Al Haouz     |                     1
 Shamal Darfur                  |                     1
 Hautes-Pyrenees                |                     1
 Wilaya de Constantine          |                     1
 Baglan                         |                     1
 Binh Dinh                      |                     1
 Noumbiel                       |                     1
 Hung Yen                       |                     1
 Rzeszow                        |                     1
 Pita                           |                     1
 Buirah                         |                     1
 Tasman                         |                     1
 Aargau                         |                     1
 Dosso                          |                     1
 Manubah                        |                     1
 Zasavska                       |                     1
 Nukunonu                       |                     1
 Kadiogo                        |                     1
 al-Minya                       |                     1
 Kosicky                        |                     1
 Meuse                          |                     1
 Shirak                         |                     1
 Algarve                        |                     1
 al-Qasrayn                     |                     1
 Rodopi                         |                     1
 Grevenmacher                   |                     1
 Micoud                         |                     1
 Lincolnshire                   |                     1
 Boke                           |                     1
 Laasdorf                       |                     1
 Kankan                         |                     1
 Doukkala-Abda                  |                     1
 Nimruz                         |                     1
 Maule                          |                     1
 Brandenburg                    |                     1
 Salinas                        |                     1
 Burgos                         |                     1
 Orebro                         |                     1
 Muaskar                        |                     1
 Strumica                       |                     1
 Ekiti                          |                     1
 Kursk                          |                     1
 Evritania                      |                     1
 Kusaie                         |                     1
 Rio Grande do Norte            |                     1
 Sakarya                        |                     1
 Roervig                        |                     1
 Karaman                        |                     1
 Atlantique                     |                     1
 Colima                         |                     1
 Kordestan                      |                     1
 Moskovskaya Oblast             |                     1
 West Sussex                    |                     1
 Nunavut                        |                     1
 Arhangaj                       |                     1
 Samarkand                      |                     1
 Volgograd                      |                     1
 Tacna                          |                     1
 Bauskas                        |                     1
 Miquelon-Langlade              |                     1
 Boulgou                        |                     1
 Namentenga                     |                     1
 Vakaga                         |                     1
 Aitutaki                       |                     1
 Pavlodar                       |                     1
 Nayarit                        |                     1
 Sharjha                        |                     1
 La Romana                      |                     1
 Retalhuleu                     |                     1
 Balikesir                      |                     1
 Boffa                          |                     1
 Fukushima                      |                     1
 Kogi                           |                     1
 Lobatse                        |                     1
 Hato Mayor                     |                     1
 Toamasina                      |                     1
 Cahul                          |                     1
 Negeri Sembilan                |                     1
 Limassol                       |                     1
 Sekong                         |                     1
 Bale                           |                     1
 Dhamar                         |                     1
 Ostrowiec                      |                     1
 Espirito Santo                 |                     1
 Rodney                         |                     1
 Northern Mindanao              |                     1
 Buenos Aires                   |                     1
 Samagrelo-Zemo Svaneti         |                     1
 Oulun Laani                    |                     1
 Yamaguchi                      |                     1
 Ruggell                        |                     1
 Blekinge                       |                     1
 Nakhon Pathom                  |                     1
 Meta                           |                     1
 Thurgau                        |                     1
 Korce                          |                     1
 Darnah                         |                     1
 Uige                           |                     1
 Pest                           |                     1
 Ivano-Frankivs'ka              |                     1
 Upper East                     |                     1
 Viangchan Province             |                     1
 Paphos                         |                     1
 az-Zawiyah                     |                     1
 Tasmania                       |                     1
 Land Mecklenburg-Vorpommern    |                     1
 Eastern Province               |                     1
 Tillabery                      |                     1
 Pohjanmaa                      |                     1
 Tabora                         |                     1
 Dong Bang Song Cuu Long        |                     1
 Agri                           |                     1
 Wien                           |                     1
 Unicov                         |                     1
 Gulf                           |                     1
 Lodi                           |                     1
 Mildenhall                     |                     1
 Bornholm                       |                     1
 Diyala                         |                     1
 Nuevo Leon                     |                     1
 al-Minufiyah                   |                     1
 Zou                            |                     1
 Shida Kartli                   |                     1
 Gotland                        |                     1
 Pirkanmaa                      |                     1
 Telimele                       |                     1
 Galway                         |                     1
 Atlantico Norte                |                     1
 Awdal                          |                     1
 as-Samarah                     |                     1
 Chiapas                        |                     1
 Bihar                          |                     1
 Cesu                           |                     1
 Liquica                        |                     1
 Macau                          |                     1
 Monte Plata                    |                     1
 Trabzon                        |                     1
 Sliven                         |                     1
 Fujian Sheng                   |                     1
 Yablaniza                      |                     1
 Belgorod                       |                     1
 Gamprin                        |                     1
 Portuguesa                     |                     1
 Mechi                          |                     1
 Kinshasa                       |                     1
 Bocas del Toro                 |                     1
 Narino                         |                     1
 Monaghan                       |                     1
 Calarasi                       |                     1
 Clayton                        |                     1
 Slovenian Littoral             |                     1
 Roraima                        |                     1
 Mchinji                        |                     1
 Ille-et-Vilaine                |                     1
 Zinder                         |                     1
 Monagas                        |                     1
 Slaskie                        |                     1
 Madeira                        |                     1
 Shamal Kurdufan                |                     1
 Caprivi                        |                     1
 Kibungo                        |                     1
 Vaishali                       |                     1
 South Eastern                  |                     1
 Naryn                          |                     1
 Phuket                         |                     1
 Kgatleng                       |                     1
 Split-Dalmacija                |                     1
 Byram                          |                     1
 Umm-al-Bawaghi                 |                     1
 Michoacan                      |                     1
 Donets'ka                      |                     1
 Ouham-Pende                    |                     1
 Ardeche                        |                     1
 Khersonska                     |                     1
 Shan                           |                     1
 Aragatsotn                     |                     1
 Phangnga                       |                     1
 Sergipe                        |                     1
 Hambantota                     |                     1
 Elbasan                        |                     1
 Wallonne                       |                     1
 Salah-ad-Din                   |                     1
 Jevrej                         |                     1
 Hyogo                          |                     1
 Vosges                         |                     1
 Jawa Tengah                    |                     1
 Ishikawa                       |                     1
 Seine-Saint-Denis              |                     1
 Mili                           |                     1
 Hauts-de-Seine                 |                     1
 Fly River                      |                     1
 Badulla                        |                     1
 Saint Paul Charlestown         |                     1
 Rukwa                          |                     1
 Montserrat                     |                     1
 Niigata                        |                     1
 Rivercess                      |                     1
 Astrahan                       |                     1
 Guaira                         |                     1
 Poltavs'ka                     |                     1
 Sa'dah                         |                     1
 Fokis                          |                     1
 Dasoguz                        |                     1
 Velesin                        |                     1
 Qadesiya                       |                     1
 Western Visayas                |                     1
 Falcon                         |                     1
 Yangon                         |                     1
 Dushanbe                       |                     1
 Castletown                     |                     1
 Yerevan                        |                     1
 Sigis Kazakstan                |                     1
 Nan                            |                     1
 Nana-Mambere                   |                     1
 Zanzibar and Pemba             |                     1
 Bursa                          |                     1
 Cat Island                     |                     1
 Lipov                          |                     1
 Vestsjalland                   |                     1
 Sulawesi Tenggara              |                     1
 Golestan                       |                     1
 Ceara                          |                     1
 Kobenhavn                      |                     1
 Iles du Vent                   |                     1
 Puglia                         |                     1
 Lozere                         |                     1
 Safat                          |                     1
 Utenos                         |                     1
 Ngerchelong                    |                     1
 Moscow                         |                     1
 Limbazhu                       |                     1
 Saint Ouen                     |                     1
 Tekirdag                       |                     1
 Nord-Ouest                     |                     1
 Sirdare                        |                     1
 Batman                         |                     1
 Mejit                          |                     1
 Mamou                          |                     1
 Madonas                        |                     1
 Lakshadweep                    |                     1
 Vukovar-Srijem                 |                     1
 Presovsky                      |                     1
 Kasai-Occidental               |                     1
 Veracruz                       |                     1
 Vatican City State (Holy See)  |                     1
 Dobrich                        |                     1
 Saint Thomas Middle Island     |                     1
 Junqali                        |                     1
 Dial Code Dungannon            |                     1
 Abuja Federal Capital Territor |                     1
 Jubbada Hose                   |                     1
 Atacama                        |                     1
 Pulau Pinang                   |                     1
 Sør-Trøndelag                  |                     1
 Khatlon                        |                     1
 Marquesas                      |                     1
 al-Hasakah                     |                     1
 Male                           |                     1
 Almati                         |                     1
 San Pedro                      |                     1
 Tandjile                       |                     1
 Smaland                        |                     1
 Durham                         |                     1
 Barguna                        |                     1
 Krushevo                       |                     1
 Navoi                          |                     1
 Wad-adh-Dhahab                 |                     1
 Osrednjeslovenska              |                     1
 Uljanovsk                      |                     1
 Halab                          |                     1
 North-Western                  |                     1
 La Habana                      |                     1
 Nyanga                         |                     1
 Tabuaeran                      |                     1
 Southern Mindanao              |                     1
 La Massana                     |                     1
 Pousat                         |                     1
 Aitolia kai Akarnania          |                     1
 Pague                          |                     1
 Kweneng                        |                     1
 New Mexico                     |                     1
 FLorida                        |                     1
 Muhafazat al Iskandariyah      |                     1
 Etela-Pohjanmaa                |                     1
 Peten                          |                     1
 Genoa                          |                     1
 Taqant                         |                     1
 Grenadines                     |                     1
 Est                            |                     1
 Gazipur                        |                     1
 Kossi                          |                     1
 Tirane                         |                     1
 Matale                         |                     1
 Gyor-Moson-Sopron              |                     1
 Saipan                         |                     1
 Umm El Fahem                   |                     1
 Tortola                        |                     1
 Sanmatenga                     |                     1
 Gipuzkoa                       |                     1
 Provincie Brabant              |                     1
 Mykolayivs'ka                  |                     1
 Cherkas'ka                     |                     1
 Hammamet Yasmine               |                     1
 Durres                         |                     1
 Pisa                           |                     1
 Kyeongsangbuk                  |                     1
 Taipei Shih / Taipei Hsien     |                     1
 Cocos (Keeling) Islands        |                     1
 Soeborg                        |                     1
 Qibili                         |                     1
 Saint Paul Capesterre          |                     1
 Jibuti                         |                     1
 Kauno                          |                     1
 Huesca                         |                     1
 Antananarivo                   |                     1
 Tongsa                         |                     1
 Mecklenburg-Vorpommern         |                     1
 North Carolina                 |                     1
 Pernik                         |                     1
 Mangilao                       |                     1
 Batken                         |                     1
 Kalatura                       |                     1
 Mcheta-Mtianeti                |                     1
 Jerusalem                      |                     1
 Zukowo                         |                     1
 Cheltenham                     |                     1
 Sicilia                        |                     1
 Toyama                         |                     1
 Lisboa e Vale do Tejo          |                     1
 Manche                         |                     1
 Rodrigues                      |                     1
 Ascension                      |                     1
 Berlin                         |                     1
 Berea                          |                     1
 Ita-Uusimaa                    |                     1
 Oppland                        |                     1
 Molise                         |                     1
 Gabu                           |                     1
 Forli-Cesena                   |                     1
 Nevsehir                       |                     1
 Crolles                        |                     1
 Siena                          |                     1
 Voru                           |                     1
 Land Sachsen-Anhalt            |                     1
 Ondo                           |                     1
 Essonne                        |                     1
 Qalqilyah                      |                     1
 Jost van Dyke                  |                     1
 Camberwell                     |                     1
 Svay Rieng                     |                     1
 Liberecky                      |                     1
 Buckinghamshire                |                     1
 Tyva                           |                     1
 Carlow                         |                     1
 Rangpur                        |                     1
 Aube                           |                     1
 Asgabat                        |                     1
 Tartus                         |                     1
 ash-Shariqah                   |                     1
 Kyonggi-do                     |                     1
 Crooked Island                 |                     1
 Souvans                        |                     1
 Bayern                         |                     1
 Rezeknes                       |                     1
 West-Vlaanderen                |                     1
 Angaur                         |                     1
 Distrito do Porto              |                     1
 Chirang                        |                     1
 al-Jahra                       |                     1
 Sikkim                         |                     1
 Mauren                         |                     1
 Bonaire                        |                     1
 Shabellaha Dhexe               |                     1
 Jogeva                         |                     1
 al-'Ayun                       |                     1
 Jasz-Nagykun-Szolnok           |                     1
 Bulgan                         |                     1
 Hebron                         |                     1
 Mzimba                         |                     1
 Sitrah                         |                     1
 Ningxia Hui                    |                     1
 Carchi                         |                     1
 Zulia                          |                     1
 Anhui                          |                     1
 Maryland                       |                     1
 Chattagam                      |                     1
 Bologna                        |                     1
 Dolnoslaskie                   |                     1
 Prachuap Khiri Khan            |                     1
 Bissau                         |                     1
 Habarovsk                      |                     1
 Gaybanda                       |                     1
 Santiago de Cuba               |                     1
 Marahoue                       |                     1
 Area Outside Region            |                     1
 Piedmont                       |                     1
 Bioko Norte                    |                     1
 Anambra                        |                     1
 Santo Antao                    |                     1
 Encamp                         |                     1
 al-Gharbiyah                   |                     1
 Casablanca                     |                     1
 Sykkylven                      |                     1
 Sind                           |                     1
 Teruel                         |                     1
 Shinyanga                      |                     1
 New York                       |                     1
 Magura                         |                     1
 Pool                           |                     1
 Lacs                           |                     1
 Huehuetenango                  |                     1
 Ostan-e Esfahan                |                     1
 Mokhotlong                     |                     1
 Ermera                         |                     1
 Kampong Cham                   |                     1
 Ilan                           |                     1
 Esch-sur-Alzette               |                     1
 Iowa                           |                     1
 Granma                         |                     1
 Morobe                         |                     1
 Phoenix Islands                |                     1
 Jigawa                         |                     1
 Khammouane                     |                     1
 ad-Dakhiliyah                  |                     1
 Maluku                         |                     1
 Espaillat                      |                     1
 Triesenberg                    |                     1
 Ammassalik                     |                     1
 Marche                         |                     1
 South Holland                  |                     1
 Luhans'ka                      |                     1
 Muhen                          |                     1
 Peravia                        |                     1
 Isere                          |                     1
 Govi-Altaj                     |                     1
 Negeri Johor                   |                     1
 Western Highlands              |                     1
 Jabal Lubnan                   |                     1
 Irbil                          |                     1
 Samarskaya                     |                     1
 Finistere                      |                     1
 Bundesland Salzburg            |                     1
 Val-d'Oise                     |                     1
 Argolis                        |                     1
 Milan                          |                     1
 Mato Grosso do Sul             |                     1
 Jelgava                        |                     1
 Badiyah                        |                     1
 Lipeck                         |                     1
 Bihor                          |                     1
 Silhat                         |                     1
 Kie-Ntem                       |                     1
 Okinawa                        |                     1
 Aust-Agder                     |                     1
 Hofu borgarsva i               |                     1
 Alo                            |                     1
 Dennery                        |                     1
 Werribee south                 |                     1
 Maniitsoq                      |                     1
 Loja                           |                     1
 Banjul                         |                     1
 Tahoua                         |                     1
 Sondelor                       |                     1
 Shandong Sheng                 |                     1
 at-Ta'mim                      |                     1
 Yorkshire                      |                     1
 Ida-Viru                       |                     1
 Nueva Segovia                  |                     1
 Itapua                         |                     1
 Pleven                         |                     1
 Midi-Pyrenees                  |                     1
 Hiroshima                      |                     1
 Assam                          |                     1
 Umtentweni                     |                     1
 Durazno                        |                     1
 Christ Church                  |                     1
 Herrera                        |                     1
 Flacq                          |                     1
 Kaduna                         |                     1
 Tisamsilt                      |                     1
 Adamaoua                       |                     1
 Phichit                        |                     1
 Targovishte                    |                     1
 Ariege                         |                     1
 Quebec                         |                     1
 Lunda Sul                      |                     1
 Tomsk                          |                     1
 Saxony                         |                     1
 Upernavik                      |                     1
 Pruszkow                       |                     1
 Csongrad                       |                     1
 South Australia                |                     1
 Bafing                         |                     1
 Usak                           |                     1
 Eure                           |                     1
 Chiba                          |                     1
 Katsina                        |                     1
 Salamanca                      |                     1
 Kuldigas                       |                     1
 Remich                         |                     1
 Hovd                           |                     1
 Northamptonshire               |                     1
 Nevada                         |                     1
 Azua                           |                     1
 Wakayama                       |                     1
 Cagayan                        |                     1
 Vienne                         |                     1
 Niger                          |                     1
 Kanifing                       |                     1
 Soltustik Kazakstan            |                     1
 Black River                    |                     1
 Mohafazat Mont-Liban           |                     1
 Labe                           |                     1
 Phayao                         |                     1
 Western Mindanao               |                     1
 Valle del Cauca                |                     1
 Triesen                        |                     1
 al-Batinah                     |                     1
 Bridgnorth                     |                     1
 Piemonte                       |                     1
 Aseer                          |                     1
 Chiriqui                       |                     1
 Zambezia                       |                     1
 Panama                         |                     1
 Malwana                        |                     1
 Entre Rios                     |                     1
 Ngatpang                       |                     1
 Vastergotland                  |                     1
 Parwan                         |                     1
 Busan                          |                     1
 Arkansas                       |                     1
 Nueva Esparta                  |                     1
 Ma'an                          |                     1
 Nuwara Eliya                   |                     1
 Ahvenanmaa                     |                     1
 Koks Bazar                     |                     1
 Freistaat Bayern               |                     1
 Oudomxay                       |                     1
 Vasterbotten                   |                     1
 West Virginia                  |                     1
 Port Saint Mary                |                     1
 Leningrad                      |                     1
 Berovo                         |                     1
 Vieux Fort                     |                     1
 San Luis                       |                     1
 Haut-Congo                     |                     1
 Madakalpuwa                    |                     1
 Librazhd                       |                     1
 Samdrup Jongkhar               |                     1
 Volyns'ka                      |                     1
 Sal                            |                     1
 Anzoategui                     |                     1
 Mauke                          |                     1
 Troms                          |                     1
 Katanga                        |                     1
 Boulkiemde                     |                     1
 Kilkenny                       |                     1
 Qasim                          |                     1
 Horazm                         |                     1
 Kristianstads                  |                     1
 Mugla                          |                     1
 Oio                            |                     1
 Longford                       |                     1
 Balkan                         |                     1
 Alaska                         |                     1
 Lapusna                        |                     1
 South East                     |                     1
 Isla de la Juventud            |                     1
 Idaho                          |                     1
 Paraguari                      |                     1
 Ogres                          |                     1
 Gouvernorat de Sousse          |                     1
 Niassa                         |                     1
 Chita                          |                     1
 Potaro-Siparuni                |                     1
 Cumbria                        |                     1
 Huanuco                        |                     1
 Seine-Maritime                 |                     1
 Paktiya                        |                     1
 Saint-Denis                    |                     1
 Tungurahua                     |                     1
 Debub                          |                     1
 Cochabamba                     |                     1
 Chungbuk                       |                     1
 Habana                         |                     1
 Cayenne                        |                     1
 Uummannaq                      |                     1
 Saint Elizabeth                |                     1
 Enewetak                       |                     1
 Tolima                         |                     1
 Montserrado                    |                     1
 Point Fortin                   |                     1
 Pohjois-Pohjanmaa              |                     1
 Kumanovo                       |                     1
 Labuan                         |                     1
 Puttalama                      |                     1
 Kaoh Kong                      |                     1
 Ngamiland                      |                     1
 Casanare                       |                     1
 Sharjah                        |                     1
 Takhar                         |                     1
 Vichada                        |                     1
 Tutong                         |                     1
 Jizan                          |                     1
 Ostrobothnia                   |                     1
 Echternach                     |                     1
 Acharnes                       |                     1
 Amur                           |                     1
 Caazapa                        |                     1
 Budapest                       |                     1
 Gough Island                   |                     1
 San Martin                     |                     1
 Bauchi                         |                     1
 Orenburg                       |                     1
 Penama                         |                     1
 Tipperary North Riding         |                     1
 Tipperary South Riding         |                     1
 Tunis                          |                     1
 Newton Stewart                 |                     1
 Greater Metropolitan Area      |                     1
 Tsafon                         |                     1
 Gedo                           |                     1
 Torteval                       |                     1
 Butaritari                     |                     1
 Benue                          |                     1
 Cherrybrook                    |                     1
 Kaskadar                       |                     1
 Tubruq                         |                     1
 Chollanam                      |                     1
 Khulna                         |                     1
 Miranda                        |                     1
 Liezen                         |                     1
 Ohrid                          |                     1
 Khon Kaen                      |                     1
 Puy-de-Dome                    |                     1
 Kriva Palanka                  |                     1
 Tachira                        |                     1
 Qalmah                         |                     1
 Tripura                        |                     1
 Mallakaster                    |                     1
 La Desirade                    |                     1
 Luang Prabang                  |                     1
 Chitipa                        |                     1
 Balkh                          |                     1
 Elias Pina                     |                     1
 Bengkulu                       |                     1
 Udon Thani                     |                     1
 Lagunes                        |                     1
 Le Creusot                     |                     1
 Pyeongyang                     |                     1
 Saraburi                       |                     1
 Medimurska Zupanija            |                     1
 Valga                          |                     1
 Territoire de Belfort          |                     1
 Salfit                         |                     1
 Kobenhavns Kommune             |                     1
 Changhwa                       |                     1
 Somogy                         |                     1
 Vaupes                         |                     1
 Jarash                         |                     1
 Kaluga                         |                     1
 Mashonaland East               |                     1
 Nor oy                         |                     1
 Toscana                        |                     1
 al-Khalil                      |                     1
 Ceuta                          |                     1
 Luzern                         |                     1
 Kujawsko-Pomorskie             |                     1
 Batha                          |                     1
 Michigan                       |                     1
 Kouroussa                      |                     1
 Tombouctou                     |                     1
 Abaco                          |                     1
 Bafata                         |                     1
 Kavadarci                      |                     1
 Kyeongsangnam                  |                     1
 Mtwara                         |                     1
 Beit Hanania                   |                     1
 Carinthia                      |                     1
 Nagasaki                       |                     1
 Teraina                        |                     1
 Belluno                        |                     1
 Aktobe                         |                     1
 Cauca                          |                     1
 Kangaatsiaq                    |                     1
 Sidon                          |                     1
 Obalno-krashka                 |                     1
 Jiangxi                        |                     1
 Struga                         |                     1
 Vologda                        |                     1
 Bamingui-Bangoran              |                     1
 Ouaddai                        |                     1
 Dornod                         |                     1
 Saint-Benoit                   |                     1
 Kraslavas                      |                     1
 Asir                           |                     1
 Cornwall                       |                     1
 Cankuzo                        |                     1
 Kebbi                          |                     1
 Scotland                       |                     1
 Dar'a                          |                     1
 Jaffa                          |                     1
 Gramsh                         |                     1
 Deux-Sevres                    |                     1
 Kegalla                        |                     1
 ash-Shamaliyah                 |                     1
 Les Escaldes                   |                     1
 Baghdad                        |                     1
 Tumbes                         |                     1
 Satun                          |                     1
 Oudalan                        |                     1
 Seti                           |                     1
 Gharb-al-Istiwa'iyah           |                     1
 Anseba                         |                     1
 Lot-et-Garonne                 |                     1
 Gozo and Comino                |                     1
 adh-Dhahirah                   |                     1
 Leinster                       |                     1
 Rezekne                        |                     1
 Champasak                      |                     1
 Bremen                         |                     1
 Baucau                         |                     1
 Westmeath                      |                     1
 Hunedoara                      |                     1
 Thakurgaon                     |                     1
 Vicebsk                        |                     1
 Norte                          |                     1
 Henan                          |                     1
 Mankistau                      |                     1
 Queretaro                      |                     1
 Amapa                          |                     1
 Faranah                        |                     1
 Ulsan                          |                     1
 Wheeler                        |                     1
 Indiana                        |                     1
 Makin                          |                     1
 Pyeongannamdo                  |                     1
 Pemagatsel                     |                     1
 Corum                          |                     1
 Oruro                          |                     1
 Intibuca                       |                     1
 Ogun                           |                     1
 Kara                           |                     1
 Ghanzi                         |                     1
 Guria                          |                     1
 Negotino                       |                     1
 Iles des Saintes               |                     1
 A'ana                          |                     1
 Moskva                         |                     1
 Kgalagadi North                |                     1
 Gevgelija                      |                     1
 Bago                           |                     1
 al-Kuwayt                      |                     1
 Notranjsko-krashka             |                     1
 Valparaiso                     |                     1
 Gouvernorat de Nabeul          |                     1
 Woleu-Ntem                     |                     1
 Biscay                         |                     1
 Bouches-du-Rhone               |                     1
 Fukuoka                        |                     1
 Schellenberg                   |                     1
 Blagoevgrad                    |                     1
 Independencia                  |                     1
 Southern Tagalog               |                     1
 Cheljabinsk                    |                     1
 Colorado                       |                     1
 Comunidad Autonoma de Galicia  |                     1
 Chandpur                       |                     1
 Sussex                         |                     1
 Novara                         |                     1
 Surhondar                      |                     1
 Sector claimed by Australia    |                     1
 Orellana                       |                     1
 Kochi                          |                     1
 Zamfara                        |                     1
 Denbighshire                   |                     1
 Bundesland Tirol               |                     1
 Santa Catarina                 |                     1
 Bani Suwayf                    |                     1
 Land Brandenburg               |                     1
 Whissendine                    |                     1
 Kirklareli                     |                     1
 Matruh                         |                     1
 Altaj                          |                     1
 Laborie                        |                     1
 Shkoder                        |                     1
 Gharyan                        |                     1
 Yoro                           |                     1
 Malanje                        |                     1
 Chhattisgarh                   |                     1
 Rheinland-Pfalz                |                     1
 Voiotia                        |                     1
 Kilimanjaro                    |                     1
 Taichung Hsien                 |                     1
 Faryab                         |                     1
 Castel                         |                     1
 Arorae                         |                     1
 Dolj                           |                     1
 Ingusetija                     |                     1
 Istanbul                       |                     1
 Franche-Comte                  |                     1
 Tamaulipas                     |                     1
 Mugan-Salyan                   |                     1
 Duarte                         |                     1
 Land Bayern                    |                     1
 Gawr                           |                     1
 al-Buhayrah                    |                     1
 Tubuai                         |                     1
 Artibonite                     |                     1
 Huelva                         |                     1
 Bolzano                        |                     1
 Savona                         |                     1
 Flores                         |                     1
 New Providence                 |                     1
 Oita                           |                     1
 Ilulissat                      |                     1
 Bajanhongor                    |                     1
 Ankara                         |                     1
 Balzers                        |                     1
 Azarbayjan-e Khavari           |                     1
 Vynnyts'ka                     |                     1
 Vilniaus                       |                     1
 Tabasco                        |                     1
 Chalan-Pago-Ordot              |                     1
 Bamako                         |                     1
 Gampaha                        |                     1
 Virginia                       |                     1
 Doubs                          |                     1
 Uttarakhand                    |                     1
 Balmain                        |                     1
 Chuquisaca                     |                     1
 Chandigarh                     |                     1
 Sarthe                         |                     1
 Benevento                      |                     1
 al-Ahmadi                      |                     1
 Buskerud                       |                     1
 Obcina Domzale                 |                     1
 Bulqize                        |                     1
 Trapani                        |                     1
 Maputo Provincia               |                     1
 Boaco                          |                     1
 Aryanah                        |                     1
 Marie-Galante                  |                     1
 Kingston                       |                     1
 Isparta                        |                     1
 Meghalaya                      |                     1
 Surt                           |                     1
 Grand Turk                     |                     1
 ad-Dawhah                      |                     1
 al-Biqa                        |                     1
 Land Hessen                    |                     1
 Mazowieckie                    |                     1
 Hainan                         |                     1
 Nabulus                        |                     1
 Faetano                        |                     1
 al-Bahah                       |                     1
 Neamt                          |                     1
 Hakasija                       |                     1
 Thu Do Ha Noi                  |                     1
 Dinajpur                       |                     1
 as-Suwayda                     |                     1
 Qazvin                         |                     1
 Burjatija                      |                     1
 Tafea                          |                     1
 Mil-Qarabax                    |                     1
 Mato Grosso                    |                     1
 Njazidja                       |                     1
 Nanumea                        |                     1
 Plzensky                       |                     1
 Burgenland                     |                     1
 Florence                       |                     1
 Prilep                         |                     1
 Vladimir                       |                     1
 Karnten                        |                     1
 Saarland                       |                     1
 Ghaviyani                      |                     1
 Adana                          |                     1
 Lempira                        |                     1
 Firenze                        |                     1
 Sinnar                         |                     1
 Palauli                        |                     1
 Tainan Hsien                   |                     1
 Bashkortostan                  |                     1
 Semien-Keih-Bahri              |                     1
 Ocotepeque                     |                     1
 Karachaj-Cherkessija           |                     1
 Bas-Congo                      |                     1
 Rose Hill                      |                     1
 Hampshire                      |                     1
 Hawalli                        |                     1
 Languedoc-Roussillon           |                     1
 Feucherolles                   |                     1
 Salima                         |                     1
 Vejle                          |                     1
 Namibe                         |                     1
 Sonsonate                      |                     1
 Sana                           |                     1
 Daga                           |                     1
 Haa Alif                       |                     1
 Madrid                         |                     1
 Gisborne                       |                     1
 Dong Nam Bo                    |                     1
 Heves                          |                     1
 Moyen-Comoe                    |                     1
 Burlinsky Region               |                     1
 South Wales                    |                     1
 Guadalcanal                    |                     1
 Nikunau                        |                     1
 Bandarban                      |                     1
 Nana-Gribizi                   |                     1
 Delaware                       |                     1
 Udenfor kommunal inddeling     |                     1
 Kharkiv                        |                     1
 Tibissah                       |                     1
 Aceh                           |                     1
 Sinoe                          |                     1
 Kars                           |                     1
 Quindio                        |                     1
 Zilinsky                       |                     1
 Qazax                          |                     1
 Federally administered Tribal  |                     1
 Asuncion                       |                     1
 Ibaraki                        |                     1
 Lawghar                        |                     1
 Bashshar                       |                     1
 Pitcairn Island                |                     1
 Esmeraldas                     |                     1
 Diego Martin                   |                     1
 Salamat                        |                     1
 Parana                         |                     1
 Bangka-Belitung                |                     1
 Biskrah                        |                     1
 Haute-Corse                    |                     1
 Imo                            |                     1
 Tulkarm                        |                     1
 Northern Ireland               |                     1
 Tarhunah                       |                     1
 Soriano                        |                     1
 Chaouia-Ouardigha              |                     1
 Kutahya                        |                     1
 Northern Islands               |                     1
 Kigoma                         |                     1
 Taejon-gwangyoksi              |                     1
 Alsace                         |                     1
 Jawa Barat                     |                     1
 Lower Normandy                 |                     1
 Ogooue-Maritime                |                     1
 Province de Tanger             |                     1
 Northumberland                 |                     1
 Nograd                         |                     1
 Pirojpur                       |                     1
 Drome                          |                     1
 Saint Davids                   |                     1
 Naama                          |                     1
 Manicaland                     |                     1
 Maloelap                       |                     1
 Cabinda                        |                     1
 Kalbacar                       |                     1
 Pukapuka                       |                     1
 West Coast                     |                     1
 Tadla-Azilal                   |                     1
 Alto Parana                    |                     1
 Orhei                          |                     1
 Wotho                          |                     1
 Uleaborgs Lan                  |                     1
 Jamalo-Nenets                  |                     1
 Tamil Nadu                     |                     1
 Hania                          |                     1
 Anyksciai                      |                     1
 Moyen-Cavally                  |                     1
 Oaxaca                         |                     1
 Dalarna                        |                     1
 Niutao                         |                     1
 Rhode Island                   |                     1
 Berat                          |                     1
 Zhejiang Sheng                 |                     1
 Su urland                      |                     1
 Rivas                          |                     1
 Zonguldak                      |                     1
 Kruje                          |                     1
 Safaqis                        |                     1
 Wokingham                      |                     1
 Taranto                        |                     1
 Berchem                        |                     1
 'Isa                           |                     1
 Naral                          |                     1
 Skane                          |                     1
 Kurunegala                     |                     1
 Ombella Mpoko                  |                     1
 Niue                           |                     1
 Bhola                          |                     1
 Central Mindanao               |                     1
 Lop Buri                       |                     1
 Corse-du-Sud                   |                     1
 Oran                           |                     1
 Pitcairn                       |                     1
 Lower Galilee                  |                     1
 Como                           |                     1
 Tarn                           |                     1
 Viterbo                        |                     1
 Faaf                           |                     1
 Ludlow                         |                     1
 Carolina                       |                     1
 Monaragala                     |                     1
 Nakhon Nayok                   |                     1
 Saint Luke                     |                     1
 Cadiz                          |                     1
 Northland                      |                     1
 Alba                           |                     1
 Neuchatel                      |                     1
 Batis Kazakstan                |                     1
 Togdher                        |                     1
 Cleveland                      |                     1
 Hsinchu Shih                   |                     1
 Colonia                        |                     1
 South Pacific                  |                     1
 Akmola                         |                     1
 Orhon                          |                     1
 Anhui Province                 |                     1
 Christ Church Nichola Town     |                     1
 Commewijne                     |                     1
 Karbala                        |                     1
 Brahman Bariya                 |                     1
 Matara                         |                     1
 Sachsen-Anhalt                 |                     1
 Ruvuma                         |                     1
 Qinghai                        |                     1
 Trentino-Alto Adige            |                     1
 Comunidad Autonoma del Princip |                     1
 Nakhon Sawan                   |                     1
 Dix-huit Montagnes             |                     1
 Maine                          |                     1
 Utrik                          |                     1
 Andalucia                      |                     1
 Meath                          |                     1
 Dhufar                         |                     1
 Sisimiut                       |                     1
 Eastern Taipei                 |                     1
 Wiltshire                      |                     1
 Savinjska                      |                     1
 Lushnje                        |                     1
 Gnagna                         |                     1
 Virovitica-Podravina           |                     1
 Semnan                         |                     1
 Tainan Shih                    |                     1
 Temburong                      |                     1
 Ngaremlengui                   |                     1
 Kurgan                         |                     1
 Siirt                          |                     1
 Napo                           |                     1
 Kapisa                         |                     1
 Meknes-Tafilalet               |                     1
 Coast                          |                     1
 Derbyshire                     |                     1
 Rocha                          |                     1
 Sucumbios                      |                     1
 San Marcos                     |                     1
 Krabi                          |                     1
 Ratchaburi                     |                     1
 Bay                            |                     1
 Princes Town                   |                     1
 Teleorman                      |                     1
 Essequibo Islands-West Demerar |                     1
 Pattani                        |                     1
 Sankt-Peterburg                |                     1
 Ambeno                         |                     1
 South Moravian                 |                     1
 Perugia                        |                     1
 Grand'Anse                     |                     1
 Stavropol                      |                     1
 Caroni                         |                     1
 Midlands                       |                     1
 Asti                           |                     1
 Haskovo                        |                     1
 Bobonaro                       |                     1
 Omnogovi                       |                     1
 Agadir                         |                     1
 Hualien                        |                     1
 Lavalleja                      |                     1
 Hilmand                        |                     1
 Kracheh                        |                     1
 Ilocos                         |                     1
 North Humberside               |                     1
 Mouhoun                        |                     1
 British Indian Ocean Territory |                     1
 Sanguie                        |                     1
 Messina                        |                     1
 Miim                           |                     1
 Trelawney                      |                     1
 San Pedro de Macoris           |                     1
 Comunidad Valenciana           |                     1
 Nzwani                         |                     1
 Chernivets'ka                  |                     1
 Dubrovnik-Neretva              |                     1
 Saint-Laurent-du-Maroni        |                     1
 Taoyuan                        |                     1
 Lib                            |                     1
 Malaita                        |                     1
 Cesar                          |                     1
 Karnali                        |                     1
 Lubuskie                       |                     1
 Phrae                          |                     1
 Masqat                         |                     1
 Oslo                           |                     1
 Hiran                          |                     1
 Paijat-Hame                    |                     1
 Le Marin                       |                     1
 Herefordshire                  |                     1
 Beilstein Wurtt                |                     1
 Kerkira                        |                     1
 Kayah                          |                     1
 Krasnoyarskiy Kray             |                     1
 Francisco Morazan              |                     1
 Qurqul                         |                     1
 Moskovskaja Oblast             |                     1
 Larisa                         |                     1
 Parnu                          |                     1
 Manipur                        |                     1
 Vaav                           |                     1
 Paamiut                        |                     1
 Stare Pole                     |                     1
 Mashonaland Central            |                     1
 Kermanshah                     |                     1
 Praha                          |                     1
 Liepaja                        |                     1
 Thaa                           |                     1
 Trento                         |                     1
 Warminsko-Mazurskie            |                     1
 Acklins Island                 |                     1
 Ciudad de la Habana            |                     1
 Pastaza                        |                     1
 Ilizi                          |                     1
 Shiselweni                     |                     1
 Kolonje                        |                     1
 Grand Cape Mount               |                     1
 Ardabil                        |                     1
 Inshiri                        |                     1
 Zamora                         |                     1
 Ganja                          |                     1
 Cabanas                        |                     1
 Gikongoro                      |                     1
 Chiesanuova                    |                     1
 Clarendon                      |                     1
 Newfoundland and Labrador      |                     1
 Kanton Aargau                  |                     1
 Mukdahan                       |                     1
 Niederosterreich               |                     1
 Qafsah                         |                     1
 Kampong Chhnang                |                     1
 Muramvya                       |                     1
 Arno                           |                     1
 Marij El                       |                     1
 Kichevo                        |                     1
 Trikala                        |                     1
 Geneve                         |                     1
 Fromager                       |                     1
 Shabellaha Hose                |                     1
 Sant Julia de Loria            |                     1
 Shandong                       |                     1
 Unclaimed Sector               |                     1
 Sanchez Ramirez                |                     1
 Hatobohei                      |                     1
 Karuzi                         |                     1
 Kampot                         |                     1
 Gaoual                         |                     1
 Warqla                         |                     1
 Sint Maarten                   |                     1
 Toelloese                      |                     1
 Sud-Est                        |                     1
 Central Tutume                 |                     1
 Mahaica-Berbice                |                     1
 Muyinga                        |                     1
 Belize                         |                     1
 Ticino                         |                     1
 Bretagne                       |                     1
 Diredawa                       |                     1
 Belait                         |                     1
 Karabuk                        |                     1
 Likouala                       |                     1
 al-Fujayrah                    |                     1
 Segou                          |                     1
 Santiago Rodriguez             |                     1
 Saki                           |                     1
 Shaanxi                        |                     1
 Sinajana                       |                     1
 Beijing                        |                     1
 Dar es Salaam                  |                     1
 Central Bohemian               |                     1
 Hudh-al-Gharbi                 |                     1
 Bururi                         |                     1
 Basilicata                     |                     1
 Valencia                       |                     1
 Dinguiraye                     |                     1
 Orapa                          |                     1
 Tamana                         |                     1
 Wardag                         |                     1
 Bratislavsky                   |                     1
 Alabama                        |                     1
 Ciudad Real                    |                     1
 Devoll                         |                     1
 Lakonia                        |                     1
 Tombali                        |                     1
 Ailuk                          |                     1
 Chinandega                     |                     1
 Kayin                          |                     1
 Sahalin                        |                     1
 Asturias                       |                     1
 Mid Glamorgan                  |                     1
 Loffa                          |                     1
 Channel Islands                |                     1
 Lhaviyani                      |                     1
 Koundara                       |                     1
 Rajasthan                      |                     1
 Mohale's Hoek                  |                     1
 Potosi                         |                     1
 Pomurska                       |                     1
 Tongareva                      |                     1
 Metropolitan Manila Area       |                     1
 Nagaland                       |                     1
 Mambere-Kadei                  |                     1
 Sulawesi Utara                 |                     1
 Harare                         |                     1
 Thyolo                         |                     1
 Cantagalo                      |                     1
 Radovish                       |                     1
 Otjozondjupa                   |                     1
 Co Fermanagh                   |                     1
 Qidimagha                      |                     1
 Soroca                         |                     1
 Jaipur Hat                     |                     1
 Lae                            |                     1
 Jubbadha Dexe                  |                     1
 Satif                          |                     1
 Rakhine                        |                     1
 al-Quds                        |                     1
 Monastir                       |                     1
 Cojedes                        |                     1
 'Adan                          |                     1
 Umm Salal                      |                     1
 Tyrone                         |                     1
 Delta Amacuro                  |                     1
 Metropolitana de Santiago      |                     1
 Sudouest                       |                     1
 Maritime                       |                     1
 Talofofo                       |                     1
 Jawf                           |                     1
 Distrito de Vila Real          |                     1
 Sector claimed by Norway       |                     1
 Mayaguana                      |                     1
 Estado de Sao Paulo            |                     1
 Umbria                         |                     1
 Sangha-Mbaere                  |                     1
 Saint Croix                    |                     1
 Santiago                       |                     1
 Khu Bon Cu                     |                     1
 Gharb Kurdufan                 |                     1
 Loire-Atlantique               |                     1
 Guarico                        |                     1
 Enugu                          |                     1
 Kushtiya                       |                     1
 Yap                            |                     1
 Hovedstaden                    |                     1
 Ngozi                          |                     1
 Singapore                      |                     1
 Rafah                          |                     1
 Bartin                         |                     1
 Lecco                          |                     1
 Keelung Shih                   |                     1
 Moselle                        |                     1
 Ngwaketse                      |                     1
 Somerset                       |                     1
 Ha'apai                        |                     1
 Hims                           |                     1
 Ivittuut                       |                     1
 Paivas                         |                     1
 Daugavpils City                |                     1
 an-Nabatiyah                   |                     1
 Komandjari                     |                     1
 Noord-Brabant                  |                     1
 Las Tunas                      |                     1
 Jawa Timur                     |                     1
 Erongo                         |                     1
 Dayr-al-Balah                  |                     1
 Kahramanmaras                  |                     1
 Artigas                        |                     1
 Seno                           |                     1
 Ben Gurion Airport             |                     1
 North Eastern                  |                     1
 Kenmore                        |                     1
 Grand Gedeh                    |                     1
 Tinian                         |                     1
 Galla                          |                     1
 Duzce                          |                     1
 Tinh Gia Lai                   |                     1
 Yobe                           |                     1
 West Bengal                    |                     1
 Boyaca                         |                     1
 Reggio Emilia                  |                     1
 Sumatera Utara                 |                     1
 Turkish controlled area        |                     1
 Alava                          |                     1
 Nyanza                         |                     1
 Orange Walk                    |                     1
 Nui                            |                     1
 Bogora                         |                     1
 Ascoli Piceno                  |                     1
 Samut Prakan                   |                     1
 Sanma                          |                     1
 Kukes                          |                     1
 Mongmong-Toto-Maite            |                     1
 Kaaf                           |                     1
 United States Minor Outlying I |                     1
 Brunei-Muara                   |                     1
 Timis                          |                     1
 Santiago del Estero            |                     1
 Lower Austria                  |                     1
 Essex                          |                     1
 Muhafazat al Qahirah           |                     1
 Kyeonggi                       |                     1
 Madang                         |                     1
 Netrakona                      |                     1
 Saint Helena                   |                     1
 Sector claimed by France       |                     1
 Tjumen                         |                     1
 New South Wales                |                     1
 Stueng Traeng                  |                     1
 Saint Andrews                  |                     1
 Hamah                          |                     1
 Preilu                         |                     1
 Saint James Windward           |                     1
 Nkhotakota                     |                     1
 Abhasia                        |                     1
 Kayangel                       |                     1
 Castello                       |                     1
 Uttar Pradesh                  |                     1
 Loreto                         |                     1
 Hong Kong                      |                     1
 Asyut                          |                     1
 Jugovzhodna Slovenija          |                     1
 Ragged Island                  |                     1
 Onotoa                         |                     1
 Gorno-Altaj                    |                     1
 Vysochina                      |                     1
 Melbourne                      |                     1
 Kwanza Sul                     |                     1
 Polonnaruwa                    |                     1
 Kwajalein                      |                     1
 Shibenik-Knin                  |                     1
 South Glamorgan                |                     1
 Veneto                         |                     1
 Oshikoto                       |                     1
 Saha                           |                     1
 Tapoa                          |                     1
 Wilaya de Rabat-Sale           |                     1
 Sonderjylland                  |                     1
 Komi-Permjakija                |                     1
 Molteno                        |                     1
 Primorje-Gorski Kotar          |                     1
 Kouilou                        |                     1
 Schaffhausen                   |                     1
 Bin 'Arus                      |                     1
 Trang                          |                     1
 Vaga                           |                     1
 Sourou                         |                     1
 an-Nuqat al-Khams              |                     1
 Tawzar                         |                     1
 Saba                           |                     1
 Daegu                          |                     1
 Nagano                         |                     1
 Pieria                         |                     1
 Dabola                         |                     1
 Mali                           |                     1
 Abaiang                        |                     1
 Piura                          |                     1
 Guaviare                       |                     1
 Bioko Sur                      |                     1
 Guangdong Sheng                |                     1
 Karelija                       |                     1
 SUSSEX                         |                     1
 Parma                          |                     1
 Parow                          |                     1
 Ntchisi                        |                     1
 Vastra Gotaland                |                     1
 Nabul                          |                     1
 Bacs-Kiskun                    |                     1
 Cairo                          |                     1
 Kalimantan Selatan             |                     1
 Manabi                         |                     1
 Gainsborough                   |                     1
 Hagatna                        |                     1
 Kainuu                         |                     1
 Tavush                         |                     1
 Magdalena                      |                     1
 Ialomita                       |                     1
 Nova Scotia                    |                     1
 Jekabspils                     |                     1
 Kaliningrad                    |                     1
 Baki Sahari                    |                     1
 Indre-et-Loire                 |                     1
 Koscian                        |                     1
 Mordovija                      |                     1
 Cantabria                      |                     1
 Ain                            |                     1
 Koshi                          |                     1
 Matabeleland North             |                     1
 Alibori                        |                     1
 Rutana                         |                     1
 El Progreso                    |                     1
 Wadi Kabir                     |                     1
 Long An                        |                     1
 Bayamon                        |                     1
 Yamagata                       |                     1
 Olt                            |                     1
 Isle Of Man                    |                     1
 Kenedougou                     |                     1
 Siin                           |                     1
 Nord-Kivu                      |                     1
 Humacao                        |                     1
 al-Madinah                     |                     1
 Kurdistan                      |                     1
 Loiret                         |                     1
 Planken                        |                     1
 Alif Dhaal                     |                     1
 Bertamirans                    |                     1
 Coral Sea Islands              |                     1
 Marijampoles                   |                     1
 Yala                           |                     1
 Kyyivs'ka                      |                     1
 Syunik                         |                     1
 Oromia                         |                     1
 Plovdiv                        |                     1
 Gracias a Dios                 |                     1
 Tel Aviv                       |                     1
 Washington                     |                     1
 Ta'izz                         |                     1
 Chimaltenango                  |                     1
 Land Rheinland-Pfalz           |                     1
 Baja Verapaz                   |                     1
 Twickenham                     |                     1
 Quintana Roo                   |                     1
 Choco                          |                     1
 Jalal-Abad                     |                     1
 Ghardayah                      |                     1
 Saint John Figtree             |                     1
 Acquaviva                      |                     1
 District of Columbia           |                     1
 Bumthang                       |                     1
 Austurland                     |                     1
 Jambi                          |                     1
 Taejeon                        |                     1
 Isabel                         |                     1
 Hajjah                         |                     1
 Fribourg                       |                     1
 Lubelskie                      |                     1
 ash-Shalif                     |                     1
 Saint Lucy                     |                     1
 Rumphi                         |                     1
 Funafuti                       |                     1
 Eleuthera                      |                     1
 Krym                           |                     1
 Santa Fe                       |                     1
 New Brunswick                  |                     1
 Nkhata Bay                     |                     1
 Namorik                        |                     1
 Southland                      |                     1
 Gwent                          |                     1
 North Yorkshire                |                     1
 Anegada                        |                     1
 Takaev                         |                     1
 Vrancea                        |                     1
 Steiermark                     |                     1
 Chahar Mahal-e Bakhtiari       |                     1
 Vavuniyawa                     |                     1
 Saint Thomas Lowland           |                     1
 Kilis                          |                     1
 Olancho                        |                     1
 Laane                          |                     1
 Kerouane                       |                     1
 Edo                            |                     1
 Minsk                          |                     1
 Nimba                          |                     1
 Moka                           |                     1
 Benguela                       |                     1
 Lesvos                         |                     1
 Hautes-Alpes                   |                     1
 Arta                           |                     1
 Pomeroon-Supenaam              |                     1
 Bajah                          |                     1
 Attiki                         |                     1
 Ventspils City                 |                     1
 Queensland                     |                     1
 Fiorentino                     |                     1
 Ringkobing                     |                     1
 Bur Sa'id                      |                     1
 Azarbayjan-e Bakhtari          |                     1
 al-Qadisiyah                   |                     1
 Murzuq                         |                     1
 Baja California Sur            |                     1
 Pwani                          |                     1
 Maria Trinidad Sanchez         |                     1
 Tbilisi                        |                     1
 Sevilla                        |                     1
 Nord-Trøndelag                 |                     1
 Cizah                          |                     1
 Norte de Santander             |                     1
 Zabul                          |                     1
 Macenta                        |                     1
 Soum                           |                     1
 Baluchistan                    |                     1
 Barinas                        |                     1
 Rhone-Alpes                    |                     1
 Cartago                        |                     1
 Girona                         |                     1
 Pays-de-la-Loire               |                     1
 Saint Lawrence                 |                     1
 Chisinau                       |                     1
 Korjakija                      |                     1
 Gagauzia                       |                     1
 Salzburg                       |                     1
 Grand Bahama                   |                     1
 Houet                          |                     1
 Mahakali                       |                     1
 Guayama                        |                     1
 A'ali-an-Nil                   |                     1
 Vidin                          |                     1
 Sassari                        |                     1
 Craven Arms                    |                     1
 Wilaya de Casablanca           |                     1
 Flintshire                     |                     1
 New Ireland                    |                     1
 Vlore                          |                     1
 Yona                           |                     1
 Amambay                        |                     1
 Kastamonu                      |                     1
 Pskov                          |                     1
 Sanliurfa                      |                     1
 Sarawak                        |                     1
 Zaporizhia                     |                     1
 Osterode                       |                     1
 Poni                           |                     1
 Lac                            |                     1
 Yasothon                       |                     1
 Coyah                          |                     1
 Chungcheongbuk                 |                     1
 Valle                          |                     1
 Potenza                        |                     1
 Suphan Buri                    |                     1
 Cheshire                       |                     1
 Maharashtra                    |                     1
 Byumba                         |                     1
 Cambridgeshire                 |                     1
 Saint Sampson                  |                     1
 Mantova                        |                     1
 Douglas                        |                     1
 Forest                         |                     1
 Laois                          |                     1
 Gitarama                       |                     1
 South Caicos and East Caicos   |                     1
 Comunidad Autonoma de Cataluna |                     1
 Gjirokaster                    |                     1
 Razgrad                        |                     1
 Tuamotu                        |                     1
 Friuli-Venezia Giulia          |                     1
 Ebon                           |                     1
 Akwa Ibom                      |                     1
 Varna                          |                     1
 Chui                           |                     1
 Bandundu                       |                     1
 A Coruna                       |                     1
 Segovia                        |                     1
 Barbuda                        |                     1
 Muhafazat al Fayyum            |                     1
 Osijek-Baranja                 |                     1
 Western Cape                   |                     1
 Bangui                         |                     1
 Bundesland Steiermark          |                     1
 Mirkow                         |                     1
 Wanica                         |                     1
 Biella                         |                     1
 Balgowlah                      |                     1
 Ngiwal                         |                     1
 Loei                           |                     1
 Gangwon-do                     |                     1
 Lodzkie                        |                     1
 Tanga                          |                     1
 Si Sa Ket                      |                     1
 Templestowe                    |                     1
 Kozani                         |                     1
 Babil                          |                     1
 Rio Grande do Sul              |                     1
 Lika-Senj                      |                     1
 Nor urland vestra              |                     1
 Western Australia              |                     1
 Nassau                         |                     1
 National Capital District      |                     1
 at-Tarif                       |                     1
 Komilla                        |                     1
 Tinh Can Tho                   |                     1
 Boavista                       |                     1
 Kaheti                         |                     1
 Bohuslan                       |                     1
 Thuringia                      |                     1
 Vaisigano                      |                     1
 Shefa                          |                     1
 Cova Lima                      |                     1
 Sumatera Barat                 |                     1
 Debub-Keih-Bahri               |                     1
 Monte Carlo                    |                     1
 Saint Catherine                |                     1
 Zhytomyrs'ka                   |                     1
 Simbu                          |                     1
 Tete                           |                     1
 Pogradec                       |                     1
 Beijing Shi                    |                     1
 Binh Duong                     |                     1
 Coronie                        |                     1
 Basse-Normandie                |                     1
 Vermont                        |                     1
 Sachsen                        |                     1
 Penang                         |                     1
 Marlborough                    |                     1
 Prachin Buri                   |                     1
 Aragua                         |                     1
 Hidd                           |                     1
 Sancti Spiritus                |                     1
 Olomoucky Kraj                 |                     1
 Penza                          |                     1
 Heroldstatt                    |                     1
 Tatarstan                      |                     1
 Tokushima                      |                     1
 Guerrero                       |                     1
 Musandam                       |                     1
 Uruzgan                        |                     1
 Alpes-de-Haute-Provence        |                     1
 Haute-Loire                    |                     1
 Dong Nai                       |                     1
 Sabah                          |                     1
 Kemo                           |                     1
 Kabardino-Balkarija            |                     1
 Nakhon Ratchasima              |                     1
 Vestfir ir                     |                     1
 Guelmim                        |                     1
 Malopolskie                    |                     1
 Basse-Terre                    |                     1
 Tizi Wazu                      |                     1
 Sirajganj                      |                     1
 Land Sachsen                   |                     1
 Inhambane                      |                     1
 Erzincan                       |                     1
 Diekirch                       |                     1
 Binzart                        |                     1
 Carazo                         |                     1
 Chatswood                      |                     1
 Nassarawa                      |                     1
 Tver                           |                     1
 Thanh Pho Ho Chi Minh          |                     1
 Koprivnica-Krizhevci           |                     1
 Galapagos                      |                     1
 Chieti                         |                     1
 Lombardia                      |                     1
 Voronezh                       |                     1
 Kgalagadi South                |                     1
 al-Mafraq                      |                     1
 Kildare                        |                     1
 Houaphanh                      |                     1
 Cabo Delgado                   |                     1
 Caceres                        |                     1
 Manihiki                       |                     1
 Gabrovo                        |                     1
 Lecco Province                 |                     1
 Makamba                        |                     1
 al-Basrah                      |                     1
 Lunda Norte                    |                     1
 Mendoza                        |                     1
 Krasnojarsk                    |                     1
 Other Provinces                |                     1
 Birmingham                     |                     1
 Nukufetau                      |                     1
 Veliko Tarnovo                 |                     1
 Soria                          |                     1
 Val-de-Marne                   |                     1
 Al Buraimi                     |                     1
 Diyarbakir                     |                     1
 Gulbenes                       |                     1
 Mat                            |                     1
 Upper West                     |                     1
 Sabha                          |                     1
 Idlib                          |                     1
 Missouri                       |                     1
 Trenciansky                    |                     1
 Izmir                          |                     1
 South Dakota                   |                     1
 Comoe                          |                     1
 Mustaghanam                    |                     1
 Vava'u                         |                     1
 Mexico                         |                     1
 Mayotte                        |                     1
 Barcelona                      |                     1
 Naxcivan                       |                     1
 Zamora Chinchipe               |                     1
 Baja California                |                     1
 Mehedinti                      |                     1
 Uri                            |                     1
 al-Anbar                       |                     1
 Tov                            |                     1
 Saramacca                      |                     1
 Warwickshire                   |                     1
 Denguele                       |                     1
 Dagestan                       |                     1
 Vastmanland                    |                     1
 Nigde                          |                     1
 Ruhengeri                      |                     1
 Agrigento                      |                     1
 East Flanders                  |                     1
 Abyan                          |                     1
 Maniema                        |                     1
 Dordogne                       |                     1
 Treviso                        |                     1
 Amman                          |                     1
 Jabat                          |                     1
 Leraba                         |                     1
 Glarus                         |                     1
 Lobaye                         |                     1
 Xacmaz                         |                     1
 Jhanaydah                      |                     1
 Acores                         |                     1
 Heredia                        |                     1
 Mississippi                    |                     1
 Brava                          |                     1
 Saravan                        |                     1
 Rize                           |                     1
 Dayr-az-Zawr                   |                     1
 Yazd                           |                     1
 Los Santos                     |                     1
 Belfast                        |                     1
 Frenchs Forest                 |                     1
 Cote-d'Or                      |                     1
 Gaga'emauga                    |                     1
 Viqueque                       |                     1
 Tajmyrija                      |                     1
 Tlaxcala                       |                     1
 Ostergotland                   |                     1
 El Paraiso                     |                     1
 Calabria                       |                     1
 al-Balqa'                      |                     1
 Evenkija                       |                     1
 Igdir                          |                     1
 Gujarat                        |                     1
 Akershus                       |                     1
 Cuenca                         |                     1
 Bheri                          |                     1
 Dahuk                          |                     1
 Sangre Grande                  |                     1
 Gitega                         |                     1
 Arkadia                        |                     1
 Nomos Zakynthou                |                     1
 Grande-Terre                   |                     1
 ar-Rayyan                      |                     1
 Paktika                        |                     1
 Paraiba                        |                     1
 Samana                         |                     1
 Assaba                         |                     1
 Primorje                       |                     1
 Sawhaj                         |                     1
 Hhohho                         |                     1
 Serravalle                     |                     1
 Lahij                          |                     1
 Qaanaaq                        |                     1
 Novgorod                       |                     1
 Samut Sakhon                   |                     1
 Kwanza Norte                   |                     1
 Santa Rita                     |                     1
 Biale Blota                    |                     1
 Gorno-Badakhshan               |                     1
 Var                            |                     1
 Smolensk                       |                     1
 Kastoria                       |                     1
 Galati                         |                     1
 Maldonado                      |                     1
 Vorarlberg                     |                     1
 Kyoto                          |                     1
 Chuuk                          |                     1
 Cokato                         |                     1
 Miyazaki                       |                     1
 Kiritimati                     |                     1
 Plaines Wilhelm                |                     1
 Worcestershire                 |                     1
 Bahia                          |                     1
 La Guajira                     |                     1
 Tak                            |                     1
 Viangchan Prefecture           |                     1
 Bong                           |                     1
 Lerida                         |                     1
 San Fernando                   |                     1
 Carriacou-Petite Martinique    |                     1
 Swietokrzyskie                 |                     1
 al-Munastir                    |                     1
 Pella                          |                     1
 Mien Nui Va Trung Du           |                     1
 Dodekanisos                    |                     1
 Banaba                         |                     1
 Salaj                          |                     1
 Ha'il                          |                     1
 Manawatu-Wanganui              |                     1
 Liepajas                       |                     1
 Iringa                         |                     1
 Amnat Charoen                  |                     1
 Veraguas                       |                     1
 Brokopondo                     |                     1
 Tabiteuea South                |                     1
 Nakhon Phanom                  |                     1
 Lowa                           |                     1
 Upper Takutu-Upper Essequibo   |                     1
 Appenzell Inner-Rhoden         |                     1
 Brakna                         |                     1
 Ponce                          |                     1
 ash-Shati'                     |                     1
 Phitsanulok                    |                     1
 Tepelene                       |                     1
 Siguiri                        |                     1
 Gaaf Dhaal                     |                     1
 Ahaia                          |                     1
 Cuscatlan                      |                     1
 Izabal                         |                     1
 La Altagracia                  |                     1
 Overijssel                     |                     1
 North Rhine-Westphalia         |                     1
 Rimini                         |                     1
 Mahajanga                      |                     1
 Samara                         |                     1
 Guainia                        |                     1
 Valais                         |                     1
 Qacha's Nek                    |                     1
 Kayes                          |                     1
 Mullaitivu                     |                     1
 Strabane                       |                     1
 Mannarama                      |                     1
 Hebei                          |                     1
 Ajman                          |                     1
 Catamarca                      |                     1
 Oueme                          |                     1
 Andros                         |                     1
 Fukui                          |                     1
 Laxey                          |                     1
 Yozgat                         |                     1
 Neubeuern                      |                     1
 Lappi                          |                     1
 Canterbury                     |                     1
 Litoral                        |                     1
 Sofala                         |                     1
 Kachin                         |                     1
 Roscommon                      |                     1
 Shiauliu                       |                     1
 Rivers                         |                     1
 Maradi                         |                     1
 Kempton Park                   |                     1
 Lefkosa                        |                     1
 Guera                          |                     1
 al-'Aziziyah                   |                     1
 Souss Massa-Draa               |                     1
 Taegu                          |                     1
 Narayanganj                    |                     1
 Priaraks                       |                     1
 Bakol                          |                     1
 Trnavsky                       |                     1
 Adiyaman                       |                     1
 Tarabulus                      |                     1
 Tashigang                      |                     1
 Nanortalik                     |                     1
 Atlantico Sur                  |                     1
 Jinotega                       |                     1
 al-Mahdiyah                    |                     1
 Masvingo                       |                     1
 Fargona                        |                     1
 Hedmark                        |                     1
 Brikama                        |                     1
 Algiers                        |                     1
 Greater Accra                  |                     1
 Sisak-Moslavina                |                     1
 Narsaq                         |                     1
 Krakow                         |                     1
 Hiiu                           |                     1
 Temotu                         |                     1
 Duyen Hai Mien Trung           |                     1
 Oost-Vlaanderen                |                     1
 Castries                       |                     1
 Tarragona                      |                     1
 Ordu                           |                     1
 al-Jabal al Akhdar             |                     1
 Madaba                         |                     1
 Cher                           |                     1
 al-Bayadh                      |                     1
 Chobe                          |                     1
 Santander                      |                     1
 Nuuk                           |                     1
 Chaiyaphum                     |                     1
 Udmurtija                      |                     1
 Montevideo                     |                     1
 Klaksvik                       |                     1
 Pas-de-Calais                  |                     1
 Alessandria                    |                     1
 Harghita                       |                     1
 Bouvet Island                  |                     1
 Dubai                          |                     1
 al-Bayda                       |                     1
 Saone-et-Loire                 |                     1
 Fthiotis                       |                     1
 Frederiksborg                  |                     1
 al-Ismailiyah                  |                     1
 Ventspils                      |                     1
 Bacau                          |                     1
 Smirice                        |                     1
 Esteli                         |                     1
 Manatuto                       |                     1
 Midyah                         |                     1
 Nahouri                        |                     1
 Waterford                      |                     1
 Salmiya                        |                     1
 Jujuy                          |                     1
 Otdar Mean Chey                |                     1
 Logone Occidental              |                     1
 Morbihan                       |                     1
 Alto Paraguay                  |                     1
 Chari-Baguirmi                 |                     1
 El Oro                         |                     1
 Conakry                        |                     1
 Jessor                         |                     1
 Messinia                       |                     1
 Kigali-ngali                   |                     1
 Meherpur                       |                     1
 Mulfingen                      |                     1
 al-Qunaytirah                  |                     1
 Novokusnezk                    |                     1
 Nagorni-Qarabax                |                     1
 Selenge                        |                     1
 Jihomoravsky                   |                     1
 Swains Island                  |                     1
 Melaka                         |                     1
 Bayelsa                        |                     1
 Kalasin                        |                     1
 al-Muharraq                    |                     1
 Nara                           |                     1
 ar-Raqqah                      |                     1
 North East                     |                     1
 Lebap                          |                     1
 Wonju                          |                     1
 Ubon Ratchathani               |                     1
 Manama                         |                     1
 Onchan                         |                     1
 Navarra                        |                     1
 Arecibo                        |                     1
 Novosibirsk                    |                     1
 Kjustendil                     |                     1
 Rum Cay                        |                     1
 Otago                          |                     1
 Anse-la-Raye                   |                     1
 Central Mahalapye              |                     1
 Crozet Islands                 |                     1
 New Jersey                     |                     1
 Umm al Qaywayn                 |                     1
 Sirvan                         |                     1
 La Trinite                     |                     1
 Drenthe                        |                     1
 Stepanakert                    |                     1
 Kent                           |                     1
 Eschen                         |                     1
 Imereti                        |                     1
 Karonga                        |                     1
 Perlis                         |                     1
 Janub Darfur                   |                     1
 Bekes                          |                     1
 Khawst                         |                     1
 Kassala                        |                     1
 Keski-Suomi                    |                     1
 Bergamo                        |                     1
 Okayama                        |                     1
 Tripolitania                   |                     1
 Kobenhavns Amt                 |                     1
 Kagoshima                      |                     1
 Anse Royale                    |                     1
 Sarande                        |                     1
 Banghazi                       |                     1
 Sharq-al-Istiwa'iyah           |                     1
 Silistra                       |                     1
 Tottori                        |                     1
 Sichuan                        |                     1
 Argyll                         |                     1
 Scottish Borders               |                     1
 Tamuning                       |                     1
 al-Farwaniyah                  |                     1
 Nebraska                       |                     1
 Lecce                          |                     1
 Zacatecas                      |                     1
 al-Ghuwayriyah                 |                     1
 Rapla                          |                     1
 Spodnjeposavska                |                     1
 London                         |                     1
 Benedikt                       |                     1
 Alacant                        |                     1
 South Carolina                 |                     1
 Kwara                          |                     1
 Iles                           |                     1
 Beni                           |                     1
 Tatawin                        |                     1
 'Ali Sabih                     |                     1
 Nsanje                         |                     1
 Pais Vasco                     |                     1
 Collingwood                    |                     1
 Risaralda                      |                     1
 Hannover                       |                     1
 an-Najaf                       |                     1
 Sint Eustatius                 |                     1
 Qabis                          |                     1
 Kalimantan Timur               |                     1
 Sublimity                      |                     1
 Caaguazu                       |                     1
 Rhineland-Palatinate           |                     1
 Glencoe                        |                     1
 Phatthalung                    |                     1
 Canakkale                      |                     1
 Valle d'Aosta                  |                     1
 Kratovo                        |                     1
 Korakalpogiston                |                     1
 Vallee du Bandama              |                     1
 Kolda                          |                     1
 Savoie                         |                     1
 Alberta                        |                     1
 Nelson                         |                     1
 Kelantan                       |                     1
 Rigas                          |                     1
 Villa Clara                    |                     1
 Jigjiga                        |                     1
 Jidd Hafs                      |                     1
 Morbio Inferiore               |                     1
 Tobago                         |                     1
 Gavleborg                      |                     1
 Campania                       |                     1
 Vizcaya                        |                     1
 Møre og Romsdal                |                     1
 Xianggang                      |                     1
 Maluku Utara                   |                     1
 Mohafazat Liban-Nord           |                     1
 Liguria                        |                     1
 Guadalajara                    |                     1
 Karlovarsky                    |                     1
 Logone Oriental                |                     1
 Aswan                          |                     1
 Ganca                          |                     1
 Inarajan                       |                     1
 Holguin                        |                     1
 Northern Savonia               |                     1
 Mwali                          |                     1
 Nor urland eystra              |                     1
 Dundgovi                       |                     1
 Braila                         |                     1
 Dunbartonshire                 |                     1
 Metropolitana                  |                     1
 Fes-Boulemane                  |                     1
 Aberdeen                       |                     1
 Antsiranana                    |                     1
 Malaga                         |                     1
 Christchurch                   |                     1
 Giresun                        |                     1
 Durango                        |                     1
 Tibazah                        |                     1
 Nord-Pas-de-Calais             |                     1
 Gyeongsang                     |                     1
 Tiris Zammur                   |                     1
 Mactan                         |                     1
 Alderney                       |                     1
 Clervaux                       |                     1
 Ha                             |                     1
 Imbabura                       |                     1
 Haute-Savoie                   |                     1
 Manus                          |                     1
 Pyrenees-Atlantiques           |                     1
 Lot                            |                     1
 San Vicente                    |                     1
 Munshiganj                     |                     1
 Mazandaran                     |                     1
 Modena                         |                     1
 Constanta                      |                     1
 Pazardzhik                     |                     1
 Mopti                          |                     1
 Janin                          |                     1
 Avila                          |                     1
 Mbeya                          |                     1
 Vas                            |                     1
 Yucatan                        |                     1
 Irkutsk                        |                     1
 Tirol                          |                     1
 Benishangul                    |                     1
 Milah                          |                     1
 Nitriansky                     |                     1
 Etela-Suomen Laani             |                     1
 Ubuk                           |                     1
 Wiltz                          |                     1
 Bouenza                        |                     1
 Rymanowska                     |                     1
 Mahilyowskaya Voblasts         |                     1
 Feni                           |                     1
 Blidah                         |                     1
 Gifu                           |                     1
 Sudogwon                       |                     1
 Medfield                       |                     1
 Rajshahi                       |                     1
 Chhukha                        |                     1
 Pando                          |                     1
 Rusayl                         |                     1
 North Eastern Province         |                     1
 Minas Gerais                   |                     1
 Los Rios                       |                     1
 Kerry                          |                     1
 Nawakshut                      |                     1
 Wyoming                        |                     1
 Ghalizan                       |                     1
 Cavan                          |                     1
 Bat Dambang                    |                     1
 az-Zarqa'                      |                     1
 Rangamati                      |                     1
 Imathia                        |                     1
 Tarawa South                   |                     1
 Diffa                          |                     1
 Nawabganj                      |                     1
 Janub Kurdufan                 |                     1
 Jambol                         |                     1
 Nordrhein-Westfalen            |                     1
 Antioquia                      |                     1
 Appenzell-Ausser Rhoden        |                     1
 Magellanes                     |                     1
 Qaqortoq                       |                     1
 Telsiai                        |                     1
 Anse Boileau                   |                     1
 Abidjan                        |                     1
 Limon                          |                     1
 Vinica                         |                     1
 Aileu                          |                     1
 Ramey                          |                     1
 Slavonski Brod-Posavina        |                     1
 Chungnam                       |                     1
 Styria                         |                     1
 gwangyoksi                     |                     1
 Ayion Oros                     |                     1
 Suceava                        |                     1
 Apure                          |                     1
 Akmecet                        |                     1
 Surrey                         |                     1
 Zakinthos                      |                     1
 Omsk                           |                     1
 Nonthaburi                     |                     1
 Mus                            |                     1
 Aizkraukles                    |                     1
 Mudug                          |                     1
 Harar                          |                     1
 Shaviyani                      |                     1
 Chungcheongnam                 |                     1
 Acre                           |                     1
 Kortenberg                     |                     1
 Treinta y Tres                 |                     1
 al-Wadi al-Jadid               |                     1
 Florina                        |                     1
 Balvu                          |                     1
 Canillo                        |                     1
 Telshiu                        |                     1
 Krung Thep                     |                     1
 Osh                            |                     1
 Lorraine                       |                     1
 Taurages                       |                     1
 Sofijska oblast                |                     1
 Leribe                         |                     1
 Vercelli                       |                     1
 West Midlands                  |                     1
 Limerick                       |                     1
 Trimble                        |                     1
 Sacatepequez                   |                     1
 Botosani                       |                     1
 Saint-Louis                    |                     1
 Krasnodar                      |                     1
 Fogo                           |                     1
 Zacapa                         |                     1
 Bahoruco                       |                     1
 Upper Normandy                 |                     1
 Riau                           |                     1
 Cuneo                          |                     1
 Fianarantsoa                   |                     1
 Streymoy                       |                     1
 Sala Al Jadida                 |                     1
 Cartoceto                      |                     1
 San Marino                     |                     1
 Berry Islands                  |                     1
 Burdur                         |                     1
 Cuyuni-Mazaruni                |                     1
 Cocle                          |                     1
 Yukon                          |                     1
 Baranya                        |                     1
 Noakhali                       |                     1
 Fejer                          |                     1
 Kucove                         |                     1
 Esfahan                        |                     1
 Vargas                         |                     1
 Ma'rib                         |                     1
 Kvemo Kartli                   |                     1
 Alta Verapaz                   |                     1
 Ludzas                         |                     1
 Charlotte                      |                     1
 Ulaanbaatar                    |                     1
 Northern Areas                 |                     1
 al-Qadarif                     |                     1
 Nugal                          |                     1
 Vaucluse                       |                     1
 at-Tafilah                     |                     1
 Saint Michael                  |                     1
 Llanymynech                    |                     1
 Nong Bua Lam Phu               |                     1
 Magway                         |                     1
 Friesland                      |                     1
 Pays de la Loire               |                     1
 Dambovita                      |                     1
 Bjelovar-Bilogora              |                     1
 Somali                         |                     1
 Tambacounda                    |                     1
 Banadir                        |                     1
 Tougue                         |                     1
 Mie                            |                     1
 Qunduz                         |                     1
 al-Jizah                       |                     1
 Masilah                        |                     1
 Peel                           |                     1
 Kaohsiung Hsien                |                     1
 Muhafazat al Gharbiyah         |                     1
 Fyn                            |                     1
 Sjaelland                      |                     1
 Hentij                         |                     1
 Sanag                          |                     1
 Comunidad Autonoma de Canarias |                     1
 Bagmati                        |                     1
 Adamawa                        |                     1
 Ica                            |                     1
 Ehime                          |                     1
 Settat                         |                     1
 Mayaguez-Aguadilla             |                     1
 Islas de la Bahia              |                     1
 Kwangju                        |                     1
 Free State                     |                     1
 Keski-Pohjanmaa                |                     1
 Sogn og Fjordane               |                     1
 Dhaka                          |                     1
 Saitama                        |                     1
 Tanintharyi                    |                     1
 Afar                           |                     1
 Saarijarvi                     |                     1
 Taraba                         |                     1
 Vestfold                       |                     1
 Saint Mary Cayon               |                     1
 Chiang Mai                     |                     1
 Roskilde                       |                     1
 Hidalgo                        |                     1
 Hamilton                       |                     1
 Kramerville                    |                     1
 Table View                     |                     1
 Trujillo                       |                     1
 Etela-Savo                     |                     1
 Offaly                         |                     1
 Ram Allah wal-Birah            |                     1
 Konya                          |                     1
 Jaroslavl                      |                     1
 Dong Bang Song Hong            |                     1
 Delvine                        |                     1
 Talme Elazar                   |                     1
 Federacija Bosna i Hercegovina |                     1
 Rio de Janeiro                 |                     1
 Aichi                          |                     1
 Jurmala City                   |                     1
 Hanover                        |                     1
 Malomice                       |                     1
 Graubunden                     |                     1
 Yatenga                        |                     1
 Tangier-Tetouan                |                     1
 Kuria                          |                     1
 Antofagasta                    |                     1
 Basse-Kotto                    |                     1
 Kasai-Oriental                 |                     1
 Fria                           |                     1
 Kedah                          |                     1
 Varmland                       |                     1
 Tambov                         |                     1
 Haute-Kotto                    |                     1
 Mayo-Kebbi                     |                     1
 Heilongjiang                   |                     1
 Canar                          |                     1
 Vaud                           |                     1
 Denizli                        |                     1
 Valladolid                     |                     1
 Anhui Sheng                    |                     1
 Dhi Qar                        |                     1
 Sumatera Selatan               |                     1
 Al Khobar                      |                     1
 Tucuman                        |                     1
 Bicol                          |                     1
 Rostov                         |                     1
 Fa'asaleleaga                  |                     1
 Woqoyi Galbed                  |                     1
 Malatya                        |                     1
 Karnataka                      |                     1
 Buri Ram                       |                     1
 Prince Edward Island           |                     1
 Xanthi                         |                     1
 Puno                           |                     1
 Gegharkunik                    |                     1
 Estuaire                       |                     1
 Maiana                         |                     1
 Maekel                         |                     1
 Vauffelin                      |                     1
 Afyon                          |                     1
 Torino                         |                     1
 Kemerovo                       |                     1
 Kafr-ash-Shaykh                |                     1
 Arad                           |                     1
 Agneby                         |                     1
 Bogota                         |                     1
 Saint Peter Basseterre         |                     1
 Loir-et-Cher                   |                     1
 Sodermanland                   |                     1
 Ontustik Kazakstan             |                     1
 Merseyside                     |                     1
 Bulawayo                       |                     1
 England                        |                     1
 Sector claimed by Argentina/Ch |                     1
 Oblast Sofiya-Grad             |                     1
 Ouaka                          |                     1
 Aleppo                         |                     1
 Muhafazat ad Daqahliyah        |                     1
 Orne                           |                     1
 Penghu                         |                     1
 Qalqilya                       |                     1
 Cosenza                        |                     1
 Araucania                      |                     1
 Burgundy                       |                     1
 Rogaland                       |                     1
 Heard and McDonald Islands     |                     1
 Mono                           |                     1
 Jawzjan                        |                     1
 Sao Tiago                      |                     1
 Aomori                         |                     1
 Sokoto                         |                     1
 Ninawa                         |                     1
 Ariha                          |                     1
 Thesprotia                     |                     1
 Udine                          |                     1
 Nenets                         |                     1
 Lankaran                       |                     1
 Donga                          |                     1
 Central Luzon                  |                     1
 Southern Savonia               |                     1
 Evia                           |                     1
 Vesturland                     |                     1
 Outer Harbour                  |                     1
 Lori                           |                     1
 Chernihivs'ka                  |                     1
 Ohangwena                      |                     1
 East New Britain               |                     1
 Margibi                        |                     1
 Faridpur                       |                     1
 Galgudug                       |                     1
 Sinop                          |                     1
 Aisne                          |                     1
 Iraklion                       |                     1
 Chachoengsao                   |                     1
 Tocantins                      |                     1
 Phongsaly                      |                     1
 Merizo                         |                     1
 Nicosia District               |                     1
 Sukhothai                      |                     1
 Mafeteng                       |                     1
 Banskobystricky                |                     1
 Kumamoto                       |                     1
 Brazzaville                    |                     1
 Yalova                         |                     1
 Brechin                        |                     1
 Kagera                         |                     1
 Yigo                           |                     1
 Phalombe                       |                     1
 Alif Alif                      |                     1
 Markazi                        |                     1
 Burgas                         |                     1
 Arima-Tunapuna-Piarco          |                     1
 Trinity                        |                     1
 Landes                         |                     1
 Ngobe Bugle                    |                     1
 Aude                           |                     1
 Wilayat al Khartum             |                     1
 Khomas                         |                     1
 Haute-Garonne                  |                     1
 Alytaus                        |                     1
 Chimborazo                     |                     1
 Qandahar                       |                     1
 Distrito de Viana do Castelo   |                     1
 Changwat Chaiyaphum            |                     1
 Lindi                          |                     1
 Derby                          |                     1
 Canelones                      |                     1
 Government controlled area     |                     1
 Qina                           |                     1
 Tolna                          |                     1
 Punakha                        |                     1
 Agat                           |                     1
 Haute-Marne                    |                     1
 Sistan-e Baluchestan           |                     1
 Shabwah                        |                     1
 Australian Capital Territory   |                     1
 Yapanaya                       |                     1
 Sakon Nakhon                   |                     1
 Haut-Sassandra                 |                     1
 Buzau                          |                     1
 Jeju-Si                        |                     1
 Eastern Visayas                |                     1
 Svalbard                       |                     1
 Aguascalientes                 |                     1
 Comayagua                      |                     1
 Panevezys                      |                     1
 Karagandi                      |                     1
 Vaduz                          |                     1
 Vianden                        |                     1
 Goias                          |                     1
 Gouvernorat de Ariana          |                     1
 Halandri                       |                     1
 Maha Sarakham                  |                     1
 Niuas                          |                     1
 Kerewan                        |                     1
 L'vivs'ka                      |                     1
 al-Khawr                       |                     1
 Nantou                         |                     1
 Kanta-Hame                     |                     1
 Mangochi                       |                     1
 Cunene                         |                     1
 Jutiapa                        |                     1
 Manica                         |                     1
 Coahuila                       |                     1
 Lusaka                         |                     1
 Saldus                         |                     1
 Cerro Largo                    |                     1
 Haryana                        |                     1
 Lakshmipur                     |                     1
 Oxford                         |                     1
 Republika Srpska               |                     1
 Delchevo                       |                     1
 Demir Hisar                    |                     1
 Kardzhali                      |                     1
 Vasternorrland                 |                     1
 Jannnali                       |                     1
 Ioba                           |                     1
 Saltsjo-Boo                    |                     1
 Tula                           |                     1
 Saint John Capesterre          |                     1
 Tuscany                        |                     1
 Nuristan                       |                     1
 Comunidad Autonoma de las Isla |                     1
 Nzerekore                      |                     1
 Gard                           |                     1
 Rotanak Kiri                   |                     1
 Hazafon                        |                     1
 al-Jumayliyah                  |                     1
 Viborg                         |                     1
 Butha-Buthe                    |                     1
 Herat                          |                     1
 Serbia                         |                     1
 Mirdite                        |                     1
 Padova                         |                     1
 Ireland                        |                     1
 Kochani                        |                     1
 Northern Taiwan                |                     1
 Marowijne                      |                     1
 Gilan                          |                     1
 Sfax                           |                     1
 Sao Nicolau                    |                     1
 Gorizia                        |                     1
 Valmieras                      |                     1
 Aberdeenshire                  |                     1
 Oberosterreich                 |                     1
 Niedersachsen                  |                     1
 Oujda                          |                     1
 Ust-Orda                       |                     1
 Makira and Ulawa               |                     1
 Sulawesi Tengah                |                     1
 Thaba-Tseka                    |                     1
 Jhalakati                      |                     1
 Moyen-Chari                    |                     1
 Hamgyeongbukto                 |                     1
 Pyrenees-Orientales            |                     1
 Wisconsin                      |                     1
 Domagnano                      |                     1
 Creuse                         |                     1
 Ungheni                        |                     1
 Lazio                          |                     1
 Hanoi                          |                     1
 Badgis                         |                     1
 Mulanje                        |                     1
 Kenitra                        |                     1
 Quiche                         |                     1
 Has                            |                     1
 Louth                          |                     1
 Amparai                        |                     1
 Bourgogne                      |                     1
 Usulutan                       |                     1
 'Ayn Daflah                    |                     1
 Ardennes                       |                     1
 Osun                           |                     1
 Warsaw                         |                     1
 Rajbari                        |                     1
 Tierra del Fuego               |                     1
 Cundinamarca                   |                     1
 Daman and Diu                  |                     1
 Port Louis                     |                     1
 Colombo                        |                     1
 Janjanbureh                    |                     1
 al-Iskandariyah                |                     1
 Salcedo                        |                     1
 Hessen                         |                     1
 Totonicapan                    |                     1
 Saint Anne Sandy Point         |                     1
 Lamphun                        |                     1
 Sirnak                         |                     1
 Crimea                         |                     1
 Krong Kaeb                     |                     1
 Airai                          |                     1
 Lhuntshi                       |                     1
 North-West Frontier            |                     1
 Sawfajjin                      |                     1
 al-Fayyum                      |                     1
 Uppsala                        |                     1
 Jiangsu                        |                     1
 Caldas                         |                     1
 Atacora                        |                     1
 Zlinsky                        |                     1
 Chihuahua                      |                     1
 Ruse                           |                     1
 Korinthia                      |                     1
 Quthing                        |                     1
 Tiyarat                        |                     1
 Kansas                         |                     1
 Gostivar                       |                     1
 Ghazzah ash-Shamaliyah         |                     1
 Kirsehir                       |                     1
 Chubut                         |                     1
 Ailinlaplap                    |                     1
 Managua                        |                     1
 Ruyigi                         |                     1
 Gullbringusysla                |                     1
 Kirikkale                      |                     1
 al-Karak                       |                     1
 al-Buhayrat                    |                     1
 Ghadamis                       |                     1
 Haifa District                 |                     1
 Xiang Khuang                   |                     1
 Lleida                         |                     1
 Tubas                          |                     1
 Gorishka                       |                     1
 Gibraltar                      |                     1
 Ternopil's'ka                  |                     1
 Geylegphug                     |                     1
 Gagaifomauga                   |                     1
 Piacenza                       |                     1
 Chai Nat                       |                     1
 Ile-de-France                  |                     1
 Arizona                        |                     1
 Kerala                         |                     1
 Gyeongsangnam-do               |                     1
 Poznan                         |                     1
 Beirut                         |                     1
 Pahang                         |                     1
 Fife                           |                     1
 Couffo                         |                     1
 Land Baden-Wurttemberg         |                     1
 Kefallinia                     |                     1
 al-Fatih                       |                     1
 Preah Vihear                   |                     1
 Tehran                         |                     1
 Chin                           |                     1
 Alentejo                       |                     1
 Delta                          |                     1
 West Yorkshire                 |                     1
 Jarva                          |                     1
 Dziekanow Lesny                |                     1
 Magnisia                       |                     1
 Taichung                       |                     1
 Barrigada                      |                     1
 Shemgang                       |                     1
 Cambridge                      |                     1
 Vale                           |                     1
 Vest-Agder                     |                     1
 Brong-Ahafo                    |                     1
 Wales                          |                     1
 Raa                            |                     1
 Nukulaelae                     |                     1
 Texas                          |                     1
 Dnipropetrovska                |                     1
 Guangdong                      |                     1
 Brod                           |                     1
 Sardegna                       |                     1
 Gers                           |                     1
 Karditsa                       |                     1
 Kasungu                        |                     1
 Saare                          |                     1
 Indre                          |                     1
 Grouville                      |                     1
 Finnmark                       |                     1
 Saint George's                 |                     1
 Kendal                         |                     1
 Krong Pailin                   |                     1
 Mishref                        |                     1
 Manitoba                       |                     1
 Maio                           |                     1
 Veles                          |                     1
 Wele-Nzas                      |                     1
 Riga                           |                     1
 Lagos                          |                     1
 Catania                        |                     1
 Kyyiv                          |                     1
 Santa Cruz de Tenerife         |                     1
 Sissili                        |                     1
 Federal Capital Area           |                     1
 Oro                            |                     1
 kadawatha                      |                     1
 Choluteca                      |                     1
 Lubombo                        |                     1
 Arequipa                       |                     1
 Opolskie                       |                     1
 Bourkou-Ennedi-Tibesti         |                     1
 Singida                        |                     1
 Cork                           |                     1
 Cluj                           |                     1
 Maimansingh                    |                     1
 Obwalden                       |                     1
 Sao Vicente                    |                     1
 Rabat-Sale-Zammour-Zaer        |                     1
 Wroclaw                        |                     1
 Nakhon Si Thammarat            |                     1
 Benelux                        |                     1
 Didcot                         |                     1
 Koror                          |                     1
 Vendee                         |                     1
 Phra Nakhon Si Ayutthaya       |                     1
 Zurich                         |                     1
 Xinjiang                       |                     1
 Karsiyaka                      |                     1
 East Midlands                  |                     1
 Pinar del Rio                  |                     1
 Oriental                       |                     1
 Carabobo                       |                     1
 Carole Park                    |                     1
 Sud-Kivu                       |                     1
 Daugavpils                     |                     1
 Rio San Juan                   |                     1
 Luzon                          |                     1
 Chuadanga                      |                     1
 Mayenne                        |                     1
 Doha                           |                     1
 Oregon                         |                     1
 Piraios                        |                     1
 Samos                          |                     1
 Curacao                        |                     1
 Koroshka                       |                     1
 Monmouthshire                  |                     1
 Kampong Thum                   |                     1
 Qasigiannguit                  |                     1
 Ourense                        |                     1
 Le Castellet                   |                     1
 Chikwawa                       |                     1
 Prey Veaeng                    |                     1
 Kirundo                        |                     1
 Laam                           |                     1
 Donegal                        |                     1
 Bolikhamsay                    |                     1
 Sikasso                        |                     1
 Natwar                         |                     1
 Alvsborgs Lan                  |                     1
 Luanda                         |                     1
 Ngounie                        |                     1
 Hormozgan                      |                     1
 Chisinau Oras                  |                     1
 Sidi ban-al-'Abbas             |                     1
 Lanarkshire                    |                     1
 Middlesex                      |                     1
 Vlaams-Brabant                 |                     1
 Herault                        |                     1
 Lombardy                       |                     1
 Samut Songkhran                |                     1
 Halland                        |                     1
 Beyla                          |                     1
 Tangayal                       |                     1
 al-Khums                       |                     1
 Enga                           |                     1
 Southwell                      |                     1
 Brabant                        |                     1
 Qustantinah                    |                     1
 Aveyron                        |                     1
 Ramsey                         |                     1
 Balti                          |                     1
 Karotegin                      |                     1
 Couva-Tabaquite-Talparo        |                     1
 Banteay Mean Chey              |                     1
 Odessa                         |                     1
 Sums'ka                        |                     1
 Roma                           |                     1
 Perm                           |                     1
 Chiquimula                     |                     1
 Kampong Spoeu                  |                     1
 Hopowo                         |                     1
 Mersch                         |                     1
 Meurthe-et-Moselle             |                     1
 Saint Barthelemy               |                     1
 Kunar                          |                     1
 Borsod-Abauj-Zemplen           |                     1
 Marakei                        |                     1
 Jaluit                         |                     1
 Bingol                         |                     1
 Illinois                       |                     1
 Bujumbura                      |                     1
 Manzini                        |                     1
 Cantal                         |                     1
 Morona Santiago                |                     1
 Yilan                          |                     1
 Zeeland                        |                     1
 Wellington                     |                     1
 Jharkhand                      |                     1
 Homjel'                        |                     1
 Montegiardino                  |                     1
 Aisen                          |                     1
 Worodougou                     |                     1
 Evvoia                         |                     1
 as-Suways                      |                     1
 Avellino                       |                     1
 Alpes-Cote dAzur               |                     1
 Mayfair                        |                     1
 Zuid-Holland                   |                     1
 Siparia                        |                     1
 Shimane                        |                     1
 Saga                           |                     1
 Kronoberg                      |                     1
 Sligo                          |                     1
 Odisha                         |                     1
 Hadaron                        |                     1
 Buhoro                         |                     1
 Kurigram                       |                     1
 Klaipedos                      |                     1
 Jiangsu Sheng                  |                     1
 Pyeonganbukto                  |                     1
 Addis Abeba                    |                     1
 Pedernales                     |                     1
 Sidi Bu Zayd                   |                     1
 Fontvieille                    |                     1
 Gharb-Chrarda-Beni Hssen       |                     1
 Telangana                      |                     1
 Kuntaur                        |                     1
 Norfolk                        |                     1
 West Greece                    |                     1
 Gros Inlet                     |                     1
 Aomen                          |                     1
 Zaghwan                        |                     1
 Bougouriba                     |                     1
 Gorontalo                      |                     1
 La Condamine                   |                     1
 Abruzzo                        |                     1
 Bayburt                        |                     1
 Johor                          |                     1
 New Jersy                      |                     1
 Alagoas                        |                     1
 Talas                          |                     1
 East Lothian                   |                     1
 Nilphamari                     |                     1
 Hainaut                        |                     1
 Butare                         |                     1
 Brest                          |                     1
 Copan                          |                     1
 Hawthorn                       |                     1
 Halkidiki                      |                     1
 Erbil                          |                     1
 Artvin                         |                     1
 Bagar Hat                      |                     1
 Me-Zochi                       |                     1
 Narora                         |                     1
 ad-Daqahliyah                  |                     1
 Redange                        |                     1
 Satkhira                       |                     1
 Atafu                          |                     1
 Stann Creek                    |                     1
 Fatick                         |                     1
 Drama                          |                     1
 Hwanghaebukto                  |                     1
 Georgia                        |                     1
 Gyeonggi-do                    |                     1
 Stredochesky                   |                     1
 Kenford                        |                     1
 Penal Debe                     |                     1
 Zavhan                         |                     1
 Kunene                         |                     1
 Cacheu                         |                     1
 Gombe                          |                     1
 Cajamarca                      |                     1
 Sughd                          |                     1
 Hamgyeongnamdo                 |                     1
 Qom                            |                     1
 Valverde                       |                     1
 Caras-Severin                  |                     1
 al-Hudaydah                    |                     1
 Sar-e Pul                      |                     1
 Erzurum                        |                     1
 Caserta                        |                     1
 Saint George Gingerland        |                     1
 Istra                          |                     1
 Tinduf                         |                     1
 Albi Le Sequestre              |                     1
 Luang Nam Tha                  |                     1
 Taipei Hsien                   |                     1
 Maha Nuwara                    |                     1
 Glocestershire                 |                     1
 Kanchanaburi                   |                     1
 Kanagawa                       |                     1
 Satakunta                      |                     1
 Land Nordrhein-Westfalen       |                     1
 Narsingdi                      |                     1
 Jalapa                         |                     1
 Capellen                       |                     1
 Basel-Landschaft               |                     1
 Los Lagos                      |                     1
 Jilin                          |                     1
 Rethimni                       |                     1
 Gao                            |                     1
 Oshana                         |                     1
 Medhimurje                     |                     1
 Su uroy                        |                     1
 Cedex                          |                     1
 Tyne and Wear                  |                     1
 Blantyre City                  |                     1
 Caulfield                      |                     1
 Passore                        |                     1
 Ribe                           |                     1
 Azuay                          |                     1
 an-Nil-al-Abyad                |                     1
 Bas-Rhin                       |                     1
 Tartu                          |                     1
 Haut-Mbomou                    |                     1
 Torshavn                       |                     1
 Mzuzu City                     |                     1
 Heraklion                      |                     1
 Soufriere                      |                     1
 ar-Riyad                       |                     1
 Huancavelica                   |                     1
 Andijon                        |                     1
 Arezzo                         |                     1
 Kouritenga                     |                     1
 Hordaland                      |                     1
 Trat                           |                     1
 Bengo                          |                     1
 Iasi                           |                     1
 Fermanagh                      |                     1
 Ogooue-Lolo                    |                     1
 Klagenfurt                     |                     1
 Amhara                         |                     1
 Bomi                           |                     1
 Omusati                        |                     1
 Jeonbuk                        |                     1
 Kuando-Kubango                 |                     1
 La Pampa                       |                     1
 Lekoumou                       |                     1
 Frycovice                      |                     1
 Waikato                        |                     1
 Uusimaa                        |                     1
 Corrientes                     |                     1
 Pozhega-Slavonija              |                     1
 Puerto Plata                   |                     1
 Murcia                         |                     1
 Kiklades                       |                     1
 Central Visayas                |                     1
 Taraclia                       |                     1
 Inagua Islands                 |                     1
 Lampang                        |                     1
 Qeqertarsuaq                   |                     1
 Bahr-al-Jabal                  |                     1
 Rakahanga                      |                     1
 Haut-Rhin                      |                     1
 Cremona                        |                     1
 Catalunya                      |                     1
 Savannakhet                    |                     1
 Gharb Darfur                   |                     1
 Veszprem                       |                     1
 al-Uqsur                       |                     1
 Komi                           |                     1
 Knoxfield                      |                     1
 Antwerpen                      |                     1
 Lola                           |                     1
 Misratah                       |                     1
 Darien                         |                     1
 Phetchabun                     |                     1
 Zondoma                        |                     1
 Tavastia Proper                |                     1
 Saint Peter Port               |                     1
 Suffolk                        |                     1
 Sagaing                        |                     1
 Sector claimed by Argentina/UK |                     1
 Wielkopolskie                  |                     1
 Arusha                         |                     1
 Vraca                          |                     1
 San Luis Potosi                |                     1
 Hardap                         |                     1
 Ancona                         |                     1
emilyd=> select rnavn, count(*) as antall_med_samme_navn
emilyd-> from Regioner
emilyd-> group by rnavn
emilyd-> having count(*) > 1
emilyd-> order by antall_med_samme_navn desc;
        rnavn        | antall_med_samme_navn 
---------------------+-----------------------
 Western             |                     9
 Central             |                     7
 Eastern             |                     7
 Saint George        |                     6
 Saint John          |                     6
 Northern            |                     6
 Saint Andrew        |                     5
 Centre              |                     5
 Distrito Federal    |                     4
 San Juan            |                     4
 Saint Peter         |                     4
 Nord                |                     4
 Amazonas            |                     4
 Saint Martin        |                     3
 Southern            |                     3
 Saint Thomas        |                     3
 Bolivar             |                     3
 La Paz              |                     3
 Gaza                |                     3
 Saint-Pierre        |                     3
 Sud                 |                     3
 Cordoba             |                     3
 Saint Patrick       |                     3
 Saint Mary          |                     3
 Ontario             |                     3
 al-Bahr-al-Ahmar    |                     2
 Vojvodina           |                     2
 Rio Negro           |                     2
 Armagh              |                     2
 Bari                |                     2
 Cordillera          |                     2
 Toledo              |                     2
 Saint Paul          |                     2
 Central Equatoria   |                     2
 Colon               |                     2
 Limburg             |                     2
 Misiones            |                     2
 Saint James         |                     2
 Saint Saviour       |                     2
 Huila               |                     2
 Mwanza              |                     2
 Adrar               |                     2
 South Georgia       |                     2
 Bethlehem           |                     2
 Kosovo and Metohija |                     2
 Para                |                     2
 Buxoro Viloyati     |                     2
 Western Province    |                     2
 Sucre               |                     2
 Utah                |                     2
 Sark                |                     2
 Østfold             |                     2
 Florida             |                     2
 Christmas Island    |                     2
 ash-Shamal          |                     2
 Noord-Holland       |                     2
 Littoral            |                     2
 Santa Cruz          |                     2
 Auckland            |                     2
 La Rioja            |                     2
 Saint Mark          |                     2
 Leon                |                     2
 Plateaux            |                     2
 Granada             |                     2
 Victoria            |                     2
 San Salvador        |                     2
 ash-Sharqiyah       |                     2
 Auvergne            |                     2
 Kangweon            |                     2
 Luxembourg          |                     2
 Schleswig-Holstein  |                     2
 Ouest               |                     2
 Montana             |                     2
 Manchester          |                     2
 Saint Philip        |                     2
 Saint David         |                     2
 San Jose            |                     2
 Savanes             |                     2
 Valletta            |                     2
 Amsterdam           |                     2
 La Libertad         |                     2
 Choiseul            |                     2
 Montenegro          |                     2
 Jura                |                     2
 Central Serbia      |                     2
 Punjab              |                     2
 Saint Joseph        |                     2
 Plateau             |                     2
(88 rows)

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
emilyd=> select R.rnavn, B.bid, count(*) as antall
emilyd-> from Regioner R natural join Byer B
emilyd-> group by R.rnavn  -- bare dette + agregeringsfunksjoner bak select
emilyd-> order by antall desc;
ERROR:  column "b.bid" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: select R.rnavn, B.bid, count(*) as antall
                        ^
emilyd=> select R.rnavn, count(*) as antall
emilyd-> from Regioner R natural join  Byer B
emilyd-> group by R.rnavn -- bare dette + agregeringsfunksjoner bak select
emilyd-> order by desc;
ERROR:  syntax error at or near "desc"
LINE 4: order by desc;
                 ^
emilyd=> select R.rnavn, count(*) as antall
emilyd-> from Regioner R natural join  Byer B
emilyd-> group by R.rnavn -- bare dette + agregeringsfunksjoner bak select
emilyd-> order by antll desc;
ERROR:  column "antll" does not exist
LINE 4: order by antll desc;
                 ^
emilyd=> select R.rnavn, count(*) as antall
emilyd-> from Regioner R natural join  Byer B
-> group by R.rnavn -- bare dette + agregeringsfunksjoner bak select
emilyd-> order by antall desc;
            rnavn            | antall 
-----------------------------+--------
 Tamil Nadu                  |    891
 Uttar Pradesh               |    688
 California                  |    585
 Punjab                      |    562
 England                     |    447
 West Bengal                 |    430
 Maharashtra                 |    410
 Madhya Pradesh              |    404
 Baden-Wurttemberg           |    359
 Nordrhein-Westfalen         |    349
 Florida                     |    334
 Karnataka                   |    325
 Gujarat                     |    317
 Ontario                     |    304
 Andhra Pradesh              |    294
 New York                    |    278
 Texas                       |    277
 Bayern                      |    274
 Illinois                    |    265
 Lombardia                   |    254
 Quebec                      |    251
emilyd=> 

