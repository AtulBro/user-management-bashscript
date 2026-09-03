#!bin/bash

#Script should be executed with sudo/root access

if [[ "$UID" -ne 0 ]]
then
	echo "Please run with sudo or root"
	exit 1
fi

#User should provide atleast one argument as username else guide him.

if [[ "${#}" -le 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo 'Create a user with name USER_NAME and comment field of comment'
	exit 1
fi


#Store 1st argument 
USER_NAME="${1}"

#In case of more than one argyment, store ir as account comments

shift
COMMENT="${@}"

#Create a password
PASSWORD=$(date +%s%N)

#Create a user
useradd -c "${COMMENT}" -m $USER_NAME

#Check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "User is not created"
	exit 1
fi

#Set password for the user

echo $PASSWORD | passwd --stdin $USER_NAME

#Check if password is successfully set or not 
if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

#Force password change on first login
passwd -e $USER_NAME

#Display the username,password,and the hostname

echo "username: $USER_NAME"
echo "password: $PASSWORD"
echo "Hostname: $(hostname)"

