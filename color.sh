#!/bin/bash
g=\e[32m
r=\e[31m
validate(){
    if [ $1 -ne 0 ] 
    then
        echo -e " ${r} ERROR: $2 is not found "
        install $2
    fi
}
install(){
    dnf install $1 -y
}
dnf list installed mysql
status=$?
if [ $status -eq 0 ]
then
    echo -e " ${g} mysql is installed"
    exit 0
else 
    validate $status "mysql"
fi

