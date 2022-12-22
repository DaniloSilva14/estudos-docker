USE ccab;

CREATE TABLE `file_analysis_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_analysis_job` varchar(64) NOT NULL,
  `raw_file_analysis` text NOT NULL,
  `type` int NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `IDX_7b42d5607dea2c5cd6d6b99edc` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `file_models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `file_analysis` text NOT NULL,
  `file_analysis_job` varchar(64) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `IDX_b0314332feb44320127028060c` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `file_model_identifiers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_model_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `original_key` varchar(255) DEFAULT NULL,
  `field` tinyint NOT NULL DEFAULT '1',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `FK_216f041751991c671d161bcd6be` (`file_model_id`),
  CONSTRAINT `FK_216f041751991c671d161bcd6be` FOREIGN KEY (`file_model_id`) REFERENCES `file_models` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
