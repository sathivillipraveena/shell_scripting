g='\e[32m'
r='\e[31m'
LOG_FOLDER=/var/log/shell_scripting
script_name=$(ech0"$0" | cut -d "." -f1)
log_file="$LOG_FOLDER/$script_name.log"
mkdir -p $LOG_FOLDER
validate(){
    if [ $1 -ne 0 ] 
    then
        echo -e " ${r} ERROR: $2 is not found " tee -a logs.log
        install $2
    fi
}
install(){
    dnf install $1 -y & >> logs.log
}
dnf list installed mysql & >> logs.log
status=$?
if [ $status -eq 0 ]
then
    echo -e " ${g} mysql is installed" tee -a logs.log
    exit 0
else 
    validate $status "mysql"
fi

