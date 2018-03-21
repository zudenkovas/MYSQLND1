-- Pratybos 2
-- 1. Papildykite autorių lentelę 2 įrašais; - 
INSERT INTO `authors` SET authorId=9, name='Tim Ferris'; 
INSERT INTO `authors` SET authorId=10, name='John Cook';

-- 2. Papildykite knygų lentelę, 3 įrašais apie
-- autorius įrašėte prieš tai. - 
INSERT INTO `books` SET `bookId`=9, `authorId`=9, `title`='4 Hour Work Week', `year`=2006;
INSERT INTO `books` SET `bookId`=10, `authorId`=10, `title`='Hello World', `year`=2006;
INSERT INTO `books` SET `bookId`=11, `authorId`=10, `title`='Hello Moon', `year`=2009;

-- 3. Pakeiskite vienos knygos autorių į kitą.
UPDATE `books` SET `authorId`=9 WHERE `bookId`=10