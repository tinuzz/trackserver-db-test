CREATE TABLE IF NOT EXISTS wp_ts_locations (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `trip_id` int(11) NOT NULL,
          `latitude` double NOT NULL,
          `longitude` double NOT NULL,
          `altitude` double NOT NULL,
          `speed` double NOT NULL,
          `heading` double NOT NULL,
          `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
          `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
          `occurred` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
          `comment` varchar(255) NOT NULL,
          `hidden` tinyint(1) NOT NULL DEFAULT '0',
          PRIMARY KEY (`id`),
          KEY `occurred` (`occurred`),
          KEY `trip_id` (`trip_id`)
          ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS wp_ts_tracks (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `user_id` int(11) NOT NULL,
          `name` varchar(255) NOT NULL,
          `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
          `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
          `source` varchar(255) NOT NULL,
          `comment` varchar(255) NOT NULL,
          `distance` int(11) NOT NULL,
          PRIMARY KEY (`id`),
          KEY `user_id` (`user_id`)
          ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

