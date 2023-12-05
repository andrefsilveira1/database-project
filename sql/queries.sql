-- Consulta Simples:

SELECT *
FROM Entrance;

-- Consulta de Junção:

SELECT e.name AS 'event_name',
       p.name AS 'place_name',
       e.date AS 'event_date'
FROM Event AS e 
     JOIN
     Place AS p
     ON (e.place_id = p.id);

-- Consulta de Agregação:

SELECT SUM(price) AS 'event3_sum'
FROM Entrance
WHERE event_id = 3;

-- Consulta com Filtro:

SELECT name AS 'member_name'
FROM Member
WHERE CAST(strftime('%Y', born) AS INTEGER) < 2000;

-- Consulta com Ordenação:

SELECT id, role, price
FROM Entrance
ORDER BY price DESC, role;

-- Consulta com Subconsulta:

SELECT m.name AS 'member_name'
FROM Member AS m
WHERE m.id
(SELECT em.member_id
FROM EventMember AS em
WHERE em.eventId = 1);

-- Consulta com União:

SELECT m.name AS 'member_name', m.born AS 'born_in'
FROM Member AS m

UNION

SELECT p.name AS 'place_name'
FROM Place AS p;

-- Consulta com Agroupamento:

SELECT event_id, SUM(price) AS 'sum'
FROM Entrance
GROUP BY event_id;

-- Consulta com Limite:

SELECT *
FROM Entrance
LIMIT 3;

-- Consulta Complexa:

SELECT m.id, m.name, s.specialization
FROM Member AS m
     JOIN
     EventMember AS em
     ON (em.member_id = m.id)
     JOIN
     Speaker AS s
     ON (s.event_member_id = em.id)
ORDER BY m.id ASC
LIMIT 2;