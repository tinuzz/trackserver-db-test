ALTER TABLE `wp_ts_locations` ALTER occurred SET DEFAULT '1971-01-01 00:00:00', ALTER created SET DEFAULT '1971-01-01 00:00:00';
ALTER TABLE `wp_ts_tracks` ALTER created SET DEFAULT '1971-01-01 00:00:00';

ALTER TABLE `wp_ts_tracks` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `wp_ts_tracks` CHANGE `name` `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;
ALTER TABLE `wp_ts_tracks` CHANGE `source` `source` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;
ALTER TABLE `wp_ts_tracks` CHANGE `comment` `comment` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

ALTER TABLE `wp_ts_locations` ADD INDEX `trip_id_occurred` (`trip_id`, `occurred`);
