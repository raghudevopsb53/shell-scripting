#!/bin/bash

COMPONENT=mysql
source components/common.sh

INFO "Setup MySQL Component"

INFO "Setup MySQL YUM Repositories"
echo '[mysql57-community]
name=MySQL 5.7 Community Server
baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/7/$basearch/
enabled=1
gpgcheck=0' > /etc/yum.repos.d/mysql.repo
STAT $? "Setup repository"

INFO "Install MySQL Server"
yum remove mariadb-libs -y &>>$LOG_FILE
yum install mysql-community-server -y  &>>$LOG_FILE
STAT $? "MySQL Installation"

INFO "Start MYSQL Service"
systemctl enable mysqld &>>$LOG_FILE
systemctl start mysqld &>>$LOG_FILE
STAT $? "MYSQL Service Startup"

echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'P@5sw0rd123';
uninstall plugin validate_password;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';" >/tmp/schema.sql

MYSQL_DEFAULT_PASSWORD=$(grep 'A temporary password' /var/log/mysqld.log | awk '{print $NF}')

INFO "Reset MySQL Password"
mysql --connect-expired-password -u root -p${MYSQL_DEFAULT_PASSWORD} < /tmp/schema.sql &>>$LOG_FILE
STAT $? "Password Reset"


