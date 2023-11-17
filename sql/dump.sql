CREATE TABLE Event (
  id INTEGER PRIMARY KEY,
  name VARCHAR(250) unique not null,
  date TIMESTAMP not null,
  place VARCHAR not null,
  members VARCHAR,
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

INSERT INTO Event (name, date, place, members, created_at)
VALUES ('Evento 1', '2023-11-17', 'Local 1', 'Palestrante 1', '2023-11-17 12:00:00');

INSERT INTO Place (name, created_at)
VALUES ('Local do evento', '2023-11-17 12:02:00');

INSERT INTO Member (name, born, created_at)
VALUES ('Member1', '1990-01-01', '2023-11-17 12:01:00');

INSERT INTO EventMember (eventId, member_id, created_at)
VALUES (1, 1, '2023-11-17 12:03:00');

INSERT INTO Entrance (event_id, member_id, role, price, purchased_at)
VALUES (1, 1, 'Role1', 25.99, '2023-11-17 12:04:00');

INSERT INTO Speaker (event_member_id, specialization)
VALUES (1, 'Specialization1');

-- Drop statement :


DROP TABLE IF EXISTS Entrance;

DROP TABLE IF EXISTS Speaker;

DROP TABLE IF EXISTS EventMember;

DROP TABLE IF EXISTS Place;

DROP TABLE IF EXISTS Member;

DROP TABLE IF EXISTS Event;








