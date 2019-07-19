curl -k "https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm" -o response --no-keepalive
a=$(cat response | grep -i 'input id="k" type="hidden"' | cut -c 36-67)
b=$(cat response | grep -i 'input id="p" type="hidden"' | cut -c 36-67)

#Type1: Other Renew
url="https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?readform&cat=Other&sbcat=All&typ=Renewal&k=$a&p=$b&_=1547387308211"
response=$(/usr/bin/curl -k $url -H 'Cookie: _ga=GA1.3.388049257.1547282444; _gid=GA1.3.230008967.1547282444; cookieconsent_status=dismiss; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed)
#This is for debug, create a log folder and also remove the old folder.

if [ ! -d "log/" ]; then
mkdir log/
fi


#Turn on debug indication message to log folder.
#Get local date and time:
DateTime=$(date +"%Y%m%d""T""%H%M%S""Z")
echo "Bot started on $DateTime, Debug is set to on, please keep an eye on the folder size">>log/debug.log
#format the response with the followings:
#remove ", - , also add "\n because the webhook treats it as a new line, this will be used later on."
if echo $response | grep -q '"empty"'; then
echo $response
#Debug: Output response to a file. 
#prepare the response and remove {} because --data in curl is not comfortable with it.
#debug only to test the response data could pass to chime notification.
#curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Time slot: '$responseformated':IRP Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!! --This is for debug ony."}'
else
responseformated=$(echo $response | jq '.slots[].time' | tr -d '"-' | tr ' ' '_' | awk '{printf "%s\\n", $0}')
echo "Other New response: "$response on $DateTime >>log/.otherrenewresponse
echo "Other New response responseformated: "$responseformated on $DateTime >>log/otherrenewresponseformated
#echo $responseformated >log/.responseformated
curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Other-Renew:'$responseformated':Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!!"}'
fi

#Type Other New

othernewurl="https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?readform&cat=Work&sbcat=All&typ=New&k=$a&p=$b&_=1547387308211"
othernewresponse=$(/usr/bin/curl -k $othernewurl -H 'Cookie: _ga=GA1.3.388049257.1547282444; _gid=GA1.3.230008967.1547282444; cookieconsent_status=dismiss; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed)
if echo $othernewresponse | grep -q '"empty"'; then
echo $othernewresponse
#prepare the response and remove "{} because --data in curl is not comfortable with it.
#debug only to test the response data could pass to chime notification.
else
othernewresponseformated=$(echo $othernewresponse | jq '.slots[].time' | tr -d '"-' | tr ' ' '_' | awk '{printf "%s\\n", $0}')
echo "OtherNew response: "$othernewresponse on $DateTime >>log/othernewresponse
echo "OtherNew response othernewresponseformated: "$othernewresponseformated on $DateTime >>log/othernewresponseformated
curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Work-New: '$othernewresponseformated': Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!!"}'
fi

#Type3 Work New

worknewurl="https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?readform&cat=Work&sbcat=All&typ=New&k=$a&p=$b&_=1547387308211"
worknewresponse=$(/usr/bin/curl -k $worknewurl -H 'Cookie: _ga=GA1.3.388049257.1547282444; _gid=GA1.3.230008967.1547282444; cookieconsent_status=dismiss; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed)
if echo $worknewresponse | grep -q '"empty"'; then
echo $worknewresponse
#prepare the response and remove "{} because --data in curl is not comfortable with it.
#debug only to test the response data could pass to chime notification.
else
worknewresponseformated=$(echo $worknewresponse | jq '.slots[].time' | tr -d '"-' | tr ' ' '_' | awk '{printf "%s\\n", $0}')
echo "WorkNew response: "$worknewresponse on $DateTime >>log/.worknewresponse
echo "WorkNew response worknewresponseformated: "$worknewresponseformated on $DateTime >>log/worknewresponseformated
curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Work-New: '$worknewresponseformated': Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!!"}'
fi

#Type4 Work Renew

workrenewurl="https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?readform&cat=Work&sbcat=All&typ=Renewal&k=$a&p=$b&_=1547387308211"
workrenewresponse=$(/usr/bin/curl -k $workrenewurl -H 'Cookie: _ga=GA1.3.388049257.1547282444; _gid=GA1.3.230008967.1547282444; cookieconsent_status=dismiss; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed)
#echo $workrenewurl >log/.workrenewurl
if echo $workrenewresponse | grep -q '"empty"'; then
echo "workrenewresponse: "$workrenewresponse
#prepare the response and remove "{} because --data in curl is not comfortable with it.
#debug only to test the response data could pass to chime notification.
else
workrenewresponseformated=$(echo $workrenewresponse | jq '.slots[].time' | tr -d '"-' | tr ' ' '_' | awk '{printf "%s\\n", $0}' )
curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Work-Renew: '$workrenewresponseformated': Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!!"}'
echo "Work Renew Response: "$workrenewresponse on $DateTime >>log/.workrenewresponse
echo "Work Renew Response workrenewresponseformated: "$workrenewresponseformated on $DateTime >>log/workrenewresponseformated
fi

rm -f response
