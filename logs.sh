g='\e[32m'
r='\e[31m'
LOG_FOLDER=/var/log/shell_scripting
script_name=$(echo "$0" | cut -d "." -f1)
log_file="$LOG_FOLDER/$script_name.log"
mkdir -p $LOG_FOLDER
validate(){
    if [ $1 -ne 0 ] 
    then
        echo -e " ${r} ERROR: $2 is not found "| tee -a $log_file
        install $2
    fi
}
install(){
    dnf install $1 -y &>> $log_file
}
dnf list installed mysql &>> $log_file
status=$?
if [ $status -eq 0 ]
then
    echo -e " ${g} mysql is installed" |tee -a $log_file
    exit 0
else 
    validate $status "mysql"
fi

