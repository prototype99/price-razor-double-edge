CREATE TABLE data
(
    blades  INTEGER(2) NOT NULL,
    cost     REAL(2, 2) NOT NULL,
    delivery REAL(2, 2) NOT NULL,
    sglCost  REAL(4, 2),
    url     TEXT
);
UPDATE data SET sglCost = ( cost + delivery ) / blades;

SELECT * from data ORDER BY sglCost;
