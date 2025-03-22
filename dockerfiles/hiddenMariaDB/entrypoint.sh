#!/bin/bash

# MariaDB Setup
service mariadb start

mariadb -u root -e "DATABASE hidden_db;"
mariadb -u root -e "CREATE USER 'maria'@'localhost' IDENTIFIED BY 'hidden database maria';"
mariadb -u root -e "FLUSH PRIVILEGES"
mariadb -u root -e "GRANT ALL PRIVILEGES ON hidden_db.* TO 'maria'@'%';"
service tor start

tail -f /dev/null
