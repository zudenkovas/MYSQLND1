-- Pratybos 5
-- 1. Trinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių,
-- išrinkdami pasirinktinai du stulpelius.
SELECT `authors`.`authorId`, `authors`.`name` FROM `authors` UNION SELECT `books`.`authorId`, `books`.`bookId` FROM `books`
