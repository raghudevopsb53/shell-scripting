#!/bin/bash

COMPONENT=rabbitmq
source components/common.sh

INFO "Setup RabbitMQ Component"

INFO "Install ErLang"
yum install https://packages.erlang-solutions.com/erlang/rpm/centos/7/x86_64/esl-erlang_22.2.1-1~centos~7_amd64.rpm -y &>>$LOG_FILE
STAT $? "ErLang Installation"

INFO "Setup RabbitMQ Repos"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash &>>$LOG_FILE
STAT $? "RabbitMQ Yum repos setup"

INFO "Install RabbitMQ Server"
yum install rabbitmq-server -y &>>$LOG_FILE
STAT $? "RabbitMQ server Install"

INFO "Start RabbitMQ Service"
systemctl enable rabbitmq-server  &>>$LOG_FILE
systemctl start rabbitmq-server &>>$LOG_FILE
STAT $? "Start RabbitMQ Service"

INFO "Create RoboShop App User in RabbitMQ"
rabbitmqctl add_user roboshop roboshop123
rabbitmqctl set_user_tags roboshop administrator
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"
STAT $? "RoboShop App USer create"
