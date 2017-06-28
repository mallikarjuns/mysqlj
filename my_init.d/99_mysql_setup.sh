mysql -uroot -proot -e "CREATE USER '${MYSQL_USER}'localhost'%' IDENTIFIED BY '${MYSQL_PASS}';"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'localhost' WITH GRANT OPTION; FLUSH PRIVILEGES;"
#mysql -uroot -proot -e "CREATE DATABASE IF NOT EXISTS Jiradb DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;"
docker exec -i Jiradb mysql -uroot -proot --force < /etc/Jiradb.sql


#winpty docker run -it --link *some-mariadb*:mysql --rm mariadb sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
