--ejercicio 3
UPDATE employees SET Phone = Fax, Fax = Phone 

--ejercicio 4
UPDATE tracks SET GenreId = NULL
 WHERE GenreId in (SELECT g.GenreId from genres g
                LEFT join tracks t on g.GenreId = t.GenreId
                GROUP by g.name  
                HAVING count(TrackId) < 50);
				
				

DELETE FROM genres
WHERE GenreId in (SELECT g.GenreId from genres g
                LEFT join tracks t on g.GenreId = t.GenreId
                GROUP by g.name  
                HAVING count(TrackId) < 50);

----ejercicio 5 

UPDATE employees SET ReportsTo = EmployeeId
WHERE Title = "General Manager"

-----ejercicio 6
DELETE FROM invoice_items
WHERE InvoiceId in (SELECT InvoiceId FROM invoices
                    WHERE BillingState is NULL);
					
DELETE FROM invoices
WHERE InvoiceId in (SELECT InvoiceId FROM invoices
                    WHERE BillingState is NULL);