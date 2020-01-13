CREATE TABLE `quote` (
  `quote_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`quote_id`),
  UNIQUE KEY `quote_id_UNIQUE` (`quote_id`),
  CONSTRAINT `quote_book_details_fk` FOREIGN KEY (`quote_id`) REFERENCES `book_details` (`quote_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci