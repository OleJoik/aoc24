CREATE TABLE day_1_test (
    id INTEGER PRIMARY KEY,
    a INTEGER,
    b INTEGER
);

INSERT INTO day_1_test (a, b) VALUES 
(3, 4),
(4, 3),
(2, 5),
(1, 3),
(3, 9),
(3, 3);

SELECT * from day_1_test;
