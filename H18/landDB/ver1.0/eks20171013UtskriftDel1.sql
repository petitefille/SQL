
emilyd=> select *
emilyd-> from Land L
emilyd-> where L.lkode not in (select kode from TallForLand);
 lkode |                lnavn
-------+--------------------------------------
 BV    | Bouvet Island
 TP    | East Timor
 XA    | External Territories of Australia
 GF    | French Guiana
 TF    | French Southern Territories
 GP    | Guadeloupe
 XU    | Guernsey and Alderney
 HM    | Heard and McDonald Islands
 XJ    | Jersey
 XM    | Man (Isle of)
 MQ    | Martinique
 NF    | Norfolk Island
 XG    | Smaller Territories of the UK
 GS    | South Georgia
 UM    | United States Minor Outlying Islands
 YU    | Yugoslavia
(16 rows)

emilyd=> select *
emilyd-> from TallForLand T
emilyd-> where T.kode not in (select lkode from Land);
 kode |   pop   |  km2  |       bnp
------+---------+-------+------------------
 CW   |  141766 |   444 | 5.6*1000000000
 TL   | 1154625 | 15007 | 6.129*1000000000
 GG   |   65228 |    78 | 2.742*1000000000
 IM   |   75049 |   572 | 4.076*1000000000
 JE   |   90812 |   116 | 5.1*1000000000
 XK   | 1800000 | 10887 | 7.15*1000000000
 ME   |  666730 | 14026 | 4.518*1000000000
 BL   |    8450 |    21 |
 MF   |   35925 |    53 | 561.5*1000000
 SX   |   37429 |    34 | 794.7*1000000
(10 rows)


emilyd=> select sum(pop)
emilyd-> from tallforland;
    sum
------------
 6859896329
(1 row)


emilyd=> select avg(pop)
emilyd-> from tallforland;
          avg
-----------------------
 28582901.370833333333
(1 row)


