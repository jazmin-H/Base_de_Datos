-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la anteúltima casa
-- de la calle 'Franklin Ave'

SELECT name, address_number, address_street_name
from person
GROUP by address_number
ORDER by address_number DESC
LIMIT 1 OFFSET 1