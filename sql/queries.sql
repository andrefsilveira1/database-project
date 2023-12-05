-- Consulta Simples:

SELECT *
FROM Entrance;

-- Consulta de Junção:

SELECT e.name AS 'event_name',
       p.name AS 'place_name',
       e.date AS 'event_date'
FROM Event e JOIN
     Place p
     ON (e.place_id =
         p.id);

-- Consulta de Agregação:

SELECT SUM(price) AS
FROM ENTRANCE
WHERE event_id = 3;

-- Filter Query:

-- Sort Query:

-- Subquery Query:

-- Join Query:

-- Group Query:

-- Limit Query:

SELECT *
FROM Entrance
LIMIT 3;

-- Complex Query:
