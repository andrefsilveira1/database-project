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
VALUES (5, 'Specialization1'),
       (10, 'Specialization2'),
       (11, 'Specialization3');

INSERT INTO Entrance (event_id, member_id, role, price, purchased_at)
VALUES (1, 1, 'Role1', 25.99, CURRENT_TIMESTAMP),
       (1, 3, 'Role2', 25.99, CURRENT_TIMESTAMP),
       (1, 4, 'Role3', 25.99, CURRENT_TIMESTAMP),
       (1, 7, 'Role4', 25.99, CURRENT_TIMESTAMP),
       (1, 8, 'Role5', 25.99, CURRENT_TIMESTAMP),
       (2, 1, 'Role6', 25.99, CURRENT_TIMESTAMP),
       (2, 2, 'Role7', 25.99, CURRENT_TIMESTAMP),
       (2, 5, 'Role8', 25.99, CURRENT_TIMESTAMP),
       (2, 6, 'Role9', 25.99, CURRENT_TIMESTAMP),
       (2, 7, 'Role10', 25.99, CURRENT_TIMESTAMP),
       (3, 2, 'Role11', 25.99, CURRENT_TIMESTAMP),
       (3, 3, 'Role12', 25.99, CURRENT_TIMESTAMP),
       (3, 4, 'Role13', 25.99, CURRENT_TIMESTAMP),
       (3, 5, 'Role14', 25.99, CURRENT_TIMESTAMP),
       (3, 6, 'Role15', 25.99, CURRENT_TIMESTAMP),
       (3, 8, 'Role16', 25.99, CURRENT_TIMESTAMP);



