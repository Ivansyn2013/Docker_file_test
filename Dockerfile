FROM mysql:8
LABEL maintainer="ivan"
MAINTAINER ivan

#ENV MYSQL_ROOT_PASSWORD=123
#ENV MYSQL_ENTER=""$MYSQL_ROOT_PASSWORD" mysql -h "localhost" -u "root"  source /app/sample/med_prod_db_DLL.sql "$@""
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
ENV MYSQL_ROOT_HOST=%

COPY ./123.sql /docker-entrypoint-initdb.d
#COPY ./sql_global_var2.cnf /etc/my.cnf.d/
#COPY ./.my.cnf ~/ 
#WORKDIR /app/sample




EXPOSE 3306
