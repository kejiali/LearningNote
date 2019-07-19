curl -k "https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm" -o response --no-keepalive
a=$(cat response | grep -i 'input id="k" type="hidden"' | cut -c 36-67)
#echo k=$string1
b=$(cat response | grep -i 'input id="p" type="hidden"' | cut -c 36-67)
url="https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/(getAppsNear)?readform&cat=Other&sbcat=All&typ=Renewal&k=$a&p=$b&_=1547387308211"
#echo $url
#echo $parameter
response=$(/usr/bin/curl -k $url -H 'Cookie: _ga=GA1.3.388049257.1547282444; _gid=GA1.3.230008967.1547282444; cookieconsent_status=dismiss; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed)
#fullurl output debug only
#fullurl=$url" -H 'Cookie: _ga=GA1.3.388049257.1547282444; _gid=GA1.3.230008967.1547282444; cookieconsent_status=dismiss; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed"
#echo $fullurl >>.fullurl
responseformated=$(echo $response | tr -d '{}"[]/ ' | cut -d ':' -f 3)
if echo $response | grep -q '"empty":"TRUE"'; then
echo $response
#prepare the response and remove "{} because --data in curl is not comfortable with it.
#debug only to test the response data could pass to chime notification.
#curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All Time slot: '$responseformated':IRP Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!! --This is for debug ony."}'
else
#echo $response >.result
curl -X POST "https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c?token=OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF" -H "Content-Type:application/json" --data '{"Content":"@All '$responseformated':IRP Appointment is available now, please go to https://burghquayregistrationoffice.inis.gov.ie/Website/AMSREG/AMSRegWeb.nsf/AppSelect?OpenForm!!"}'
fi
rm -f response
