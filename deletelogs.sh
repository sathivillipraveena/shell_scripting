#!/bin/bash

USERID=$(id -u)
r='\e[31m'
g='\e[32m'
y='\e[33m'
n='\e[0m'
LOGS_FOLDER="/var/log/shell_scripting.log"
SCRIPT_NAME=$(echo " $0 " | cut -d "."  -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
SOURCE_DIR="/home/ec2-user/app-logs"

if [ USERID -ne 0 ]
then
    echo -e "$r ERROR:$n user should be super user"
else
    echo -e "$g User is super user "
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo -e "$2 is ... $G SUCCESS $N" | tee -a $LOG_FILE
    else
        echo -e "$2 is ... $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    fi
}
FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)
while IFS= read -r filepath
do 
   echo "Deleting file: $filepath" | tee -a $LOG_FILE
    rm -rf $filepath
done <<< $FILES_TO_DELETE