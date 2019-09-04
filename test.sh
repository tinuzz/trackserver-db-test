#!/bin/sh
SET_SQL_MODE=$1
mysql="mysql -h 127.0.0.1 -u root"

if [ "$SET_SQL_MODE" = "y" ]; then
  echo "Setting SQL_MODE"
  $mysql -e "SET GLOBAL sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
fi

echo "Creating tables"
$mysql trackserver < setup.sql

if [ "$SET_SQL_MODE" = "y" ]; then
  echo "Reverting SQL_MODE"
  $mysql -e "SET GLOBAL sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
fi

echo "Running update queries"
$mysql trackserver < update.sql

echo "Output follows"
$mysql trackserver < output.sql
