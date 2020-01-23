emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> seledct * from forfatter;
ERROR:  syntax error at or near "seledct"
LINE 1: seledct * from forfatter;
        ^
emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)


emilyd=> select * from bok order by id;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> \d
                     List of relations
 Schema |             Name             | Type  |   Owner
--------+------------------------------+-------+------------
 public | ak                           | table | emilyd
 public | aktivitet                    | table | emilyd
 public | alternativefilmtitle         | table | ifikurs_rw
 public | ansatt                       | table | emilyd
 public | beh                          | table | emilyd
 public | beha                         | table | emilyd
 public | behandling                   | table | emilyd
 public | biographyitem                | table | ifikurs_rw
 public | bok                          | table | emilyd
 public | country                      | table | ifikurs_rw
 public | eierantaksjer                | table | emilyd
 public | episode                      | table | ifikurs_rw
 public | film                         | table | ifikurs_rw
 public | filmcharacter                | table | ifikurs_rw
 public | filmcountry                  | table | ifikurs_rw
 public | filmdescription              | table | ifikurs_rw
 public | filmgenre                    | table | ifikurs_rw
 public | filmitem                     | table | ifikurs_rw
 public | filmlanguage                 | table | ifikurs_rw
 public | filmlanguageinfo             | table | ifikurs_rw
 public | filmparticipation            | table | ifikurs_rw
 public | filmparticipationinfo        | table | ifikurs_rw
 public | filmrating                   | table | ifikurs_rw
 public | forfatter                    | table | emilyd
 public | fremmedinstr                 | view  | emilyd

 emilyd=> \d bok
         Table "public.bok"
    Column    |  Type   | Modifiers
--------------+---------+-----------
 id           | integer | not null
 forfatter_id | integer | not null
 tittel       | text    | not null
 utgitt       | integer | not null
 utgave       | integer |
 opplag       | integer |
Indexes:
    "bok_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "bok_forfatter_id_fkey" FOREIGN KEY (forfatter_id) REFERENCES forfatter(forfatter_id)


emilyd=> select *
emilyd-> from bok
emilyd-> where utgitt = 1954;
 id | forfatter_id |           tittel           | utgitt | utgave | opplag
----+--------------+----------------------------+--------+--------+--------
  6 |            1 | The Fellowship of the Ring |   1954 |        |
  7 |            1 | The Two Towers             |   1954 |        |
(2 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select *
emilyd-> from bok
emilyd-> where utgitt <> 1954;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(10 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select *
emilyd-> from bok
emilyd-> where utgitt != 1954;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(10 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)



emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where utgitt <= 1954;
           tittel           | utgitt
----------------------------+--------
 Nineteen Eighty-Four       |   1949
 Animal Farm                |   1945
 The Hobbit                 |   1937
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 Peer Gynt                  |   1867
 Et dukkehjem               |   1879
 Et dukkehjem               |   1880
(8 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)



emilyd-> where tittel = 'Et dukkehjem';
    tittel    | utgitt
--------------+--------
 Et dukkehjem |   1879
 Et dukkehjem |   1880
(2 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like 'Et dukkehjem';
    tittel    | utgitt
--------------+--------
 Et dukkehjem |   1879
 Et dukkehjem |   1880
(2 rows)


emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)



emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like 'The %';
           tittel           | utgitt
----------------------------+--------
 The Hobbit                 |   1937
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(4 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)



emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like '%The %';
           tittel           | utgitt
----------------------------+--------
 The Hobbit                 |   1937
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(4 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like '%Hobbit%';
   tittel   | utgitt
------------+--------
 The Hobbit |   1937
(1 row)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like '%hobbit%';
 tittel | utgitt
--------+--------
(0 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like '%The' and utgitt >= 1954;
 tittel | utgitt
--------+--------
(0 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where tittel like '%The' or not utgitt >= 1954;
        tittel        | utgitt
----------------------+--------
 Nineteen Eighty-Four |   1949
 Animal Farm          |   1945
 The Hobbit           |   1937
 Peer Gynt            |   1867
 Et dukkehjem         |   1879
 Et dukkehjem         |   1880
(6 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where utgitt >= 1950 and utgitt < 1960;
           tittel           | utgitt
----------------------------+--------
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(3 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where utgitt between 1950 and 1960;
           tittel           | utgitt
----------------------------+--------
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(3 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where utgitt in (1950, 1954, 1955);
           tittel           | utgitt
----------------------------+--------
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(3 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> select tittel, utgitt
emilyd-> from bok
emilyd-> where utgitt between 1954 and 1955;
           tittel           | utgitt
----------------------------+--------
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(3 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)

emilyd=> SELECT tittel, utgitt
emilyd-> FROM bok
emilyd-> WHERE utgitt BETWEEN 1954 AND 1955;
           tittel           | utgitt
----------------------------+--------
 The Fellowship of the Ring |   1954
 The Two Towers             |   1954
 The Return of the King     |   1955
(3 rows)


emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)



emilyd=> select * from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag | forfatter_id |     navn      | land
----+--------------+--------------------------------------------------------+--------+--------+--------+--------------+---------------+------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            0 | George Orwell | UK
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            2 | Terry Halpin  | AU
  2 |            0 | Animal Farm                                            |   1945 |        |        |            0 | George Orwell | UK
  4 |            3 | Snømannen                                              |   2007 |        |        |            3 | Jo Nesbø      | NO
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            3 | Jo Nesbø      | NO
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            1 | J.R.R Tolkien | UK
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            1 | J.R.R Tolkien | UK
  7 |            1 | The Two Towers                                         |   1954 |        |        |            1 | J.R.R Tolkien | UK
  8 |            1 | The Return of the King                                 |   1955 |        |        |            1 | J.R.R Tolkien | UK
  9 |            4 | Peer Gynt                                              |   1867 |        |        |            4 | Henrik Ibsen  | NO
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000 |            4 | Henrik Ibsen  | NO
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000 |            4 | Henrik Ibsen  | NO
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)




emilyd=> select tittel, navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;
                         tittel                         |     navn
--------------------------------------------------------+---------------
 Nineteen Eighty-Four                                   | George Orwell
 Information Modeling Language and Relational Databases | Terry Halpin
 Animal Farm                                            | George Orwell
 Snømannen                                              | Jo Nesbø
 Hodejegerne                                            | Jo Nesbø
 The Hobbit                                             | J.R.R Tolkien
 The Fellowship of the Ring                             | J.R.R Tolkien
 The Two Towers                                         | J.R.R Tolkien
 The Return of the King                                 | J.R.R Tolkien
 Peer Gynt                                              | Henrik Ibsen
 Et dukkehjem                                           | Henrik Ibsen
 Et dukkehjem                                           | Henrik Ibsen
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)



emilyd=> select forfatter_id, tittel, navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;
ERROR:  column reference "forfatter_id" is ambiguous
LINE 1: select forfatter_id, tittel, navn


emilyd=> select bok.forfatter_id, tittel, navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;
 forfatter_id |                         tittel                         |     navn
--------------+--------------------------------------------------------+---------------
            0 | Nineteen Eighty-Four                                   | George Orwell
            2 | Information Modeling Language and Relational Databases | Terry Halpin
            0 | Animal Farm                                            | George Orwell
            3 | Snømannen                                              | Jo Nesbø
            3 | Hodejegerne                                            | Jo Nesbø
            1 | The Hobbit                                             | J.R.R Tolkien
            1 | The Fellowship of the Ring                             | J.R.R Tolkien
            1 | The Two Towers                                         | J.R.R Tolkien
            1 | The Return of the King                                 | J.R.R Tolkien
            4 | Peer Gynt                                              | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
(12 rows)


emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id;
 forfatter_id |                         tittel                         |     navn
--------------+--------------------------------------------------------+---------------
            0 | Nineteen Eighty-Four                                   | George Orwell
            2 | Information Modeling Language and Relational Databases | Terry Halpin
            0 | Animal Farm                                            | George Orwell
            3 | Snømannen                                              | Jo Nesbø
            3 | Hodejegerne                                            | Jo Nesbø
            1 | The Hobbit                                             | J.R.R Tolkien
            1 | The Fellowship of the Ring                             | J.R.R Tolkien
            1 | The Two Towers                                         | J.R.R Tolkien
            1 | The Return of the King                                 | J.R.R Tolkien
            4 | Peer Gynt                                              | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> where forfatter.navn = 'Jo Nesbø';
 forfatter_id |   tittel    |   navn
--------------+-------------+----------
            3 | Snømannen   | Jo Nesbø
            3 | Hodejegerne | Jo Nesbø
(2 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> where bok.utgitt between 1950 and 1960;
 forfatter_id |           tittel           |     navn
--------------+----------------------------+---------------
            1 | The Fellowship of the Ring | J.R.R Tolkien
            1 | The Two Towers             | J.R.R Tolkien
            1 | The Return of the King     | J.R.R Tolkien
(3 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn
emilyd-> from bok inner join  forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> order by utgitt;
 forfatter_id |                         tittel                         |     navn
--------------+--------------------------------------------------------+---------------
            4 | Peer Gynt                                              | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
            1 | The Hobbit                                             | J.R.R Tolkien
            0 | Animal Farm                                            | George Orwell
            0 | Nineteen Eighty-Four                                   | George Orwell
            1 | The Fellowship of the Ring                             | J.R.R Tolkien
            1 | The Two Towers                                         | J.R.R Tolkien
            1 | The Return of the King                                 | J.R.R Tolkien
            3 | Snømannen                                              | Jo Nesbø
            3 | Hodejegerne                                            | Jo Nesbø
            2 | Information Modeling Language and Relational Databases | Terry Halpin
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> order by utgitt desc;
 forfatter_id |                         tittel                         |     navn
--------------+--------------------------------------------------------+---------------
            2 | Information Modeling Language and Relational Databases | Terry Halpin
            3 | Hodejegerne                                            | Jo Nesbø
            3 | Snømannen                                              | Jo Nesbø
            1 | The Return of the King                                 | J.R.R Tolkien
            1 | The Fellowship of the Ring                             | J.R.R Tolkien
            1 | The Two Towers                                         | J.R.R Tolkien
            0 | Nineteen Eighty-Four                                   | George Orwell
            0 | Animal Farm                                            | George Orwell
            1 | The Hobbit                                             | J.R.R Tolkien
            4 | Et dukkehjem                                           | Henrik Ibsen
            4 | Et dukkehjem                                           | Henrik Ibsen
            4 | Peer Gynt                                              | Henrik Ibsen
(12 rows)


emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn, bok.utgitt
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> order by utgitt desc;
 forfatter_id |                         tittel                         |     navn      | utgitt
--------------+--------------------------------------------------------+---------------+--------
            2 | Information Modeling Language and Relational Databases | Terry Halpin  |   2010
            3 | Hodejegerne                                            | Jo Nesbø      |   2008
            3 | Snømannen                                              | Jo Nesbø      |   2007
            1 | The Return of the King                                 | J.R.R Tolkien |   1955
            1 | The Fellowship of the Ring                             | J.R.R Tolkien |   1954
            1 | The Two Towers                                         | J.R.R Tolkien |   1954
            0 | Nineteen Eighty-Four                                   | George Orwell |   1949
            0 | Animal Farm                                            | George Orwell |   1945
            1 | The Hobbit                                             | J.R.R Tolkien |   1937
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1880
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1879
            4 | Peer Gynt                                              | Henrik Ibsen  |   1867
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn, bok.utgitt
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> order by utgitt, tittel;
 forfatter_id |                         tittel                         |     navn      | utgitt
--------------+--------------------------------------------------------+---------------+--------
            4 | Peer Gynt                                              | Henrik Ibsen  |   1867
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1879
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1880
            1 | The Hobbit                                             | J.R.R Tolkien |   1937
            0 | Animal Farm                                            | George Orwell |   1945
            0 | Nineteen Eighty-Four                                   | George Orwell |   1949
            1 | The Fellowship of the Ring                             | J.R.R Tolkien |   1954
            1 | The Two Towers                                         | J.R.R Tolkien |   1954
            1 | The Return of the King                                 | J.R.R Tolkien |   1955
            3 | Snømannen                                              | Jo Nesbø      |   2007
            3 | Hodejegerne                                            | Jo Nesbø      |   2008
            2 | Information Modeling Language and Relational Databases | Terry Halpin  |   2010
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select bok.forfatter_id, bok.tittel, forfatter.navn, bok.utgitt
emilyd-> from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
emilyd-> order by forfatter.navn, bok.utgitt;
 forfatter_id |                         tittel                         |     navn      | utgitt
--------------+--------------------------------------------------------+---------------+--------
            0 | Animal Farm                                            | George Orwell |   1945
            0 | Nineteen Eighty-Four                                   | George Orwell |   1949
            4 | Peer Gynt                                              | Henrik Ibsen  |   1867
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1879
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1880
            1 | The Hobbit                                             | J.R.R Tolkien |   1937
            1 | The Fellowship of the Ring                             | J.R.R Tolkien |   1954
            1 | The Two Towers                                         | J.R.R Tolkien |   1954
            1 | The Return of the King                                 | J.R.R Tolkien |   1955
            3 | Snømannen                                              | Jo Nesbø      |   2007
            3 | Hodejegerne                                            | Jo Nesbø      |   2008
            2 | Information Modeling Language and Relational Databases | Terry Halpin  |   2010
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)

emilyd=> select b.forfatter_id, b.tittel, f.navn, b.utgitt
emilyd-> from bok b inner join forfatter f on b.forfatter_id = f.forfatter_id
emilyd-> order by f.navn, b.utgitt;
 forfatter_id |                         tittel                         |     navn      | utgitt
--------------+--------------------------------------------------------+---------------+--------
            0 | Animal Farm                                            | George Orwell |   1945
            0 | Nineteen Eighty-Four                                   | George Orwell |   1949
            4 | Peer Gynt                                              | Henrik Ibsen  |   1867
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1879
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1880
            1 | The Hobbit                                             | J.R.R Tolkien |   1937
            1 | The Fellowship of the Ring                             | J.R.R Tolkien |   1954
            1 | The Two Towers                                         | J.R.R Tolkien |   1954
            1 | The Return of the King                                 | J.R.R Tolkien |   1955
            3 | Snømannen                                              | Jo Nesbø      |   2007
            3 | Hodejegerne                                            | Jo Nesbø      |   2008
            2 | Information Modeling Language and Relational Databases | Terry Halpin  |   2010
(12 rows)

emilyd=> select * from bok;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag
----+--------------+--------------------------------------------------------+--------+--------+--------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |
  2 |            0 | Animal Farm                                            |   1945 |        |
  4 |            3 | Snømannen                                              |   2007 |        |
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |
  7 |            1 | The Two Towers                                         |   1954 |        |
  8 |            1 | The Return of the King                                 |   1955 |        |
  9 |            4 | Peer Gynt                                              |   1867 |        |
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000
(12 rows)


emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(6 rows)


-- side 54/ 55 
emilyd=> select b.forfatter_id, b.tittel, f.navn, b.utgitt
emilyd-> order by f.navn, b.utgitt
emilyd-> from bok b inner join forfatter f on b.forfatter_id = f.forfatter_id;
ERROR:  syntax error at or near "from"
LINE 3: from bok b inner join forfatter f on b.forfatter_id = f.forf...


emilyd=> select b.forfatter_id, b.tittel, f.navn, b.utgitt
emilyd-> from bok b inner join forfatter f on b.forfatter_id = f.forfatter_id
emilyd-> order by f.navn, b.utgitt;
 forfatter_id |                         tittel                         |     navn      | utgitt
--------------+--------------------------------------------------------+---------------+--------
            0 | Animal Farm                                            | George Orwell |   1945
            0 | Nineteen Eighty-Four                                   | George Orwell |   1949
            4 | Peer Gynt                                              | Henrik Ibsen  |   1867
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1879
            4 | Et dukkehjem                                           | Henrik Ibsen  |   1880
            1 | The Hobbit                                             | J.R.R Tolkien |   1937
            1 | The Fellowship of the Ring                             | J.R.R Tolkien |   1954
            1 | The Two Towers                                         | J.R.R Tolkien |   1954
            1 | The Return of the King                                 | J.R.R Tolkien |   1955
            3 | Snømannen                                              | Jo Nesbø      |   2007
            3 | Hodejegerne                                            | Jo Nesbø      |   2008
            2 | Information Modeling Language and Relational Databases | Terry Halpin  |   2010
(12 rows)
emilyd=> select * from bok, forfatter;

id | forfatter_id |                         tittel                         | utgitt | utgave | opplag | forfatter_id |     navn      | land
----+--------------+--------------------------------------------------------+--------+--------+--------+--------------+---------------+------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            0 | George Orwell | UK
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            1 | J.R.R Tolkien | UK
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            2 | Terry Halpin  | AU
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            3 | Jo Nesbø      | NO
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            4 | Henrik Ibsen  | NO
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            5 | Mathias Stang | NO
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            0 | George Orwell | UK
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            1 | J.R.R Tolkien | UK
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            2 | Terry Halpin  | AU
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            3 | Jo Nesbø      | NO
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            4 | Henrik Ibsen  | NO
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            5 | Mathias Stang | NO
  2 |            0 | Animal Farm                                            |   1945 |        |        |            0 | George Orwell | UK
  2 |            0 | Animal Farm                                            |   1945 |        |        |            1 | J.R.R Tolkien | UK
  2 |            0 | Animal Farm                                            |   1945 |        |        |            2 | Terry Halpin  | AU
  2 |            0 | Animal Farm                                            |   1945 |        |        |            3 | Jo Nesbø      | NO
  2 |            0 | Animal Farm                                            |   1945 |        |        |            4 | Henrik Ibsen  | NO
  2 |            0 | Animal Farm                                            |   1945 |        |        |            5 | Mathias Stang | NO
  4 |            3 | Snømannen                                              |   2007 |        |        |            0 | George Orwell | UK
  4 |            3 | Snømannen                                              |   2007 |        |        |            1 | J.R.R Tolkien | UK
  4 |            3 | Snømannen                                              |   2007 |        |        |            2 | Terry Halpin  | AU
  4 |            3 | Snømannen                                              |   2007 |        |        |            3 | Jo Nesbø      | NO
  4 |            3 | Snømannen                                              |   2007 |        |        |            4 | Henrik Ibsen  | NO
  4 |            3 | Snømannen                                              |   2007 |        |        |            5 | Mathias Stang | NO
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            0 | George Orwell | UK
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            1 | J.R.R Tolkien | UK
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            2 | Terry Halpin  | AU
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            3 | Jo Nesbø      | NO
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            4 | Henrik Ibsen  | NO
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            5 | Mathias Stang | NO
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            0 | George Orwell | UK
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            1 | J.R.R Tolkien | UK
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            2 | Terry Halpin  | AU
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            3 | Jo Nesbø      | NO
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            4 | Henrik Ibsen  | NO
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            5 | Mathias Stang | NO
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            0 | George Orwell | UK
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            1 | J.R.R Tolkien | UK
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            2 | Terry Halpin  | AU
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            3 | Jo Nesbø      | NO
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            4 | Henrik Ibsen  | NO

emilyd=> select * from bok, forfatter
emilyd-> where bok.forfatter_id = forfatter.forfatter_id;
 id | forfatter_id |                         tittel                         | utgitt | utgave | opplag | forfatter_id |     navn      | land
----+--------------+--------------------------------------------------------+--------+--------+--------+--------------+---------------+------
  0 |            0 | Nineteen Eighty-Four                                   |   1949 |        |        |            0 | George Orwell | UK
  1 |            2 | Information Modeling Language and Relational Databases |   2010 |      2 |        |            2 | Terry Halpin  | AU
  2 |            0 | Animal Farm                                            |   1945 |        |        |            0 | George Orwell | UK
  4 |            3 | Snømannen                                              |   2007 |        |        |            3 | Jo Nesbø      | NO
  5 |            3 | Hodejegerne                                            |   2008 |      1 | 120000 |            3 | Jo Nesbø      | NO
  3 |            1 | The Hobbit                                             |   1937 |      1 |   1500 |            1 | J.R.R Tolkien | UK
  6 |            1 | The Fellowship of the Ring                             |   1954 |        |        |            1 | J.R.R Tolkien | UK
  7 |            1 | The Two Towers                                         |   1954 |        |        |            1 | J.R.R Tolkien | UK
  8 |            1 | The Return of the King                                 |   1955 |        |        |            1 | J.R.R Tolkien | UK
  9 |            4 | Peer Gynt                                              |   1867 |        |        |            4 | Henrik Ibsen  | NO
 10 |            4 | Et dukkehjem                                           |   1879 |      1 |   8000 |            4 | Henrik Ibsen  | NO
 11 |            4 | Et dukkehjem                                           |   1880 |      2 |   3000 |            4 | Henrik Ibsen  | NO
(12 rows)
