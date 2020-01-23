-- *
emilyd=> select bok.forfatter_id, bok.tittel, bok.utgitt, forfatter.navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
order by utgitt;
 forfatter_id |                         tittel                         | utgitt |     navn
--------------+--------------------------------------------------------+--------+---------------
            4 | Peer Gynt                                              |   1867 | Henrik Ibsen
            4 | Et dukkehjem                                           |   1879 | Henrik Ibsen
            4 | Et dukkehjem                                           |   1880 | Henrik Ibsen
            1 | The Hobbit                                             |   1937 | J.R.R Tolkien
            0 | Animal Farm                                            |   1945 | George Orwell
            0 | Nineteen Eighty-Four                                   |   1949 | George Orwell
            6 | The Lion, the Witch and the Wardrobe                   |   1950 | C.S. Lewis
            1 | The Two Towers                                         |   1954 | J.R.R Tolkien
            1 | The Fellowship of the Ring                             |   1954 | J.R.R Tolkien
            1 | The Return of the King                                 |   1955 | J.R.R Tolkien
            3 | Snømannen                                              |   2007 | Jo Nesbø
            3 | Hodejegerne                                            |   2008 | Jo Nesbø
            2 | Information Modeling Language and Relational Databases |   2010 | Terry Halpin
(13 rows)

emilyd=> select bok.forfatter_id, bok.tittel, bok.utgitt, forfatter.navn
from bok inner join forfatter on bok.forfatter_id = forfatter.forfatter_id
order by utgitt desc;
 forfatter_id |                         tittel                         | utgitt |     navn
--------------+--------------------------------------------------------+--------+---------------
            2 | Information Modeling Language and Relational Databases |   2010 | Terry Halpin
            3 | Hodejegerne                                            |   2008 | Jo Nesbø
            3 | Snømannen                                              |   2007 | Jo Nesbø
            1 | The Return of the King                                 |   1955 | J.R.R Tolkien
            1 | The Fellowship of the Ring                             |   1954 | J.R.R Tolkien
            1 | The Two Towers                                         |   1954 | J.R.R Tolkien
            6 | The Lion, the Witch and the Wardrobe                   |   1950 | C.S. Lewis
            0 | Nineteen Eighty-Four                                   |   1949 | George Orwell
            0 | Animal Farm                                            |   1945 | George Orwell
            1 | The Hobbit                                             |   1937 | J.R.R Tolkien
            4 | Et dukkehjem                                           |   1880 | Henrik Ibsen
            4 | Et dukkehjem                                           |   1879 | Henrik Ibsen
            4 | Peer Gynt                                              |   1867 | Henrik Ibsen
(13 rows)
