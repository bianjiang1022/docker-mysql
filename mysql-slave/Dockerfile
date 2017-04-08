FROM mysql:latest

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/shanghai" >> /etc/timezone
COPY mysqld.cnf /etc/mysql/mysql.conf.d/
COPY entrypoint.sh /
COPY slave-init.sh /docker-entrypoint-initdb.d/
