DROP DATABASE IF EXISTS text_board;
CREATE DATABASE text_board;
USE text_board;

CREATE TABLE article (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	title CHAR(100) NOT NULL,
	`body` TEXT NOT NULL
);

CREATE TABLE `member` (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	loginId CHAR(20) NOT NULL,
	loginPw CHAR(100) NOT NULL,
	`name` CHAR(100) NOT NULL
);

DROP TABLE `member`;
DROP TABLE article;

SELECT * FROM article;
SELECT * FROM `member`;

# 테스트 회원 추가
INSERT INTO `member` SET regDate = NOW(), updateDate = NOW(), loginId = 'user1', loginPw = 'user1', `name` = "홍길동";
INSERT INTO `member` SET regDate = NOW(), updateDate = NOW(), loginId = 'user2', loginPw = 'user2', `name` = "홍길순";
INSERT INTO `member` SET regDate = NOW(), updateDate = NOW(), loginId = 'user3', loginPw = 'user3', `name` = "임꺽정";

# 게시물 테이블에 memberId 칼럼 추가
ALTER TABLE article ADD COLUMN memberId INT(10) UNSIGNED NOT NULL AFTER updateDate;

# 게시물 hit 칼럼 추가
ALTER TABLE article ADD COLUMN hit INT(10) UNSIGNED NOT NULL AFTER `body`;

# 테스트 회원 추가
INSERT INTO article SET regDate = NOW(), updateDate = NOW(), memberId = 1, title = '제목1', `body` = '내용1', hit = 0;
INSERT INTO article SET regDate = NOW(), updateDate = NOW(), memberId = 1, title = '제목2', `body` = '내용2', hit = 0;
INSERT INTO article SET regDate = NOW(), updateDate = NOW(), memberId = 2, title = '제목3', `body` = '내용3', hit = 0;
INSERT INTO article SET regDate = NOW(), updateDate = NOW(), memberId = 3, title = '제목4', `body` = '내용4', hit = 0;
