PRAGMA foreign_keys = ON;

INSERT INTO users (username, password)
VALUES ("dokastho", "password");

INSERT INTO containers (name, owner, content, topic)
VALUES ("Test basic container", "dokastho", "test content", "Bio");

INSERT INTO containers (name, owner, topic)
VALUES ("Test empty container", "dokastho", "Bio");

INSERT INTO tags (name, owner, colorHex)
VALUES ("Programming Languages", "dokastho", "f3f3f3");
INSERT INTO tags (name, owner, colorHex)
VALUES ("Soft Skills", "dokastho", "01a2b3");

INSERT INTO tags_to_containers (tId, cId, owner)
VALUES (1, 1, "dokastho");
INSERT INTO tags_to_containers (tId, cId, owner)
VALUES (2, 1, "dokastho");