FROM mysql/mysql-server

#MAINTAINER Dursun KOC <dursunkoc@gmail.com>

# Copy booking initialization script: 
ADD  mysql/ /docker-entrypoint-initdb.d/
