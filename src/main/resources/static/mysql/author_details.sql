CREATE TABLE `author_details` (
  `author_details_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `portrait` blob,
  `about` text COLLATE utf8mb4_unicode_ci,
  `author_id` bigint(10) unsigned DEFAULT NULL,
  `user_id` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`author_details_id`),
  UNIQUE KEY `author_details_id_UNIQUE` (`author_details_id`),
  KEY `author_details_author_fk_idx` (`author_id`),
  KEY `author_details_user_fk_idx` (`user_id`),
  CONSTRAINT `author_details_author_fk` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `author_details_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci