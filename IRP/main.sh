#!/bin/bash
NOW=$(date +"%H%M")
while true; do
if [ ${NOW} -ge 0845 ] && [ ${NOW} -le 1200 ]; then
echo "Press [CTRL+C] to stop.."
echo "Peak Hour Job started, interval is set to 2 sec.........."
#curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Peak Time Job started, the fresh interval is set to Every 2 secs."}'
bash botv4.sh
sleep 2
elif [ "$NOW" -ge 1201 ] && [ "$NOW" -le 2200 ]; then
echo "Press [CTRL+C] to stop.."
echo "Less Peak Hour Job started, interval is set to 30 sec.........."
#curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Off-Peak Time Job started, the fresh interval is set to Every 30 secs."}'
#watch -n 30 bash botv3.sh
bash botv4.sh
#echo OK
sleep 30
else
echo "Press [CTRL+C] to stop.."
echo "Nightline Job started, interval is set to 120 sec"
#curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Night Time Job started, the fresh interval is set to Every 30 mins."}'
#watch -n 1800 bash botv3.sh
bash botv4.sh
#echo nok
sleep 1800
fi
#sleep 2
NOW=$(date +"%H%M")
done

