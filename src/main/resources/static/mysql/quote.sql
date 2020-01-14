CREATE TABLE `quote` (
  `quote_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `book_details_id` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`quote_id`),
  UNIQUE KEY `quote_id_UNIQUE` (`quote_id`),
  KEY `quote_book_details_fk_idx` (`book_details_id`),
  CONSTRAINT `quote_book_details_fk` FOREIGN KEY (`book_details_id`) REFERENCES `book_details` (`book_details_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci