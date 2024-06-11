SELECT Title,ArtistId, Milliseconds FROM albums, tracks --seleccionamos el titulo , artista y la duracion de la musica desde albums y pistas
SELECT FirstName, LastName, Address, City  FROM customers --seleccionamos el nombre y apellido, dirreccion, ciudad desde clientes
SELECT name, Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000 --seleccionamos el name , milisegundos DESDE la pista DONDE ES NULA Y el tiempo de duracion (de la musica) sea mayor a 2900000
SELECT FirstName, LastName, Company FROM customers WHERE NOT Company IS NULL --SELECCIONAMOS EL NOMBRE , APELLIDO Y COMPAÑIA DESDE CLIENTES DONDE MO ESTE VACIO EN COMPAÑIA 
SELECT DISTINCT BillingCity, BillingState FROM invoices WHERE NOT BillingState IS NULL 
ORDER BY BillingCity DESC --SELECCION DE DISTINCT PARA NO REPETIR LAS CIUDADES Y ESTADOS DESDE INVOICES(CARPETA) DONDE NO QUEDE VACIO LOS ESTADOS(BILLYSTATE) Y DE MENOR A MAYOR
SELECT Title FROM albums WHERE Title LIKE "%of%"
ORDER BY Title ASC --contiene = %l% , empieza = l% , termina = %l . ASC = ASCENDENTE , DESC = DECENDENTE.
