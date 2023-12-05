CREATE TABLE Event (
  id INTEGER PRIMARY KEY,
  name VARCHAR(250) unique not null,
  date TIMESTAMP not null,
  place_id INTEGER not null,
  members VARCHAR,
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