CREATE TABLE `genre` (
  `genre_id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name_en` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_name_ro` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_name_hu` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `genre_id_UNIQUE` (`genre_id`),
  UNIQUE KEY `genre_name_en_UNIQUE` (`genre_name_en`),
  UNIQUE KEY `genre_name_ro_UNIQUE` (`genre_name_ro`),
  UNIQUE KEY `genre_name_hu_UNIQUE` (`genre_name_hu`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci