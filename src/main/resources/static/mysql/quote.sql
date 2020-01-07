CREATE TABLE `quote` (
  `quote_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_body` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`quote_id`),
  UNIQUE KEY `quote_id_UNIQUE` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci