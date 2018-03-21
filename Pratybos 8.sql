
-- Pratybos 8
-- 1. Paruoškite duomenų bazės atnaujinimo skriptą. (tik
-- struktūros).

CREATE TABLE IF NOT EXISTS `bookAuthors` ( `bookAuthorsId` INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, `authorId` INT(11) UNSIGNED NOT NULL, `bookId` INT(11) UNSIGNED NOT NULL ); 
INSERT INTO `bookauthors`(`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `books`; 
ALTER TABLE `books` DROP COLUMN `authorId`; 
ALTER TABLE `books` CONVERT TO CHARACTER SET utf8 COLLATE utf8_lithuanian_ci;