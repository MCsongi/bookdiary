CREATE TABLE `language` (
  `language_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `language_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_code` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_id_UNIQUE` (`language_id`),
  UNIQUE KEY `language_name_UNIQUE` (`language_name`),
  UNIQUE KEY `iso_code_UNIQUE` (`iso_code`),
  UNIQUE KEY `native_name_UNIQUE` (`native_name`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci