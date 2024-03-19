SELECT * FROM INHABITANT
SELECT * FROM inhabitant WHERE state = 'friendly'
SELECT * FROM inhabitant WHERE state = 'friendly' AND job = 'weaponsmith'
SELECT * FROM inhabitant WHERE state = 'friendly' AND job LIKE  '%smith'
INSERT INTO inhabitant (name, villageid, gender, job, gold, state) VALUES ('Stranger', 1, '?', '?', 0, '?')
SELECT personid FROM inhabitant WHERE name = 'Stranger'
SELECT gold FROM inhabitant WHERE name = 'Stranger'
SELECT * FROM ITEM WHERE owner IS NULL  