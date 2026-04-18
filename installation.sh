#!/bin/bash
USERID=$(id -u)
if[ USERID -ne 0 ]
then 
    echo " ERROR: user is not super user"
    exit 1
fi
dnf install mysql -y