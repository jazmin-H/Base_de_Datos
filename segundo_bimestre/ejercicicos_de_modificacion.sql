---insert----
INSERT into artists 
(name) VALUES
("Morat")

INSERT INTO albums
(Title,ArtistId) VALUES
("Star", 276)

INSERT INTO tracks(name, MediaTypeId, Milliseconds, UnitPrice) 
VALUES
("OnO", 4, 202428, 4.2), ("UnU", 5, 202529, 4.1), ("TnT", 5, 202630, 1.2)

-----update------

update tracks
SET MediaTypeId = 2
WHERE TrackId > 3503

------delete----
DELETE FROM tracks
WHERE name = "UnU" OR name = "OnO" OR name = "TnT";
---otra manera si es que tiene nombre repetido, usaremos id ----
DELETE FROM tracks WHERE TrackId = 3504 OR TrackId = 3505 OR TrackId = 3506;
DELETE FROM albums
WHERE Title = "Star";
DELETE FROM artists
WHERE name = "Morat";
