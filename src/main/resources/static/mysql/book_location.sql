CREATE TABLE `book_location` (
  `book_location_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint(10) unsigned DEFAULT NULL,
  `location_id` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`book_location_id`),
  UNIQUE KEY `book_location_id_UNIQUE` (`book_location_id`),
  KEY `book_location_book_fk_idx` (`book_id`),
  KEY `book_location_location_fk_idx` (`location_id`),
  CONSTRAINT `book_location_book_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `book_location_location_fk` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci