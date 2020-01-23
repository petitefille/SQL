/*
From Wikipedia, the free encyclopedia

ISO 3166-2 is part of the ISO 3166 standard published by the
International Organization for Standardization (ISO), and defines
codes for identifying the principal subdivisions (e.g., provinces or
states) of all countries coded in ISO 3166-1. The official name of the
standard is Codes for the representation of names of countries and
their subdivisions � Part 2: Country subdivision code. It was first
published in 1998.

The purpose of ISO 3166-2 is to establish an international standard of
short and unique alphanumeric codes to represent the relevant
administrative divisions and dependent territories of all countries in
a more convenient and less ambiguous form than their full names. Each
complete ISO 3166-2 code consists of two parts, separated by a
hyphen:[1]

The first part is the ISO 3166-1 alpha-2 code of the country; The
second part is a string of up to three alphanumeric characters, which
is usually obtained from national sources and stems from coding
systems already in use in the country concerned, but may also be
developed by the ISO itself.  Each complete ISO 3166-2 code can then
be used to uniquely identify a country subdivision in a global
context.

Currently more than 4000 codes are defined in ISO 3166-2. For some
countries, codes are defined for more than one level of subdivisions.
*/

drop table if exists iso3166;

create table iso3166 (
lkode char(2) primary key,
isonavn text, -- English short country name officially used by the ISO 3166 Maintenance Agency (ISO 3166/MA)
deler text, -- Name and number of subdivisions assigned codes in ISO 3166-2
note text -- Fotnote eller merknad
);


