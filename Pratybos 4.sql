-- Pratybos 4
-- Suskaičiuokite kiek knygų kiekvieno autor duomenų bazėje (įtraukdami autorius kuri bei neįtraukdami šių autorių). - 
SELECT `authors`.`name`, COUNT(`books`.`bookId`) FROM `books` INNER JOIN `authors` ON `authors`.`authorId`=`books`.`authorId` GROUP BY `authors`.`authorId`;
SELECT `authors`.`name`, `authors`.`authorId`, COUNT(`books`.`bookId`) FROM `authors` LEFT JOIN `books` ON `authors`.`authorId`=`books`.`authorId` GROUP BY `authors`.`authorId`

-- Pašalinkite knygas, kurios neturi autorių
DELETE From `books` WHERE `authorId` IS NULL;