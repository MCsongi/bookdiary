CREATE TABLE `location` (
  `location_id` bigint(10) unsigned NOT NULL,
  `continent` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci