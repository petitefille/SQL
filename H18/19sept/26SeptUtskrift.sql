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

emilyd=> insert into bok values (12, 6, 'Narnia', 1950, null, null);
ERROR:  insert or update on table "bok" violates foreign key constraint "bok_forfatter_id_fkey"
DETAIL:  Key (forfatter_id)=(6) is not present in table "forfatter".
emilyd=>

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

emilyd=> insert into forfatter values (6, 'C.S. Lewis', 'UK');
INSERT 0 1

emilyd=> select * from forfatter;
 forfatter_id |     navn      | land
--------------+---------------+------
            0 | George Orwell | UK
            6 | C.S. Lewis    | UK
            1 | J.R.R Tolkien | UK
            2 | Terry Halpin  | AU
            3 | Jo Nesbø      | NO
            4 | Henrik Ibsen  | NO
            5 | Mathias Stang | NO
(7 rows)



emilyd=> insert into bok values(12, 6, 'The Lion, the Witch and the Wardrobe', 1950, null, null);
INSERT 0 1

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
 12 |            6 | The Lion, the Witch and the Wardrobe                   |   1950 |        |
(13 rows)


emilyd=> insert into bok values(12, 6, 'The Lion, the Witch and the Wardrobe', 1950, null, null);
ERROR:  duplicate key value violates unique constraint "bok_pkey"
DETAIL:  Key (id)=(12) already exists.