INSERT INTO iso3166 VALUES 
('AD', 'Andorra', '7 parishes', ''),
('AE', 'United Arab Emirates', '7 emirates', ''),
('AF', 'Afghanistan', '34 provinces', ''),
('AG', 'Antigua and Barbuda', '6 parishes, 2 dependencies', ''),
('AI', 'Anguilla', '', ''),
('AL', 'Albania', '12 counties', ''),
('AM', 'Armenia', '1 city, 10 regions', ''),
('AO', 'Angola', '18 provinces', ''),
('AQ', 'Antarctica', '', ''),
('AR', 'Argentina', '1 city, 23 provinces', ''),
('AS', 'American Samoa', '', ''),
('AT', 'Austria', '9 states', ''),
('AU', 'Australia', '6 states, 2 territories', ''),
('AW', 'Aruba', '', ''),
('AX', '�land Islands', '', ''),
('AZ', 'Azerbaijan', '1 autonomous republic, 11 municipalities, 66 rayons', ''),
('BA', 'Bosnia and Herzegovina', '2 entities, 1 district with special status', ''),
('BB', 'Barbados', '11 parishes', ''),
('BD', 'Bangladesh', '7 divisions, 64 districts', ''),
('BE', 'Belgium', '3 regions, 10 provinces', ''),
('BF', 'Burkina Faso', '13 regions, 45 provinces', ''),
('BG', 'Bulgaria', '28 regions', ''),
('BH', 'Bahrain', '4 governorates', ''),
('BI', 'Burundi', '18 provinces', ''),
('BJ', 'Benin', '12 departments', ''),
('BL', 'Saint Barth�lemy', '', ''),
('BM', 'Bermuda', '', ''),
('BN', 'Brunei Darussalam', '4 districts', ''),
('BO', 'Bolivia, Plurinational State of', '9 departments', ''),
('BQ', 'Bonaire, Sint Eustatius and Saba', '3 special municipalities', ''),
('BR', 'Brazil', '1 federal district, 26 states', ''),
('BS', 'Bahamas', '31 districts', ''),
('BT', 'Bhutan', '20 districts', ''),
('BV', 'Bouvet Island', '', ''),
('BW', 'Botswana', '10 districts, 4 towns, 2 cities', ''),
('BY', 'Belarus', '6 oblasts, 1 city', ''),
('BZ', 'Belize', '6 districts', ''),
('CA', 'Canada', '10 provinces, 3 territories', ''),
('CC', 'Cocos (Keeling) Islands', '', ''),
('CD', 'Congo, the Democratic Republic of the', '1 city, 10 provinces', ''),
('CF', 'Central African Republic', '1 commune, 14 prefectures, 2 economic prefectures', ''),
('CG', 'Congo', '12 departments', ''),
('CH', 'Switzerland', '26 cantons', ''),
('CI', 'C�te d''Ivoire', '12 districts, 2 autonomous districts', ''),
('CK', 'Cook Islands', '', ''),
('CL', 'Chile', '15 regions', ''),
('CM', 'Cameroon', '10 regions', ''),
('CN', 'China', '4 municipalities, 23 provinces, 5 autonomous regions, 2 special administrative regions', ''),
('CO', 'Colombia', '1 capital district, 32 departments', ''),
('CR', 'Costa Rica', '7 provinces', ''),
('CU', 'Cuba', '15 provinces, 1 special municipality', ''),
('CV', 'Cabo Verde', '2 geographical regions, 22 municipalities', ''),
('CW', 'Cura�ao', '', ''),
('CX', 'Christmas Island', '', ''),
('CY', 'Cyprus', '6 districts', ''),
('CZ', 'Czechia', '14 regions, 91 districts', ''),
('DE', 'Germany', '16 L�nder', ''),
('DJ', 'Djibouti', '5 regions, 1 city', ''),
('DK', 'Denmark', '5 regions', ''),
('DM', 'Dominica', '10 parishes', ''),
('DO', 'Dominican Republic', '10 regions, 1 district, 31 provinces', ''),
('DZ', 'Algeria', '48 provinces', ''),
('EC', 'Ecuador', '24 provinces', ''),
('EE', 'Estonia', '15 counties', ''),
('EG', 'Egypt', '27 governorates', ''),
('EH', 'Western Sahara', '', ''),
('ER', 'Eritrea', '6 regions', ''),
('ES', 'Spain', '17 autonomous communities, 2 autonomous cities in North Africa, 50 provinces', ''),
('ET', 'Ethiopia', '2 administrations, 9 states', ''),
('FI', 'Finland', '19 regions', ''),
('FJ', 'Fiji', '4 divisions, 1 dependency, 14 provinces', ''),
('FK', 'Falkland Islands (Malvinas)', '', ''),
('FM', 'Micronesia, Federated States of', '4 states', ''),
('FO', 'Faroe Islands', '', ''),
('FR', 'France', '13 metropolitan regions, 5 overseas departments, 96 metropolitan departments, 1 dependency, 7 overseas territorial collectivities', ''),
('GA', 'Gabon', '9 provinces', ''),
('GB', 'United Kingdom', '3 countries, 1 province, 3 nations, 78 unitary authorities, 27 two-tier counties, 32 London boroughs, 1 city corporation, 36 metropolitan districts, 11 districts, 32 council areas', ''),
('GD', 'Grenada', '6 parishes, 1 dependency', ''),
('GE', 'Georgia', '2 autonomous republics, 1 city, 9 regions', ''),
('GF', 'French Guiana', '', ''),
('GG', 'Guernsey', '', ''),
('GH', 'Ghana', '10 regions', ''),
('GI', 'Gibraltar', '', ''),
('GL', 'Greenland', '4 municipalities', ''),
('GM', 'Gambia', '1 city, 5 divisions', ''),
('GN', 'Guinea', '7 administrative regions, 1 governorate, 33 prefectures', ''),
('GP', 'Guadeloupe', '', ''),
('GQ', 'Equatorial Guinea', '2 regions, 7 provinces', ''),
('GR', 'Greece', '13 administrative regions, 1 self-governed part', ''),
('GS', 'South Georgia and the South Sandwich Islands', '', ''),
('GT', 'Guatemala', '22 departments', ''),
('GU', 'Guam', '', ''),
('GW', 'Guinea-Bissau', '3 provinces, 1 autonomous sector, 8 regions', ''),
('GY', 'Guyana', '10 regions', ''),
('HK', 'Hong Kong', '', ''),
('HM', 'Heard Island and McDonald Islands', '', ''),
('HN', 'Honduras', '18 departments', ''),
('HR', 'Croatia', '1 city, 20 counties', ''),
('HT', 'Haiti', '10 departments', ''),
('HU', 'Hungary', '1 capital city, 19 counties, 23 cities of county right', ''),
('ID', 'Indonesia', '7 geographical units, 1 autonomous province, 31 provinces, 1 special district, 1 special region', ''),
('IE', 'Ireland', '4 provinces, 26 counties', ''),
('IL', 'Israel', '6 districts', ''),
('IM', 'Isle of Man', '', ''),
('IN', 'India', '29 states, 7 union territories', ''),
('IO', 'British Indian Ocean Territory', '', ''),
('IQ', 'Iraq', '18 governorates', ''),
('IR', 'Iran, Islamic Republic of', '31 provinces', ''),
('IS', 'Iceland', '8 regions', ''),
('IT', 'Italy', '20 regions, 110 provinces', ''),
('JE', 'Jersey', '', ''),
('JM', 'Jamaica', '14 parishes', ''),
('JO', 'Jordan', '12 governorates', ''),
('JP', 'Japan', '47 prefectures', ''),
('KE', 'Kenya', '47 counties', ''),
('KG', 'Kyrgyzstan', '2 cities, 7 regions', ''),
('KH', 'Cambodia', '1 autonomous municipality, 24 provinces', ''),
('KI', 'Kiribati', '3 groups of islands', ''),
('KM', 'Comoros', '3 islands', ''),
('KN', 'Saint Kitts and Nevis', '2 states, 14 parishes', ''),
('KP', 'Korea (the Democratic People''s Republic of)', '1 capital city, 1 special city, 9 provinces', ''),
('KR', 'Korea (the Republic of)', '6 metropolitan cities, 1 special city, 1 special self-governing city, 8 provinces, 1 special self-governing province', ''),
('KW', 'Kuwait', '6 governorates', ''),
('KY', 'Cayman Islands', '', ''),
('KZ', 'Kazakhstan', '2 cities, 14 regions', ''),
('LA', 'Lao People''s Democratic Republic', '1 prefecture, 17 provinces', ''),
('LB', 'Lebanon', '8 governorates', ''),
('LC', 'Saint Lucia', '10 districts', ''),
('LI', 'Liechtenstein', '11 communes', ''),
('LK', 'Sri Lanka', '9 provinces, 25 districts', ''),
('LR', 'Liberia', '15 counties', ''),
('LS', 'Lesotho', '10 districts', ''),
('LT', 'Lithuania', '10 counties, 9 municipalities, 7 city municipalities, 44 district municipalities', ''),
('LU', 'Luxembourg', '12 cantons', ''),
('LV', 'Latvia', '110 municipalities, 9 republican cities', ''),
('LY', 'Libya', '22 popularates', ''),
('MA', 'Morocco', '16 regions, 46 provinces, 17 prefectures', ''),
('MC', 'Monaco', '17 quarters', ''),
('MD', 'Moldova, Republic of', '1 autonomous territorial unit, 3 cities, 32 districts, 1 territorial unit', ''),
('ME', 'Montenegro', '23 municipalities', ''),
('MF', 'Saint Martin (French part)', '', ''),
('MG', 'Madagascar', '6 provinces', ''),
('MH', 'Marshall Islands', '2 chains of islands, 24 municipalities', ''),
('MK', 'Macedonia, the former Yugoslav Republic of', '71 municipalities', ''),
('ML', 'Mali', '1 district, 8 regions', ''),
('MM', 'Myanmar', '7 regions, 7 states, 1 union territory', ''),
('MN', 'Mongolia', '1 capital city, 21 provinces', ''),
('MO', 'Macao', '', ''),
('MP', 'Northern Mariana Islands', '', ''),
('MQ', 'Martinique', '', ''),
('MR', 'Mauritania', '15 regions', ''),
('MS', 'Montserrat', '', ''),
('MT', 'Malta', '68 local councils', ''),
('MU', 'Mauritius', '3 dependencies, 9 districts, 5 cities', ''),
('MV', 'Maldives', '7 provinces, 1 capital, 20 administrative atolls', ''),
('MW', 'Malawi', '3 regions, 28 districts', ''),
('MX', 'Mexico', '31 states, 1 federal district', ''),
('MY', 'Malaysia', '3 federal territories, 13 states', ''),
('MZ', 'Mozambique', '1 city, 10 provinces', ''),
('NA', 'Namibia', '14 regions', ''),
('NC', 'New Caledonia', '', ''),
('NE', 'Niger', '1 urban community, 7 departments', ''),
('NF', 'Norfolk Island', '', ''),
('NG', 'Nigeria', '1 capital territory, 36 states', ''),
('NI', 'Nicaragua', '15 departments, 2 autonomous regions', ''),
('NL', 'Netherlands', '12 provinces, 3 countries, 3 special municipalities', '3 countries are listed as subdivisions of the Netherlands. However, the mentioned Netherlands is a country on its own with the three other countries being its dependent territories. The four countries together constitute the Kingdom of the Netherlands.'),
('NO', 'Norway', '19 counties, 2 arctic regions', ''),
('NP', 'Nepal', '5 development regions, 14 zones', ''),
('NR', 'Nauru', '14 districts', ''),
('NU', 'Niue', '', ''),
('NZ', 'New Zealand', '16 regions, 1 special island authority', ''),
('OM', 'Oman', '11 governorates', ''),
('PA', 'Panama', '10 provinces, 3 indigenous regions', ''),
('PE', 'Peru', '25 regions, 1 municipality', ''),
('PF', 'French Polynesia', '', ''),
('PG', 'Papua New Guinea', '1 district, 20 provinces, 1 autonomous region', ''),
('PH', 'Philippines', '17 regions, 81 provinces', ''),
('PK', 'Pakistan', '1 federal capital territory, 4 provinces, 1 territory, 2 Pakistan administered areas', ''),
('PL', 'Poland', '16 provinces', ''),
('PM', 'Saint Pierre and Miquelon', '', ''),
('PN', 'Pitcairn', '', ''),
('PR', 'Puerto Rico', '', ''),
('PS', 'Palestine, State of', '16 governorates', ''),
('PT', 'Portugal', '18 districts, 2 autonomous regions', ''),
('PW', 'Palau', '16 states', ''),
('PY', 'Paraguay', '1 capital, 17 departments', ''),
('QA', 'Qatar', '7 municipalities', ''),
('RE', 'R�union', '', ''),
('RO', 'Romania', '41 departments, 1 municipality', ''),
('RS', 'Serbia', '2 autonomous provinces, 1 city, 29 districts', ''),
('RU', 'Russian Federation', '21 republics, 9 administrative territories, 46 administrative regions, 2 autonomous cities, 1 autonomous region, 4 autonomous districts', ''),
('RW', 'Rwanda', '1 town council, 4 provinces', ''),
('SA', 'Saudi Arabia', '13 provinces', ''),
('SB', 'Solomon Islands', '1 capital territory, 9 provinces', ''),
('SC', 'Seychelles', '25 districts', ''),
('SD', 'Sudan', '18 states', ''),
('SE', 'Sweden', '21 counties', ''),
('SG', 'Singapore', '5 districts', ''),
('SH', 'Saint Helena, Ascension and Tristan da Cunha', '3 geographical entities', ''),
('SI', 'Slovenia', '211 communes', ''),
('SJ', 'Svalbard and Jan Mayen', '', ''),
('SK', 'Slovakia', '8 regions', ''),
('SL', 'Sierra Leone', '1 area, 3 provinces', ''),
('SM', 'San Marino', '9 municipalities', ''),
('SN', 'Senegal', '14 regions', ''),
('SO', 'Somalia', '18 regions', ''),
('SR', 'Suriname', '10 districts', ''),
('SS', 'South Sudan', '10 states', ''),
('ST', 'Sao Tome and Principe', '2 provinces', ''),
('SV', 'El Salvador', '14 departments', ''),
('SX', 'Sint Maarten (Dutch part)', '', ''),
('SY', 'Syrian Arab Republic', '14 provinces', ''),
('SZ', 'Swaziland', '4 districts', ''),
('TC', 'Turks and Caicos Islands', '', ''),
('TD', 'Chad', '23 regions', ''),
('TF', 'French Southern Territories', '', ''),
('TG', 'Togo', '5 regions', ''),
('TH', 'Thailand', '1 metropolitan administration, 1 special administrative city, 76 provinces', ''),
('TJ', 'Tajikistan', '1 autonomous region, 2 regions, 1 capital territory', ''),
('TK', 'Tokelau', '', ''),
('TL', 'Timor-Leste', '13 districts', ''),
('TM', 'Turkmenistan', '5 regions, 1 city', ''),
('TN', 'Tunisia', '24 governorates', ''),
('TO', 'Tonga', '5 divisions', ''),
('TR', 'Turkey', '81 provinces', ''),
('TT', 'Trinidad and Tobago', '9 regions, 5 municipalities, 1 ward', ''),
('TV', 'Tuvalu', '1 town council, 7 island councils', ''),
('TW', 'Taiwan, Province of China', '13 counties, 3 cities, 6 special municipalities', ''),
('TZ', 'Tanzania, United Republic of', '30 regions', 'Taiwan is included as a subdivision of China because of its political status within the United Nations, as, even though it is de facto under the jurisdiction of the Republic of China instead of the People''s Republic of China, the United Nations does not recognize the Republic of China and considers Taiwan as part of China. In ISO 3166-1, Taiwan is listed as "Taiwan, Province of China".'),
('UA', 'Ukraine', '24 regions, 1 republic, 2 cities', ''),
('UG', 'Uganda', '4 geographical regions, 111 districts, 1 city', ''),
('UM', 'United States Minor Outlying Islands', '9 islands, groups of islands', ''),
('US', 'United States', '50 states, 1 district, 6 outlying areas', ''),
('UY', 'Uruguay', '19 departments', ''),
('UZ', 'Uzbekistan', '1 city, 12 regions, 1 republic', ''),
('VA', 'Holy See (Vatican City State)', '', ''),
('VC', 'Saint Vincent and the Grenadines', '6 parishes', ''),
('VE', 'Venezuela, Bolivarian Republic of', '1 federal dependency, 1 federal district, 23 states', ''),
('VG', 'Virgin Islands, British', '', ''),
('VI', 'Virgin Islands, U.S.', '', ''),
('VN', 'Viet Nam', '58 provinces, 5 municipalities', ''),
('VU', 'Vanuatu', '6 provinces', ''),
('WF', 'Wallis and Futuna', '3 administrative precincts', ''),
('WS', 'Samoa', '11 districts', ''),
('YE', 'Yemen', '1 municipality, 21 governorates', ''),
('YT', 'Mayotte', '', ''),
('ZA', 'South Africa', '9 provinces', ''),
('ZM', 'Zambia', '10 provinces', ''),
('ZW', 'Zimbabwe', '10 provinces', '');
