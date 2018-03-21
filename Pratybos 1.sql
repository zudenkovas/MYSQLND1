-- Pratybos 1
-- Išrinkite visus įrašus iš Knygų lentelės 
SELECT * FROM `books`

-- Išrinkite tik Knygų pavadinimus abėcėles tvarka.
SELECT * FROM `books` ORDER BY `title` ASC

-- Suskaičiuokite kiek knygų kiekvieno autoriaus yra knygų lentelėje
SELECT `authorId`, count(`authorId`) FROM `books` GROUP BY `authorId`