emilyd=> select T.pop, L.lnavn
emilyd-> from TallForLand T join Land L
emilyd->      on T.kode = L.lkode
emilyd-> where T.pop > 5 * ( select avg(pop)
emilyd(>                 from tallforland )
emilyd-> ;
    pop     |     lnavn
------------+---------------
  156118464 | Bangladesh
  201103330 | Brazil
 1330044000 | China
 1173108018 | India
  242968342 | Indonesia
  154000000 | Nigeria
  184404791 | Pakistan
  310232863 | United States
(8 rows)

emilyd=> select TFL.pop --, TFL.kode
emilyd->                         from tallforland TFL
emilyd->                         where TFL.km2 < 70000;
   pop
----------
  2986952
    57881
    84000
    13254
    86754
  2968000
    71566
   301790
   738004
   285653
 10403000
   314522
    65365
   699847
  4590000
     4000
    21730
   395027
  9863117
   508659
    44270

	
emilyd=> select max(TLF.pop)
emilyd-> from tallforland TLF
emilyd-> where TLF.km2 < 70000;
   max
----------
 22894384
(1 row)

emilyd=> select T.pop, L.lnavn
emilyd-> from TallForLand T join Land L
emilyd->     on T.kode = L.lkode
emilyd-> where T.pop > all (select TFL.pop--, TLF.kode
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000);
    pop     |              lnavn
------------+----------------------------------
   29121286 | Afghanistan
   34586184 | Algeria
   41343201 | Argentina
  156118464 | Bangladesh
  201103330 | Brazil
   33679000 | Canada
 1330044000 | China
   47790000 | Colombia
   70916439 | Democratic Republic Of The Congo
   80471869 | Egypt
   88013491 | Ethiopia
   64768389 | France
   81802257 | Germany
   24339838 | Ghana
 1173108018 | India
  242968342 | Indonesia
   76923300 | Iran
   29671605 | Iraq
   60340328 | Italy
  127288000 | Japan
   40046566 | Kenya


emilyd=> select T.pop, L.lnavn
emilyd-> from TallForLand T join Land L
emilyd->     on T.kode = L.lkode
emilyd-> where T.pop > (select max(TLF.pop)
emilyd(>                 from tallforland TLF
emilyd(>                 where TLF.km2 < 70000);
    pop     |              lnavn
------------+----------------------------------
   29121286 | Afghanistan
   34586184 | Algeria
   41343201 | Argentina
  156118464 | Bangladesh
  201103330 | Brazil
   33679000 | Canada
 1330044000 | China
   47790000 | Colombia
   70916439 | Democratic Republic Of The Congo
   80471869 | Egypt
   88013491 | Ethiopia
   64768389 | France
   81802257 | Germany
   24339838 | Ghana
 1173108018 | India
  242968342 | Indonesia
   76923300 | Iran
   29671605 | Iraq
   60340328 | Italy
  127288000 | Japan
   40046566 | Kenya

emilyd=> (select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>     on T.kode = L.lkode
emilyd(> where T.pop > all (select TFL.pop--, TLF.kode
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000))
emilyd-> except
emilyd->
emilyd-> (select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>     on T.kode = L.lkode
emilyd(> where T.pop > (select max(TLF.pop)
emilyd(>                 from tallforland TLF
emilyd(>                 where TLF.km2 < 70000));
 pop | lnavn
-----+-------
(0 rows)


 
emilyd=> (select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>     on T.kode = L.lkode
emilyd(> where T.pop > all (select TFL.pop--, TLF.kode
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000))
emilyd-> union
emilyd->
emilyd-> (select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>     on T.kode = L.lkode
emilyd(> where T.pop > (select max(TLF.pop)
emilyd(>                 from tallforland TLF
emilyd(>                 where TLF.km2 < 70000));
    pop     |              lnavn
------------+----------------------------------
 1330044000 | China
   48422644 | Korea South
   62348447 | United Kingdom
   28951852 | Nepal
  310232863 | United States
   22912177 | Korea North
   29121286 | Afghanistan
   29671605 | Iraq
   81802257 | Germany
  156118464 | Bangladesh
   38500000 | Poland
  154000000 | Nigeria
  127288000 | Japan
  140702000 | Russia
   27865738 | Uzbekistan
   46505963 | Spain
   60340328 | Italy
  184404791 | Pakistan
 1173108018 | India
   49000000 | South Africa
   33398682 | Uganda
-- (49 rows)  


emilyd=> (select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>     on T.kode = L.lkode
emilyd(> where T.pop > all (select TFL.pop--, TLF.kode
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000))
emilyd-> union all
emilyd->
emilyd-> (select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>     on T.kode = L.lkode
emilyd(> where T.pop > (select max(TLF.pop)
emilyd(>                 from tallforland TLF
emilyd(>                 where TLF.km2 < 70000));
    pop     |              lnavn
------------+----------------------------------
   29121286 | Afghanistan
   34586184 | Algeria
   41343201 | Argentina
  156118464 | Bangladesh
  201103330 | Brazil
   33679000 | Canada
 1330044000 | China
   47790000 | Colombia
   70916439 | Democratic Republic Of The Congo
   80471869 | Egypt
   88013491 | Ethiopia
   64768389 | France
   81802257 | Germany
   24339838 | Ghana
 1173108018 | India
  242968342 | Indonesia
   76923300 | Iran
   29671605 | Iraq
   60340328 | Italy
  127288000 | Japan
   40046566 | Kenya
-- (98 rows)


emilyd=> ( select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>      on T.kode = L.lkode
emilyd(> where T.pop > all ( select TFL.pop --, TFL.kode
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000) )
emilyd-> intersect
emilyd->
emilyd-> ( select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>      on T.kode = L.lkode
emilyd(> where T.pop >          ( select max(TFL.pop)
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000 ));
    pop     |              lnavn
------------+----------------------------------
   31627428 | Morocco
 1330044000 | China
   23495361 | Yemen
   48422644 | Korea South
   62348447 | United Kingdom
   28951852 | Nepal
  310232863 | United States
   22912177 | Korea North
   29121286 | Afghanistan
   29671605 | Iraq
   33679000 | Canada
   81802257 | Germany
  156118464 | Bangladesh
   38500000 | Poland
  242968342 | Indonesia
  154000000 | Nigeria
  127288000 | Japan
   64768389 | France
   24339838 | Ghana
  140702000 | Russia
   67089500 | Thailand
-- (49 rows)


emilyd=> ( select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>      on T.kode = L.lkode
emilyd(> where T.pop > all ( select TFL.pop --, TFL.kode
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000) )
emilyd-> intersect all
emilyd->
emilyd-> ( select T.pop, L.lnavn
emilyd(> from TallForLand T join Land L
emilyd(>      on T.kode = L.lkode
emilyd(> where T.pop >          ( select max(TFL.pop)
emilyd(>                         from tallforland TFL
emilyd(>                         where TFL.km2 < 70000 ));
    pop     |              lnavn
------------+----------------------------------
   31627428 | Morocco
 1330044000 | China
   23495361 | Yemen
   48422644 | Korea South
   62348447 | United Kingdom
   28951852 | Nepal
  310232863 | United States
   22912177 | Korea North
   29121286 | Afghanistan
   29671605 | Iraq
   33679000 | Canada
   81802257 | Germany
  156118464 | Bangladesh
   38500000 | Poland
  242968342 | Indonesia
  154000000 | Nigeria
  127288000 | Japan
   64768389 | France
   24339838 | Ghana
  140702000 | Russia
   67089500 | Thailand
 -- (49 rows)

 
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


emilyd=> select BD.navn, BD.pop
emilyd-> from Bydata BD
emilyd-> where BD.kode ='NO'
emilyd->       and BD.pop > any ( select B.pop
emilyd(>                          from Bydata B
emilyd(>                          where B.kode='IN' )
emilyd-> ;
     navn     |   pop
--------------+---------
 Arendal      |   30916
 Bærum        |  113659
 Hamar        |   29479
 Tønsberg     |   38914
 Gjøvik       | 20157.5
 Harstad      |   19203
 Ålesund      |   45377
 Sandnes      |   46911
 Drammen      | 85437.5
 Moss         | 35696.5
 Steinkjer    | 11193.5
 Mo i Rana    |   19131
 Narvik       | 19236.5
 Bodø         | 31383.5
 Haugesund    | 36219.5
 Stavanger    |  136999
 Skien        |   73330
 Alta         |   12077
 Molde        | 16171.5
 Lillehammer  |   19319
 Kristiansand |   58292
 
 -- (25 rows)
 
 emilyd=> select BD.navn, BD.pop
emilyd-> from Bydata BD
emilyd-> where BD.kode = 'NO'
emilyd-> and BD.pop = any (select B.pop
emilyd(>                   from Bydata B
emilyd(>                   where B.kode='IN');
 navn | pop
------+-----
(0 rows)

emilyd=> select BD.navn, BD.pop
emilyd-> from Bydata BD
emilyd-> where BD.kode = 'NO'
emilyd->     and BD.pop > some (select B.pop
emilyd(>                        from Bydata B
emilyd(>                        where B.kode='IN');
     navn     |   pop
--------------+---------
 Arendal      |   30916
 Bærum        |  113659
 Hamar        |   29479
 Tønsberg     |   38914
 Gjøvik       | 20157.5
 Harstad      |   19203
 Ålesund      |   45377
 Sandnes      |   46911
 Drammen      | 85437.5
 Moss         | 35696.5
 Steinkjer    | 11193.5
 Mo i Rana    |   19131
 Narvik       | 19236.5
 Bodø         | 31383.5
 Haugesund    | 36219.5
 Stavanger    |  136999
 Skien        |   73330
 Alta         |   12077
 Molde        | 16171.5
 Lillehammer  |   19319
 Kristiansand |   58292
 Tromsø       | 48900.5
 Trondheim    |  144336
 Bergen       |  200390
 Oslo         |  707500
(25 rows)


emilyd=> select BD.navn, BD.pop
emilyd-> from Bydata BD
emilyd-> where BD.kode ='IN'
emilyd->       and BD.pop = (select min(pop)
emilyd(>                     from Bydata
emilyd(>                     where kode = 'IN');
   navn    |  pop
-----------+-------
 Kavaratti | 10688
(1 row)

emilyd=> drop table if exists iso3166;
NOTICE:  table "iso3166" does not exist, skipping
DROP TABLE
emilyd=> create table iso3166 (
emilyd(> lkode char(2) primary key,
emilyd(> isonavn text, -- English short country name officially used by the ISO 3166 Maintenance Agency (ISO 3166/MA)
emilyd(> deler text, -- Name and number of subdivisions assigned codes in ISO 3166-2
emilyd(> note text -- Fotnote eller merknad
emilyd(> );
CREATE TABLE


emilyd=> INSERT INTO iso3166 VALUES
emilyd-> ('AD', 'Andorra', '7 parishes', ''),
emilyd-> ('AE', 'United Arab Emirates', '7 emirates', ''),
emilyd-> ('AF', 'Afghanistan', '34 provinces', ''),
emilyd-> ('AG', 'Antigua and Barbuda', '6 parishes, 2 dependencies', ''),
emilyd-> ('AI', 'Anguilla', '', ''),
emilyd-> ('AL', 'Albania', '12 counties', ''),
emilyd-> ('AM', 'Armenia', '1 city, 10 regions', ''),
emilyd-> ('AO', 'Angola', '18 provinces', ''),
emilyd-> ('AQ', 'Antarctica', '', ''),
emilyd-> ('AR', 'Argentina', '1 city, 23 provinces', ''),
emilyd-> ('AS', 'American Samoa', '', ''),
emilyd-> ('AT', 'Austria', '9 states', ''),
emilyd-> ('AU', 'Australia', '6 states, 2 territories', ''),
emilyd-> ('AW', 'Aruba', '', ''),
emilyd-> ('AX', 'Åland Islands', '', ''),
emilyd-> ('AZ', 'Azerbaijan', '1 autonomous republic, 11 municipalities, 66 rayons', ''),
emilyd-> ('BA', 'Bosnia and Herzegovina', '2 entities, 1 district with special status', ''),
emilyd-> ('BB', 'Barbados', '11 parishes', ''),
emilyd-> ('BD', 'Bangladesh', '7 divisions, 64 districts', ''),
emilyd-> ('BE', 'Belgium', '3 regions, 10 provinces', ''),
emilyd-> ('BF', 'Burkina Faso', '13 regions, 45 provinces', ''),
emilyd-> ('BG', 'Bulgaria', '28 regions', ''),
emilyd-> ('BH', 'Bahrain', '4 governorates', ''),
emilyd-> ('BI', 'Burundi', '18 provinces', ''),
emilyd-> ('BJ', 'Benin', '12 departments', ''),
emilyd-> ('BL', 'Saint Barthélemy', '', ''),
emilyd-> ('BM', 'Bermuda', '', ''),
emilyd-> ('BN', 'Brunei Darussalam', '4 districts', ''),
emilyd-> ('BO', 'Bolivia, Plurinational State of', '9 departments', ''),
emilyd-> ('BQ', 'Bonaire, Sint Eustatius and Saba', '3 special municipalities', ''),
emilyd-> ('BR', 'Brazil', '1 federal district, 26 states', ''),
emilyd-> ('BS', 'Bahamas', '31 districts', ''),
emilyd-> ('BT', 'Bhutan', '20 districts', ''),
emilyd-> ('BV', 'Bouvet Island', '', ''),
emilyd-> ('BW', 'Botswana', '10 districts, 4 towns, 2 cities', ''),
emilyd-> ('BY', 'Belarus', '6 oblasts, 1 city', ''),
emilyd-> ('BZ', 'Belize', '6 districts', ''),
emilyd-> ('CA', 'Canada', '10 provinces, 3 territories', ''),
emilyd-> ('CC', 'Cocos (Keeling) Islands', '', ''),
emilyd-> ('CD', 'Congo, the Democratic Republic of the', '1 city, 10 provinces', ''),
emilyd-> ('CF', 'Central African Republic', '1 commune, 14 prefectures, 2 economic prefectures', ''),
emilyd-> ('CG', 'Congo', '12 departments', ''),
emilyd-> ('CH', 'Switzerland', '26 cantons', ''),
emilyd-> ('CI', 'Côte d''Ivoire', '12 districts, 2 autonomous districts', ''),
emilyd-> ('CK', 'Cook Islands', '', ''),
emilyd-> ('CL', 'Chile', '15 regions', ''),
emilyd-> ('CM', 'Cameroon', '10 regions', ''),
emilyd-> ('CN', 'China', '4 municipalities, 23 provinces, 5 autonomous regions, 2 special administrative regions', ''),
emilyd-> ('CO', 'Colombia', '1 capital district, 32 departments', ''),
emilyd-> ('CR', 'Costa Rica', '7 provinces', ''),
emilyd-> ('CU', 'Cuba', '15 provinces, 1 special municipality', ''),
emilyd-> ('CV', 'Cabo Verde', '2 geographical regions, 22 municipalities', ''),
emilyd-> ('CW', 'Curaçao', '', ''),
emilyd-> ('CX', 'Christmas Island', '', ''),
emilyd-> ('CY', 'Cyprus', '6 districts', ''),
emilyd-> ('CZ', 'Czechia', '14 regions, 91 districts', ''),
emilyd-> ('DE', 'Germany', '16 Länder', ''),
emilyd-> ('DJ', 'Djibouti', '5 regions, 1 city', ''),
emilyd-> ('DK', 'Denmark', '5 regions', ''),
emilyd-> ('DM', 'Dominica', '10 parishes', ''),
emilyd-> ('DO', 'Dominican Republic', '10 regions, 1 district, 31 provinces', ''),
emilyd-> ('DZ', 'Algeria', '48 provinces', ''),
emilyd-> ('EC', 'Ecuador', '24 provinces', ''),
emilyd-> ('EE', 'Estonia', '15 counties', ''),
emilyd-> ('EG', 'Egypt', '27 governorates', ''),
emilyd-> ('EH', 'Western Sahara', '', ''),
emilyd-> ('ER', 'Eritrea', '6 regions', ''),
emilyd-> ('ES', 'Spain', '17 autonomous communities, 2 autonomous cities in North Africa, 50 provinces', ''),
emilyd-> ('ET', 'Ethiopia', '2 administrations, 9 states', ''),
emilyd-> ('FI', 'Finland', '19 regions', ''),
emilyd-> ('FJ', 'Fiji', '4 divisions, 1 dependency, 14 provinces', ''),
emilyd-> ('FK', 'Falkland Islands (Malvinas)', '', ''),
emilyd-> ('FM', 'Micronesia, Federated States of', '4 states', ''),
emilyd-> ('FO', 'Faroe Islands', '', ''),
emilyd-> ('FR', 'France', '13 metropolitan regions, 5 overseas departments, 96 metropolitan departments, 1 dependency, 7 overseas territorial collectivities', ''),
emilyd-> ('GA', 'Gabon', '9 provinces', ''),
emilyd-> ('GB', 'United Kingdom', '3 countries, 1 province, 3 nations, 78 unitary authorities, 27 two-tier counties, 32 London boroughs, 1 city corporation, 36 metropolitan districts, 11 districts, 32 council areas', ''),
emilyd-> ('GD', 'Grenada', '6 parishes, 1 dependency', ''),
emilyd-> ('GE', 'Georgia', '2 autonomous republics, 1 city, 9 regions', ''),
emilyd-> ('GF', 'French Guiana', '', ''),
emilyd-> ('GG', 'Guernsey', '', ''),
emilyd-> ('GH', 'Ghana', '10 regions', ''),
emilyd-> ('GI', 'Gibraltar', '', ''),
emilyd-> ('GL', 'Greenland', '4 municipalities', ''),
emilyd-> ('GM', 'Gambia', '1 city, 5 divisions', ''),
emilyd-> ('GN', 'Guinea', '7 administrative regions, 1 governorate, 33 prefectures', ''),
emilyd-> ('GP', 'Guadeloupe', '', ''),
emilyd-> ('GQ', 'Equatorial Guinea', '2 regions, 7 provinces', ''),
emilyd-> ('GR', 'Greece', '13 administrative regions, 1 self-governed part', ''),
emilyd-> ('GS', 'South Georgia and the South Sandwich Islands', '', ''),
emilyd-> ('GT', 'Guatemala', '22 departments', ''),
emilyd-> ('GU', 'Guam', '', ''),
emilyd-> ('GW', 'Guinea-Bissau', '3 provinces, 1 autonomous sector, 8 regions', ''),
emilyd-> ('GY', 'Guyana', '10 regions', ''),
emilyd-> ('HK', 'Hong Kong', '', ''),
emilyd-> ('HM', 'Heard Island and McDonald Islands', '', ''),
emilyd-> ('HN', 'Honduras', '18 departments', ''),
emilyd-> ('HR', 'Croatia', '1 city, 20 counties', ''),
emilyd-> ('HT', 'Haiti', '10 departments', ''),
emilyd-> ('HU', 'Hungary', '1 capital city, 19 counties, 23 cities of county right', ''),
emilyd-> ('ID', 'Indonesia', '7 geographical units, 1 autonomous province, 31 provinces, 1 special district, 1 special region', ''),
emilyd-> ('IE', 'Ireland', '4 provinces, 26 counties', ''),
emilyd-> ('IL', 'Israel', '6 districts', ''),
emilyd-> ('IM', 'Isle of Man', '', ''),
emilyd-> ('IN', 'India', '29 states, 7 union territories', ''),
emilyd-> ('IO', 'British Indian Ocean Territory', '', ''),
emilyd-> ('IQ', 'Iraq', '18 governorates', ''),
emilyd-> ('IR', 'Iran, Islamic Republic of', '31 provinces', ''),
emilyd-> ('IS', 'Iceland', '8 regions', ''),
emilyd-> ('IT', 'Italy', '20 regions, 110 provinces', ''),
emilyd-> ('JE', 'Jersey', '', ''),
emilyd-> ('JM', 'Jamaica', '14 parishes', ''),
emilyd-> ('JO', 'Jordan', '12 governorates', ''),
emilyd-> ('JP', 'Japan', '47 prefectures', ''),
emilyd-> ('KE', 'Kenya', '47 counties', ''),
emilyd-> ('KG', 'Kyrgyzstan', '2 cities, 7 regions', ''),
emilyd-> ('KH', 'Cambodia', '1 autonomous municipality, 24 provinces', ''),
emilyd-> ('KI', 'Kiribati', '3 groups of islands', ''),
emilyd-> ('KM', 'Comoros', '3 islands', ''),
emilyd-> ('KN', 'Saint Kitts and Nevis', '2 states, 14 parishes', ''),
emilyd-> ('KP', 'Korea (the Democratic People''s Republic of)', '1 capital city, 1 special city, 9 provinces', ''),
emilyd-> ('KR', 'Korea (the Republic of)', '6 metropolitan cities, 1 special city, 1 special self-governing city, 8 provinces, 1 special self-governing province', ''),
emilyd-> ('KW', 'Kuwait', '6 governorates', ''),
emilyd-> ('KY', 'Cayman Islands', '', ''),
emilyd-> ('KZ', 'Kazakhstan', '2 cities, 14 regions', ''),
emilyd-> ('LA', 'Lao People''s Democratic Republic', '1 prefecture, 17 provinces', ''),
emilyd-> ('LB', 'Lebanon', '8 governorates', ''),
emilyd-> ('LC', 'Saint Lucia', '10 districts', ''),
emilyd-> ('LI', 'Liechtenstein', '11 communes', ''),
emilyd-> ('LK', 'Sri Lanka', '9 provinces, 25 districts', ''),
emilyd-> ('LR', 'Liberia', '15 counties', ''),
emilyd-> ('LS', 'Lesotho', '10 districts', ''),
emilyd-> ('LT', 'Lithuania', '10 counties, 9 municipalities, 7 city municipalities, 44 district municipalities', ''),
emilyd-> ('LU', 'Luxembourg', '12 cantons', ''),
emilyd-> ('LV', 'Latvia', '110 municipalities, 9 republican cities', ''),
emilyd-> ('LY', 'Libya', '22 popularates', ''),
emilyd-> ('MA', 'Morocco', '16 regions, 46 provinces, 17 prefectures', ''),
emilyd-> ('MC', 'Monaco', '17 quarters', ''),
emilyd-> ('MD', 'Moldova, Republic of', '1 autonomous territorial unit, 3 cities, 32 districts, 1 territorial unit', ''),
emilyd-> ('ME', 'Montenegro', '23 municipalities', ''),
emilyd-> ('MF', 'Saint Martin (French part)', '', ''),
emilyd-> ('MG', 'Madagascar', '6 provinces', ''),
emilyd-> ('MH', 'Marshall Islands', '2 chains of islands, 24 municipalities', ''),
emilyd-> ('MK', 'Macedonia, the former Yugoslav Republic of', '71 municipalities', ''),
emilyd-> ('ML', 'Mali', '1 district, 8 regions', ''),
emilyd-> ('MM', 'Myanmar', '7 regions, 7 states, 1 union territory', ''),
emilyd-> ('MN', 'Mongolia', '1 capital city, 21 provinces', ''),
emilyd-> ('MO', 'Macao', '', ''),
emilyd-> ('MP', 'Northern Mariana Islands', '', ''),
emilyd-> ('MQ', 'Martinique', '', ''),
emilyd-> ('MR', 'Mauritania', '15 regions', ''),
emilyd-> ('MS', 'Montserrat', '', ''),
emilyd-> ('MT', 'Malta', '68 local councils', ''),
emilyd-> ('MU', 'Mauritius', '3 dependencies, 9 districts, 5 cities', ''),
emilyd-> ('MV', 'Maldives', '7 provinces, 1 capital, 20 administrative atolls', ''),
emilyd-> ('MW', 'Malawi', '3 regions, 28 districts', ''),
emilyd-> ('MX', 'Mexico', '31 states, 1 federal district', ''),
emilyd-> ('MY', 'Malaysia', '3 federal territories, 13 states', ''),
emilyd-> ('MZ', 'Mozambique', '1 city, 10 provinces', ''),
emilyd-> ('NA', 'Namibia', '14 regions', ''),
emilyd-> ('NC', 'New Caledonia', '', ''),
emilyd-> ('NE', 'Niger', '1 urban community, 7 departments', ''),
emilyd-> ('NF', 'Norfolk Island', '', ''),
emilyd-> ('NG', 'Nigeria', '1 capital territory, 36 states', ''),
emilyd-> ('NI', 'Nicaragua', '15 departments, 2 autonomous regions', ''),
emilyd-> ('NL', 'Netherlands', '12 provinces, 3 countries, 3 special municipalities', '3 countries are listed as subdivisions of the Netherlands. However, the mentioned Netherlands is a country on its own with the three other countries being its dependent territories. The four countries together constitute the Kingdom of the Netherlands.'),
emilyd-> ('NO', 'Norway', '19 counties, 2 arctic regions', ''),
emilyd-> ('NP', 'Nepal', '5 development regions, 14 zones', ''),
emilyd-> ('NR', 'Nauru', '14 districts', ''),
emilyd-> ('NU', 'Niue', '', ''),
emilyd-> ('NZ', 'New Zealand', '16 regions, 1 special island authority', ''),
emilyd-> ('OM', 'Oman', '11 governorates', ''),
emilyd-> ('PA', 'Panama', '10 provinces, 3 indigenous regions', ''),
emilyd-> ('PE', 'Peru', '25 regions, 1 municipality', ''),
emilyd-> ('PF', 'French Polynesia', '', ''),
emilyd-> ('PG', 'Papua New Guinea', '1 district, 20 provinces, 1 autonomous region', ''),
emilyd-> ('PH', 'Philippines', '17 regions, 81 provinces', ''),
emilyd-> ('PK', 'Pakistan', '1 federal capital territory, 4 provinces, 1 territory, 2 Pakistan administered areas', ''),
emilyd-> ('PL', 'Poland', '16 provinces', ''),
emilyd-> ('PM', 'Saint Pierre and Miquelon', '', ''),
emilyd-> ('PN', 'Pitcairn', '', ''),
emilyd-> ('PR', 'Puerto Rico', '', ''),
emilyd-> ('PS', 'Palestine, State of', '16 governorates', ''),
emilyd-> ('PT', 'Portugal', '18 districts, 2 autonomous regions', ''),
emilyd-> ('PW', 'Palau', '16 states', ''),
emilyd-> ('PY', 'Paraguay', '1 capital, 17 departments', ''),
emilyd-> ('QA', 'Qatar', '7 municipalities', ''),
emilyd-> ('RE', 'Réunion', '', ''),
emilyd-> ('RO', 'Romania', '41 departments, 1 municipality', ''),
emilyd-> ('RS', 'Serbia', '2 autonomous provinces, 1 city, 29 districts', ''),
emilyd-> ('RU', 'Russian Federation', '21 republics, 9 administrative territories, 46 administrative regions, 2 autonomous cities, 1 autonomous region, 4 autonomous districts', ''),
emilyd-> ('RW', 'Rwanda', '1 town council, 4 provinces', ''),
emilyd-> ('SA', 'Saudi Arabia', '13 provinces', ''),
emilyd-> ('SB', 'Solomon Islands', '1 capital territory, 9 provinces', ''),
emilyd-> ('SC', 'Seychelles', '25 districts', ''),
emilyd-> ('SD', 'Sudan', '18 states', ''),
emilyd-> ('SE', 'Sweden', '21 counties', ''),
emilyd-> ('SG', 'Singapore', '5 districts', ''),
emilyd-> ('SH', 'Saint Helena, Ascension and Tristan da Cunha', '3 geographical entities', ''),
emilyd-> ('SI', 'Slovenia', '211 communes', ''),
emilyd-> ('SJ', 'Svalbard and Jan Mayen', '', ''),
emilyd-> ('SK', 'Slovakia', '8 regions', ''),
emilyd-> ('SL', 'Sierra Leone', '1 area, 3 provinces', ''),
emilyd-> ('SM', 'San Marino', '9 municipalities', ''),
emilyd-> ('SN', 'Senegal', '14 regions', ''),
emilyd-> ('SO', 'Somalia', '18 regions', ''),
emilyd-> ('SR', 'Suriname', '10 districts', ''),
emilyd-> ('SS', 'South Sudan', '10 states', ''),
emilyd-> ('ST', 'Sao Tome and Principe', '2 provinces', ''),
emilyd-> ('SV', 'El Salvador', '14 departments', ''),
emilyd-> ('SX', 'Sint Maarten (Dutch part)', '', ''),
emilyd-> ('SY', 'Syrian Arab Republic', '14 provinces', ''),
emilyd-> ('SZ', 'Swaziland', '4 districts', ''),
emilyd-> ('TC', 'Turks and Caicos Islands', '', ''),
emilyd-> ('TD', 'Chad', '23 regions', ''),
emilyd-> ('TF', 'French Southern Territories', '', ''),
emilyd-> ('TG', 'Togo', '5 regions', ''),
emilyd-> ('TH', 'Thailand', '1 metropolitan administration, 1 special administrative city, 76 provinces', ''),
emilyd-> ('TJ', 'Tajikistan', '1 autonomous region, 2 regions, 1 capital territory', ''),
emilyd-> ('TK', 'Tokelau', '', ''),
emilyd-> ('TL', 'Timor-Leste', '13 districts', ''),
emilyd-> ('TM', 'Turkmenistan', '5 regions, 1 city', ''),
emilyd-> ('TN', 'Tunisia', '24 governorates', ''),
emilyd-> ('TO', 'Tonga', '5 divisions', ''),
emilyd-> ('TR', 'Turkey', '81 provinces', ''),
emilyd-> ('TT', 'Trinidad and Tobago', '9 regions, 5 municipalities, 1 ward', ''),
emilyd-> ('TV', 'Tuvalu', '1 town council, 7 island councils', ''),
emilyd-> ('TW', 'Taiwan, Province of China', '13 counties, 3 cities, 6 special municipalities', ''),
emilyd-> ('TZ', 'Tanzania, United Republic of', '30 regions', 'Taiwan is included as a subdivision of China because of its political status within the United Nations, as, even though it is de facto under the jurisdiction of the Republic of China instead of the People''s Republic of China, the United Nations does not recognize the Republic of China and considers Taiwan as part of China. In ISO 3166-1, Taiwan is listed as "Taiwan, Province of China".'),
emilyd-> ('UA', 'Ukraine', '24 regions, 1 republic, 2 cities', ''),
emilyd-> ('UG', 'Uganda', '4 geographical regions, 111 districts, 1 city', ''),
emilyd-> ('UM', 'United States Minor Outlying Islands', '9 islands, groups of islands', ''),
emilyd-> ('US', 'United States', '50 states, 1 district, 6 outlying areas', ''),
emilyd-> ('UY', 'Uruguay', '19 departments', ''),
emilyd-> ('UZ', 'Uzbekistan', '1 city, 12 regions, 1 republic', ''),
emilyd-> ('VA', 'Holy See (Vatican City State)', '', ''),
emilyd-> ('VC', 'Saint Vincent and the Grenadines', '6 parishes', ''),
emilyd-> ('VE', 'Venezuela, Bolivarian Republic of', '1 federal dependency, 1 federal district, 23 states', ''),
emilyd-> ('VG', 'Virgin Islands, British', '', ''),
emilyd-> ('VI', 'Virgin Islands, U.S.', '', ''),
emilyd-> ('VN', 'Viet Nam', '58 provinces, 5 municipalities', ''),
emilyd-> ('VU', 'Vanuatu', '6 provinces', ''),
emilyd-> ('WF', 'Wallis and Futuna', '3 administrative precincts', ''),
emilyd-> ('WS', 'Samoa', '11 districts', ''),
emilyd-> ('YE', 'Yemen', '1 municipality, 21 governorates', ''),
emilyd-> ('YT', 'Mayotte', '', ''),
emilyd-> ('ZA', 'South Africa', '9 provinces', ''),
emilyd-> ('ZM', 'Zambia', '10 provinces', ''),
emilyd-> ('ZW', 'Zimbabwe', '10 provinces', '');
INSERT 0 249

emilyd=> \d iso3166
       Table "landdb.iso3166"
 Column  |     Type     | Modifiers
---------+--------------+-----------
 lkode   | character(2) | not null
 isonavn | text         |
 deler   | text         |
 note    | text         |
Indexes:
    "iso3166_pkey" PRIMARY KEY, btree (lkode)


emilyd=> select L.isonavn land,
emilyd->        T.pop folketall,
emilyd->        ceil(sum(B.pop)) bybefolkning,
emilyd->        ceil(sum(B.pop)/T.pop*100) prosent_av_total
emilyd-> from   iso3166 L
emilyd->   join Tallforland T on L.lkode=T.kode
emilyd->   join Bydata B on T.kode=B.kode
emilyd-> group by L.isonavn, T.pop
emilyd-> having T.pop > 50000000
emilyd-> order by prosent_av_total;
                 land                  | folketall  | bybefolkning | prosent_av_total
---------------------------------------+------------+--------------+------------------
 Ethiopia                              |   88013491 |      5762058 |                7
 Bangladesh                            |  156118464 |     19098968 |               13
 India                                 | 1173108018 |    174598288 |               15
 Myanmar                               |   53414374 |      9139990 |               18
 Indonesia                             |  242968342 |     43823832 |               19
 Thailand                              |   67089500 |     12304091 |               19
 Nigeria                               |  154000000 |     31019154 |               21
 Philippines                           |   99900177 |     20950874 |               21
 Pakistan                              |  184404791 |     40024188 |               22
 Viet Nam                              |   89571130 |     19777666 |               23
 China                                 | 1330044000 |    293130208 |               23
 Congo, the Democratic Republic of the |   70916439 |     16481944 |               24
 France                                |   64768389 |     16415432 |               26
 Italy                                 |   60340328 |     16374336 |               28
 Egypt                                 |   80471869 |     24656196 |               31
 Germany                               |   81802257 |     27000916 |               34
 Iran, Islamic Republic of             |   76923300 |     30444728 |               40
 United Kingdom                        |   62348447 |     24750142 |               40
 Turkey                                |   77804122 |     35167956 |               46
 Mexico                                |  112468855 |     55203916 |               50
 Brazil                                |  201103330 |    100038560 |               50
 United States                         |  310232863 |    162665712 |               53
 Russian Federation                    |  140702000 |     74380224 |               53
 Japan                                 |  127288000 |     67031360 |               53
(24 rows)
emilyd=> select L.isonavn land,
       sum(T.pop) folketall,
       ceil(sum(B.pop)) bybefolkning,
       ceil(sum(B.pop)/sum(T.pop)*100) prosent_av_total
from iso3166 L
    join Tallforland T on L.lkode=T.kode
    join Bydata B on T.kode=B.kode
group by L.isonavn
having sum(T.pop) > 50000000
order by prosent_av_total;
                    land                     |  folketall   | bybefolkning | prosent_av_total
---------------------------------------------+--------------+--------------+------------------
 Peru                                        |   2691630270 |     15577990 |                1
 Cambodia                                    |    274619920 |      2258091 |                1
 Tanzania, United Republic of                |   2471680805 |      7338219 |                1
 Turkey                                      |   6535546248 |     35167956 |                1
 Chad                                        |    200325816 |      1611846 |                1
 Cameroon                                    |    598118619 |      5904854 |                1
 Nigeria                                     |  10472000000 |     31019154 |                1
 Australia                                   |   4819528896 |     14863849 |                1
 Uganda                                      |   1436143326 |      3329034 |                1
 Argentina                                   |   6532225758 |     25539952 |                1
 Burkina Faso                                |    519737952 |      2159363 |                1
 Russian Federation                          |  81466458000 |     74380224 |                1
 Brazil                                      |  78832505360 |    100038560 |                1
 Burundi                                     |    138083638 |       620094 |                1
 Mozambique                                  |    750089334 |      4482436 |                1
 Uzbekistan                                  |    808106402 |      7717591 |                1
 Congo, the Democratic Republic of the       |   6240646632 |     16481944 |                1
 Mexico                                      |  21256613595 |     55203916 |                1
 Sri Lanka                                   |    301195860 |      1475518 |                1
 Algeria                                     |   1763895384 |     10468969 |                1
 South Sudan                                 |    123907350 |       669429 |                1
-- (120 rows)

emilyd-> order by prosent_av_total;
                 land                  | folketall  | bybefolkning | prosent_av_total
---------------------------------------+------------+--------------+------------------
 Ethiopia                              |   88013491 |      5762058 |                7
 Bangladesh                            |  156118464 |     19098968 |               13
 India                                 | 1173108018 |    174598288 |               15
 Myanmar                               |   53414374 |      9139990 |               18
 Indonesia                             |  242968342 |     43823832 |               19
 Thailand                              |   67089500 |     12304091 |               19
 Nigeria                               |  154000000 |     31019154 |               21
 Philippines                           |   99900177 |     20950874 |               21
 Pakistan                              |  184404791 |     40024188 |               22
 Viet Nam                              |   89571130 |     19777666 |               23
 China                                 | 1330044000 |    293130208 |               23
 Congo, the Democratic Republic of the |   70916439 |     16481944 |               24
 France                                |   64768389 |     16415432 |               26
 Italy                                 |   60340328 |     16374336 |               28
 Egypt                                 |   80471869 |     24656196 |               31
 Germany                               |   81802257 |     27000916 |               34
 Iran, Islamic Republic of             |   76923300 |     30444728 |               40
 United Kingdom                        |   62348447 |     24750142 |               40
 Turkey                                |   77804122 |     35167956 |               46
 Mexico                                |  112468855 |     55203916 |               50
 Brazil                                |  201103330 |    100038560 |               50
 United States                         |  310232863 |    162665712 |               53
 Russian Federation                    |  140702000 |     74380224 |               53
 Japan                                 |  127288000 |     67031360 |               53
(24 rows)


emilyd-> order by prosent_av_total;
                 land                  | folketall  | bybefolkning | prosent_av_total
---------------------------------------+------------+--------------+------------------
 Ethiopia                              |   88013491 |      5762058 |                7
 Bangladesh                            |  156118464 |     19098968 |               13
 India                                 | 1173108018 |    174598288 |               15
 Myanmar                               |   53414374 |      9139990 |               18
 Indonesia                             |  242968342 |     43823832 |               19
 Thailand                              |   67089500 |     12304091 |               19
 Philippines                           |   99900177 |     20950874 |               21
 Nigeria                               |  154000000 |     31019154 |               21
 Pakistan                              |  184404791 |     40024188 |               22
 Viet Nam                              |   89571130 |     19777666 |               23
 China                                 | 1330044000 |    293130208 |               23
 Congo, the Democratic Republic of the |   70916439 |     16481944 |               24
 France                                |   64768389 |     16415432 |               26
 Italy                                 |   60340328 |     16374336 |               28
 Egypt                                 |   80471869 |     24656196 |               31
 Germany                               |   81802257 |     27000916 |               34
 Iran, Islamic Republic of             |   76923300 |     30444728 |               40
 United Kingdom                        |   62348447 |     24750142 |               40
 Turkey                                |   77804122 |     35167956 |               46
 Mexico                                |  112468855 |     55203916 |               50
 Brazil                                |  201103330 |    100038560 |               50
 Japan                                 |  127288000 |     67031360 |               53
 United States                         |  310232863 |    162665712 |               53
 Russian Federation                    |  140702000 |     74380224 |               53
(24 rows)


