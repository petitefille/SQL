--
-- COUNT
-- Hvor mange filmer er det i filmdatabasen?
SELECT count(filmid)
FROM film;

-- Hvor mange episoder er det per serie? Begrenset til de med s.id < 100. 
SELECT seriesid, count(*) 
FROM episode
WHERE seriesid < 100
GROUP BY seriesid;

-- Andre aggregatfunksjoner:
-- MIN, MAX, SUM, AVG, COUNT


-- Votes over 50k
select filmid, votes, rank
from filmrating
where votes > 50000
order by rank desc;

-- Votes over 50k, reversed.
select filmid, votes, rank
from filmrating
where votes > 50000
order by rank desc;

--
-- GROUP BY
-- Hvor mange filmer er det i hver sjanger?
SELECT count(filmid), genre
FROM filmgenre
GROUP BY genre;

-- Filtrere ut de sjangrene som har mindre en 50.000 filmer.
-- WRONG. Can't do aggregate functions in WHERE.
-- Eksempel 1?
SELECT count(filmid), genre
FROM filmgenre
WHERE count(filmid) > 50000
GROUP BY grenre;

-- CORRECT. Use having!
SELECT count(filmid), genre
FROM filmgenre
GROUP BY grenre
HAVING count(filmid) > 50000;

--
-- JOIN
-- Hent tittel og sjanger for filmene med filmID i mellom 1000 og 1050.
-- Film & FilmGenre
SELECT title, genre
FROM film f INNER JOIN filmgenre fg ON f.filmid = fg.filmid
WHERE f.filmid > 1000 AND f.filmid < 1050;

-- MULTIPLE TABLES (3). 
-- Hent Fornavn til de første 50 skuespillerne, samt filmene de spilte i. 
SELECT firstname, title
FROM film f 
INNER JOIN filmparticipation fp 
ON f.filmid = fp.filmid
INNER JOIN person p
ON fp.personid = p.personid
WHERE p.firstname IS NOT NULL
AND p.firstname != ''
LIMIT 50;

-- Natural Join Multiple
-- Samme som over, med NATURAL JOIN.
SELECT firstname, title
FROM film f 
NATURAL JOIN filmparticipation fp 
NATURAL JOIN person p
WHERE p.firstname IS NOT NULL
AND p.firstname != ''
LIMIT 50;

-- Natural Join GONE WRONG
-- Hent tittel og filmtype til 20 filmer. 
SELECT maintitle, filmtype
FROM series s
NATURAL JOIN filmitem fi
LIMIT 20;

-- Done right!
SELECT maintitle, filmtype
FROM series s
INNER JOIN filmitem fi
ON s.seriesid = fi.filmid
LIMIT 20;

-- Natural Join GONE WRONGERERER-
-- Hente tittel og hvilket land de ble laget/filmet i(?).
SELECT maintitle, country
FROM series s
NATURAL JOIN filmcountry fc
LIMIT 20;

-- Done right!x2
SELECT maintitle, country
FROM series s
INNER JOIN filmcountry fc
ON s.seriesid = fc.filmid
LIMIT 20;