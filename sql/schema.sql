PRAGMA foreign_keys = ON;

CREATE TABLE users(
  username VARCHAR(20) NOT NULL,
  password VARCHAR(256) NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(username)
);

CREATE TABLE containers(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64),
  owner VARCHAR(20) NOT NULL,
  topic VARCHAR(20) NOT NULL,
  content TEXT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(owner) REFERENCES users(username) ON DELETE CASCADE
);

CREATE TABLE tags(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64) NOT NULL,
  owner VARCHAR(20) NOT NULL,
  colorHex VARCHAR(6) NOT NULL,
  FOREIGN KEY(owner) REFERENCES users(username) ON DELETE CASCADE
);

CREATE TABLE tags_to_containers(
  tId INTEGER NOT NULL,
  cId INTEGER NOT NULL,
  owner VARCHAR(20) NOT NULL,
  FOREIGN KEY(tId) REFERENCES tags(id) ON DELETE CASCADE,
  FOREIGN KEY(cId) REFERENCES containers(id) ON DELETE CASCADE,
  FOREIGN KEY(owner) REFERENCES users(username) ON DELETE CASCADE
);
