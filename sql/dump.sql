-- Create statement:

CREATE TABLE Event (
  id INTEGER PRIMARY KEY,
  name VARCHAR(250) unique not null,
  date TIMESTAMP not null,
  place_id INTEGER not null,
  FOREIGN KEY (place_id) REFERENCES Place(id),
  created_at TIMESTAMP
);

CREATE TABLE Member (
  id INTEGER PRIMARY KEY,
  name VARCHAR(100) not null,
  born TIMESTAMP not null,
  created_at TIMESTAMP
);

CREATE TABLE Place (
  id INTEGER PRIMARY KEY,
  name VARCHAR(250) not null,
  created_at TIMESTAMP
);

CREATE TABLE EventMember (
  id INTEGER PRIMARY KEY,
  eventId INTEGER not null,
  member_id INTEGER not null,
  created_at TIMESTAMP not null,
  FOREIGN KEY (eventId) REFERENCES Event(id),
  FOREIGN KEY (member_id) REFERENCES Member(id)
);

CREATE TABLE Speaker (
  id INTEGER PRIMARY KEY,
  event_member_id INTEGER not null,
  specialization VARCHAR(250),
  FOREIGN KEY (event_member_id) REFERENCES EventMember(id)
);

CREATE TABLE Entrance (
  id INTEGER PRIMARY KEY,
  event_id INTEGER not null,
  member_id INTEGER not null,
  role VARCHAR(50) not null,
  price DECIMAL(10, 2) not null,
  purchased_at TIMESTAMP,
  FOREIGN KEY (event_id) REFERENCES Event(id),
  FOREIGN KEY (member_id) REFERENCES EventMember(member_id)
);

-- Insert statement:

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
VALUES (1, 1, 'Role1', 25.99, '2023-11-17 08:00:00'),
       (1, 3, 'Role2', 25.99, '2023-11-17 08:00:00'),
       (1, 4, 'Role3', 25.99, '2023-11-17 08:00:00'),
       (1, 7, 'Role4', 25.99, '2023-11-17 08:00:00'),
       (1, 8, 'Role5', 25.99, '2023-11-17 08:00:00'),
       (2, 1, 'Role6', 13.99, '2023-12-17 08:00:00'),
       (2, 2, 'Role7', 13.99, '2023-12-17 08:00:00'),
       (2, 5, 'Role8', 13.99, '2023-12-17 08:00:00'),
       (2, 6, 'Role9', 13.99, '2023-12-17 08:00:00'),
       (2, 7, 'Role10', 13.99, '2023-12-17 08:00:00'),
       (3, 2, 'Role11', 32.99, '2024-01-17 08:00:00'),
       (3, 3, 'Role12', 32.99, '2024-01-17 08:00:00'),
       (3, 4, 'Role13', 32.99, '2024-01-17 08:00:00'),
       (3, 5, 'Role14', 32.99, '2024-01-17 08:00:00'),
       (3, 6, 'Role15', 32.99, '2024-01-17 08:00:00'),
       (3, 8, 'Role16', 32.99, '2024-01-17 08:00:00');

-- Drop statement :


DROP TABLE IF EXISTS Entrance;

DROP TABLE IF EXISTS Speaker;

DROP TABLE IF EXISTS EventMember;

DROP TABLE IF EXISTS Place;

DROP TABLE IF EXISTS Member;

DROP TABLE IF EXISTS Event;








