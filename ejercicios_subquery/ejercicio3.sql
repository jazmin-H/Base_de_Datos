--ejercicio 3
UPDATE employees SET Phone = Fax, Fax = Phone 

--ejercicio 4, esta incompleto
UPDATE tracks set TrackId = NULL
WHERE TrackId = (SELECT TrackId FROM playlist_track p
                 JOIN tracks t on p.TrackId = t.TrackId
                 JOIN invoice_items i on t.TrackId = i.TrackId)
				
				

DELETE FROM genres
 WHERE name in (SELECT g.name from genres g
                join tracks t on g.GenreId = t.GenreId
                GROUP by g.name  
                HAVING count(t.name) < 50)