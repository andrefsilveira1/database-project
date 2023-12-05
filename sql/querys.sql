INSERT INTO Event (name, date, place_id, event_member_id, created_at)
VALUES ('Evento 1', '2023-11-17', 1, CURRENT_TIMESTAMP),
       ('Evento 2', '2023-12-17', 1, CURRENT_TIMESTAMP),
       ('Evento 3', '2024-01-17', 2, CURRENT_TIMESTAMP);

INSERT INTO Member (name, born, created_at)
VALUES ('Member1', '1990-02-10', CURRENT_TIMESTAMP),
       ('Member2', '1984-04-23', CURRENT_TIMESTAMP),
       ('Member3', '2000-07-19', CURRENT_TIMESTAMP),
       ('Member4', '2001-11-30', CURRENT_TIMESTAMP),
       ('Member5', '1999-12-25', CURRENT_TIMESTAMP),
       ('Member6', '1999-12-31', CURRENT_TIMESTAMP),
       ('Member7', '2000-01-01', CURRENT_TIMESTAMP),
       ('Member8', '1983-08-21', CURRENT_TIMESTAMP);

INSERT INTO Place (name, created_at)
VALUES ('Place1', CURRENT_TIMESTAMP),
       ('Place2', CURRENT_TIMESTAMP);

INSERT INTO EventMember (eventId, member_id, created_at)
VALUES (1, 1, CURRENT_TIMESTAMP),
       (1, 3, CURRENT_TIMESTAMP),
       (1, 4, CURRENT_TIMESTAMP),
       (1, 7, CURRENT_TIMESTAMP),
       (1, 8, CURRENT_TIMESTAMP),
       (2, 1, CURRENT_TIMESTAMP),
       (2, 2, CURRENT_TIMESTAMP),
       (2, 5, CURRENT_TIMESTAMP),
       (2, 6, CURRENT_TIMESTAMP),
       (2, 7, CURRENT_TIMESTAMP),
       (3, 2, CURRENT_TIMESTAMP),
       (3, 3, CURRENT_TIMESTAMP),
       (3, 4, CURRENT_TIMESTAMP),
       (3, 5, CURRENT_TIMESTAMP),
       (3, 6, CURRENT_TIMESTAMP),
       (3, 8, CURRENT_TIMESTAMP);

INSERT INTO Speaker (event_member_id, specialization)
VALUES (1, 'Specialization1');

INSERT INTO Entrance (event_id, member_id, role, price, purchased_at)
VALUES (1, 1, 'Role1', 25.99, '2023-11-17 12:04:00');



