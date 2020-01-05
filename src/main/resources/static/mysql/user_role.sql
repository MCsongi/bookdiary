CREATE TABLE `user_role` (
  `user_role_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) unsigned DEFAULT NULL,
  `role_id` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `user_role_id_UNIQUE` (`user_role_id`),
  KEY `user_role_role_idx` (`role_id`),
  KEY `user_role_user_fk_idx` (`user_id`),
  CONSTRAINT `user_role_role_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_role_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci