-- Pratybos 7
-- Papildyti duomenų bazę kad būtų galima:
-- 1. Knygos gali turėti vieną ir daugiau autorių.
CREATE TABLE `bookAuthors` ( `bookAuthorsId` INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, `authorId` INT(11) UNSIGNED NOT NULL, `bookId` INT(11) UNSIGNED NOT NULL );
INSERT INTO `bookauthors`(`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `books`;


-- 2. Sutvarkyti duomenų bazės duomenis, jei reikia
-- papildykite naujais.
ALTER TABLE `books` DROP COLUMN `authorId`;
INSERT INTO `bookauthors`(`authorId`, `bookId`) VALUES ('1', '2'), ('3','2'), ('4','2');

-- 3. Išrinkite visas knygas su jų autoriais. (autorius, jei jų
-- daugiau nei vienas atskirkite kableliais)
SELECT `books`.`title`, GROUP_CONCAT(`authors`.`name`) FROM `books` INNER JOIN `bookauthors` ON `books`.`bookId` = `bookauthors`.`bookId` INNER JOIN `authors` ON `authors`.`authorId` = `bookauthors`.`authorId` GROUP BY `books`.`bookId`


-- 4. Sutvarkykite knygų lentelę, kad galėtumėte išsaugoti
-- originalų knygos pavadinimą. (Pavadinime išsaugokite,
-- lietuviškas raides kaip ą,ė,š ir pan.)
ALTER TABLE `books` CONVERT TO CHARACTER SET utf8 COLLATE utf8_lithuanian_ci