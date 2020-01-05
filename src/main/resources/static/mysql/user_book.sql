CREATE TABLE `user_book` (
  `user_book_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) unsigned DEFAULT NULL,
  `book_id` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_book_id`),
  UNIQUE KEY `user_book_id_UNIQUE` (`user_book_id`),
  KEY `user_book_book_fk_idx` (`book_id`),
  KEY `user_book_user_fk_idx` (`user_id`),
  CONSTRAINT `user_book_book_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON UPDATE CASCADE,
  CONSTRAINT `user_book_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci