CREATE TABLE `book_language` (
  `book_language_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint(10) unsigned DEFAULT NULL,
  `language_id` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`book_language_id`),
  UNIQUE KEY `book_language_id_UNIQUE` (`book_language_id`),
  KEY `book_language_book_fk_idx` (`book_id`),
  KEY `book_language_language_fk_idx` (`language_id`),
  CONSTRAINT `book_language_book_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `book_language_language_fk` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci