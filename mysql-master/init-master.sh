#!/bin/bash

echo Creating replication user ...
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "\
  GRANT \
    FILE, \
    SELECT, \
    SHOW VIEW, \
    LOCK TABLES, \
    RELOAD, \
    REPLICATION SLAVE, \
    REPLICATION CLIENT \
  ON *.* \
  TO '$MYSQL_REPLICATION_USER'@'%' \
  IDENTIFIED BY '$MYSQL_REPLICATION_PASSWORD'; \
  FLUSH PRIVILEGES; \
"

