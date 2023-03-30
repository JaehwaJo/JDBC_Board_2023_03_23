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

# 테스트 회원 추가
INSERT INTO `member` SET regDate = NOW(), updateDate = NOW(), loginId = 'admin', loginPw = 'admin', `name` = "관리자";
INSERT INTO `member` SET regDate = NOW(), updateDate = NOW(), loginId = 'user1', loginPw = 'user1', `name` = "홍길동";
INSERT INTO `member` SET regDate = NOW(), updateDate = NOW(), loginId = 'user2', loginPw = 'user2', `name` = "홍길순";