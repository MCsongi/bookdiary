CREATE TABLE `book_genre` (
  `book_genre_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint(10) unsigned DEFAULT NULL,
  `genre_id` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`book_genre_id`),
  UNIQUE KEY `book_genre_id_UNIQUE` (`book_genre_id`),
  KEY `book_genre_book_fk_idx` (`book_id`),
  KEY `book_genre_genre_fk_idx` (`genre_id`),
  CONSTRAINT `book_genre_book_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `book_genre_genre_fk` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci