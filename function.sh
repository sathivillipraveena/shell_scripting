#!/bin/bash
USERID=$(id -u)
validate(){    
if [ $1 -eq 0 ]
then
    echo"the $2 is successful" 
else
    echo"the $2 is failure"
    exit 1
fi
}
dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo "MySQL is already installed...Nothing to do"
fi
dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is already installed...Nothing to do"
fi