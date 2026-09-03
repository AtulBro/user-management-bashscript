# User Management - Creating a local user
A bash-based Linux user management project focused on creating local user and configuring basic account setting.

## Project requirement
- Script should ne executed with root user else exit with status 1
- Script will take list argument as user and root will be treated as comment
- Auto generate password for user
- upon successful creation of local user, Display following:
  - username
  - password
  - hostname
 
## Step to create script
1. Check if the script is being executed with SU privilege
2. if the user doesn't supply atleast one argument then give them help
3. the first parameter is the username
4. The resy of the parameyer are for the comments
5. Generate a password
6. Create the user with that password
7. Check to see if the useradd command succeeded
8. Set the password
9. Check to see if the password command succeeded
10. Force password change on first login
11. Display username,password,hostname where the user is created
