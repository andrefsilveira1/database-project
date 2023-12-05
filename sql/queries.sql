-- Consulta Simples:

SELECT *
FROM Entrance;

SELECT *
FROM Member;

-- Consulta de Junção:

SELECT e.name AS 'event_name',
       p.name AS 'place_name',
       e.date AS 'event_date'
FROM Event AS e 
     JOIN
     Place AS p
     ON (e.place_id = p.id);

SELECT e.name AS 'event_name',
       s.specialization AS 'Speaker' 
FROM Event AS e 
     JOIN
     EventMember AS em
     ON (e.id = em.eventId)
     JOIN
     Speaker s
     ON (s.event_member_id = em.id);

-- Consulta de Agregação:

SELECT SUM(price) AS 'event3_sum'
FROM Entrance
WHERE event_id = 3;

SELECT COUNT(event_id) AS 'event2_amount'
FROM Entrance
WHERE price = 13.99

-- Consulta com Filtro:

SELECT name AS 'members_born_before_2000'
FROM Member
WHERE CAST(strftime('%Y', born) AS INTEGER) < 2000;

SELECT name AS 'member_born_after_2000'
FROM Member
WHERE CAST(strftime('%Y', born) AS INTEGER) > 2000;

-- Consulta com Ordenação:

SELECT id,
       role,
       price
FROM Entrance
ORDER BY price DESC, role;

SELECT name AS 'member_name'
       strftime('%Y', born) AS 'birth_year'
FROM Member
ORDER BY CAST(strftime('%Y', born) AS INTEGER);

-- Consulta com Subconsulta:

SELECT m.name AS 'event1_members'
FROM Member AS m
WHERE m.id
(SELECT em.member_id
FROM EventMember AS em
WHERE em.eventId = 1);

SELECT e.name AS 'place1_events'
FROM Event AS e
WHERE e.place_id
(SELECT p.id
FROM Place AS p
WHERE p.id = 1);

-- Consulta com União:

SELECT m.name AS 'member_name',
       m.born AS 'born_in'
FROM Member AS m

UNION

SELECT p.name AS 'place_name'
FROM Place AS p;

SELECT s.specialization AS 'speaker_specialization'
FROM Speaker AS s

UNION

SELECT e.role AS 'entrance_role'
FROM Entrance AS e;

-- Consulta com Agroupamento:

SELECT event_id,
       SUM(price) AS 'sum'
FROM Entrance
GROUP BY event_id;

SELECT event_id,
       COUNT(member_id) AS 'members_amount'
FROM EventMember
GROUP BY event_id;

-- Consulta com Limite:

SELECT *
FROM Entrance
LIMIT 3;

SELECT id,
       eventId,
       member_id
FROM EventMember
LIMIT 5;

-- Consulta Complexa:

SELECT m.id,
       m.name AS 'member_name',
       s.specialization AS 'member_specialization'
FROM Member AS m
     JOIN
     EventMember AS em
     ON (em.member_id = m.id)
     JOIN
     Speaker AS s
     ON (s.event_member_id = em.id)
ORDER BY m.id ASC
LIMIT 2;