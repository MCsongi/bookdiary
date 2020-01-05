CREATE TABLE `user` (
  `user_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role_id` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `user_role_fk_idx` (`role_id`),
  CONSTRAINT `user_role_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci