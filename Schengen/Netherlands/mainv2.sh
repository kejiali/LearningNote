#!/bin/bash
export counter=1
while true; do
NOW=$(date +"%H%M")
echo -e "\e[33mBeep-Boo, Bot started!!"
echo -e "\e[31mPress CTRL+C to stop.."
echo -e "\e[31mExection Time: $NOW.."
echo -e "\e[34m"
python business_1.py
echo -e "\e[92mSleep for 5 secs.."
sleep 5
echo $'\n'
python botv2.py
echo -e "\e[95m"
python tourism.py
echo -e "\e[31mSleep for 6 secs.."
sleep 6
echo -e "\e[0m"
echo $'\n'
counter=`expr $counter + 1`
if [ `expr $counter % 1000` == 0 ];
then
python send_message.py "I'm a bot, and has been executed $counter times to help you to find appointments.. This is also a Is-Alive Message..."
else
echo "$counter times"
fi
echo $'\n'
echo "-------------------------------"
done

