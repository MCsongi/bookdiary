CREATE TABLE `author` (
  `author_id` bigint(10) unsigned NOT NULL,
  `first_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pseudo_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_year` int(4) DEFAULT NULL,
  `death_year` int(4) DEFAULT NULL,
  `language_id` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_id_UNIQUE` (`author_id`),
  KEY `author_language_fk_idx` (`language_id`),
  CONSTRAINT `author_language_fk` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci