-- BONUS

-- Susikuriame testine db bei jai reikalingas lenteles
CREATE TABLE `news` (
newsId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
text TEXT NOT NULL,
date DATE NOT NULL
);

CREATE TABLE `comments` (
commentId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
text TEXT NOT NULL,
date DATE NOT NULL,
newsId INT(6) UNSIGNED NOT NULL
);

INSERT INTO `news` (`text`, `date`) VALUES('Lorem Ipsum ales gut 123456','2015-06-12'), 
('Lorem Ipsum ales gut 1','2017-09-20'), 
('Lorem Ipsum ales gut 2','2018-01-01'),
('Lorem Ipsum ales gut 3','2014-08-01'), 
('Lorem Ipsum ales gut 4','2011-12-03'),
('Lorem Ipsum ales gut 5','2012-12-03'),
('Lorem Ipsum ales gut 6','2013-12-03'),
('Lorem Ipsum ales gut 7','2011-12-03'),
('Lorem Ipsum ales gut 8','2012-12-03'),
('Lorem Ipsum ales gut 9','2018-12-03'),
('Lorem Ipsum ales gut 10','2017-12-03'),
('Lorem Ipsum ales gut 11','2016-12-03');


INSERT INTO `comments` (`text`, `date`, `newsId`) VALUES
('Comment1','2018-06-12', '1'), 
('comment2','2017-09-20', '2'), 
('comment3','2018-01-01', '3'),
('comment4','2014-08-01', '1'), 
('comment6','2009-12-03', '5'),
('comment7','2008-12-03', '4'),
('comment8','2007-12-03', '2'),
('comment9','2006-12-03', '2'),
('comment10','2005-12-03', '7'),
('comment11','2004-12-03', '3')


-- Straipsniai saugomi lenteles News (newsId, text, date),
-- straipsnio komentarai saugomi lentelėje Comments
-- (commentId, text, date, newsId). Išrinkite naujausios 10
-- straipsnių su paskutiniu parašytu komentaru.
SELECT `news`.`text`, `news`.`date`, `comments`.`text`, `comments`.`date` FROM `news` INNER JOIN `comments` ON `news`.`newsId` = `comments`.`newsId` INNER JOIN (SELECT `comments`.`newsId`,
MAX(`comments`.`date`) AS max_date
FROM `comments`
GROUP BY `comments`.`newsId`) x ON x.`newsId` = `comments`.`newsId`
AND x.max_date = `comments`.`date` ORDER BY `news`.`date` DESC LIMIT 10