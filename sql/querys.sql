INSERT INTO Event (name, date, place_id, event_member_id, created_at)
VALUES ('Evento 1', '2023-11-17', 1, 1, '2023-11-17 12:00:00'),
       ('Evento 2', '2023-12-17', 1, 1, '2023-11-17 12:00:00'),
       ('Evento 3', '2024-01-17', 2, 2, '2023-11-17 12:00:00');

INSERT INTO Member (name, born, created_at)
VALUES ('Member1', '1990-01-01', '2023-11-17 12:01:00');

INSERT INTO Place (name, created_at)
VALUES ('Place1', '2023-11-17 12:02:00');

INSERT INTO EventMember (eventId, member_id, created_at)
VALUES (1, 1, '2023-11-17 12:03:00');

INSERT INTO Speaker (event_member_id, specialization)
VALUES (1, 'Specialization1');

INSERT INTO Entrance (event_id, member_id, role, price, purchased_at)
VALUES (1, 1, 'Role1', 25.99, '2023-11-17 12:04:00');



