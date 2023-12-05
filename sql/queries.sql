-- Consulta Simples:

SELECT *
FROM Entrance;

-- Consulta de Junção:

SELECT e.name AS 'event_name',
       p.name AS 'place_name',
       e.date AS 'event_date'
FROM Event e JOIN
     Place p
     ON (e.place_id = p.id);

-- Consulta de Agregação:

SELECT SUM(price) AS 'event3_sum'
FROM Entrance
WHERE event_id = 3;

-- Consulta de Filtro:

SELECT name AS 'member_name'
FROM Member
WHERE CAST(strftime('%Y', born) AS INTEGER) < 2000;

-- Consulta de Ordenação:

SELECT id, role, price
FROM Entrance
ORDER BY price DESC, role;

-- Consulta de Subconsulta:

SELECT m.name AS 'member_name'
FROM Member m
WHERE m.id
(SELECT em.member_id
FROM EventMember em
WHERE em.eventId = 1);

-- Consulta de União:

SELECT m.name AS 'member_name', m.born AS 'born_in'
FROM Member m

UNION

SELECT p.name AS 'place_name'
FROM Place p;

-- Group Query:

-- Limit Query:

SELECT *
FROM Entrance
LIMIT 3;

-- Complex Query:
