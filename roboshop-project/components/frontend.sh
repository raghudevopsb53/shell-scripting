#!/bin/bash

COMPONENT=frontend
source components/common.sh

INFO "Setup Frontend Component"
INFO "Installing Nginx"
yum install nginx -y &>>$LOG_FILE
STAT $? "Nginx Installation"