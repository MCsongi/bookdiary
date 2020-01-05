CREATE TABLE `author_language` (
  `author_language_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(10) unsigned DEFAULT NULL,
  `language_id` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`author_language_id`),
  UNIQUE KEY `author_language_id_UNIQUE` (`author_language_id`),
  KEY `author_language_author_fk_idx` (`author_id`),
  KEY `author_language_language_fk_idx` (`language_id`),
  CONSTRAINT `author_language_author_fk` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `author_language_language_fk` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci