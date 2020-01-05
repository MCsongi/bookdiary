CREATE TABLE `role` (
  `role_id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`),
  UNIQUE KEY `role_name_UNIQUE` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci