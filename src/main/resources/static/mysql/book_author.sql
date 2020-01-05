CREATE TABLE `book_author` (
  `author_book_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint(10) unsigned DEFAULT NULL,
  `author_id` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`author_book_id`),
  UNIQUE KEY `author_book_id_UNIQUE` (`author_book_id`),
  KEY `author_book_author_fk_idx` (`author_id`),
  KEY `author_book_book_fk_idx` (`book_id`),
  CONSTRAINT `book_author_author_fk` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON UPDATE CASCADE,
  CONSTRAINT `book_author_book_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci