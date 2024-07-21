
REM Here is an example code that you can use with a Rubber Ducky to change a user's password in Windows using PowerShell:


REM Script to change user password in Windows with Rubber Ducky

REM Open PowerShell as admin
WINDOWS r
DELAY 500
STRING powershell Start-Process powershell -Verb runAs
ENTER
DELAY 1000

REM Prompt user for permission
STRING $confirmation = Read-Host "Do you want to change the password? (Y/N)"
ENTER
DELAY 500

REM Check for user confirmation
STRING if ($confirmation -eq "Y") {
ENTER
DELAY 500

REM Prompt user for username and new password
STRING $username = Read-Host "Enter username"
ENTER
DELAY 500
STRING $newpassword = Read-Host "Enter new password"
ENTER
DELAY 500

REM Change user password
STRING net user $username $newpassword
ENTER
DELAY 500

REM Notify user of password change
STRING Write-Host "Password changed successfully"
ENTER
DELAY 500
} else {
ENTER
DELAY 500
STRING Write-Host "Password change cancelled"
ENTER
DELAY 500
}


REM You can load this script onto a Rubber Ducky and run it on a Windows system to prompt the user for permission and then change the password for the specified user account. Just be sure to test it thoroughly before using it on a production system.
