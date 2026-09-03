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
- Check if the script is being executed with SU privilege
- if the user doesn't supply atleast one argument then give them help
- the first parameter is the username
- The resy of the parameyer are for the comments
- Generate a password
- Create the user with that password
- Check to see if the useradd command succeeded
- Set the password
- Check to see if the password command succeeded
- Force password change on first login
- Display username,password,hostname where the user is created
