FROM mysql:latest

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/shanghai" >> /etc/timezone

COPY mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
COPY entrypoint.sh /
COPY init-master.sh /docker-entrypoint-initdb.d/

