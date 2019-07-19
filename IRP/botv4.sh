#/bin/bash
curl -k "https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm" -o webpageresponse --no-keepalive
a=$(cat webpageresponse | grep -i 'input id="k" type="hidden"' | cut -c 36-67)
b=$(cat webpageresponse | grep -i 'input id="p" type="hidden"' | cut -c 36-67)
#Turn on Debugging
echo $a >log/a
echo $b >log/b
#New Release
#From 13th February 2019 we are removing the categories in our appointment system. We hope this will simplify the process for our customers. When you make an appointment choose the category All. For a number of weeks the three other categories will continue to appear. If you choose one of these categories, you will be limiting your choices of appointment.

url="https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?readform&cat=All&sbcat=All&typ=Renewal&k=$a&p=$b&_=1552226714265"
#Turn on Debugging
echo $url >>log/url
response=$(/usr/bin/curl -k $url -H 'Cookie: _ga=GA1.3.600024356.1552166801; _gid=GA1.3.1557376724.1552166801' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed)
#Turn on Debugging
echo $response >>log/response
if echo $response | grep -q '"empty"'; then
echo "response: "$response
#prepare the response and remove "{} because --data in curl is not comfortable with it.
#debug only to test the response data could pass to chime notification.
else
responseformated=$(echo $response | jq '.slots[].time' | tr -d '"-' | tr ' ' '_' | awk '{printf "%s\\n", $0}' )
curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Type: All-All: '$responseformated': Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!!"}'
echo "Response: "$responseformated on $DateTime >>log/responseformated
echo "Response responseformated: "$responseformated on $DateTime >>log/responseformated
fi

rm -f webpageresponse
