CREATE TABLE `book_details` (
  `book_details_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `cover` blob,
  `number_of_pages` int(5) unsigned DEFAULT NULL,
  `plot` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `characters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `read_year` int(4) unsigned DEFAULT NULL,
  `read_times` int(2) unsigned DEFAULT NULL,
  `book_id` bigint(10) unsigned DEFAULT NULL,
  `user_id` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`book_details_id`),
  UNIQUE KEY `book_details_id_UNIQUE` (`book_details_id`),
  KEY `book_details_book_fk_idx` (`book_id`),
  KEY `book_details_user_fk_idx` (`user_id`),
  CONSTRAINT `book_details_book_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON UPDATE CASCADE,
  CONSTRAINT `book_details_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci