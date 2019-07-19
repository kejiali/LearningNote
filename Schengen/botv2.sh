#/bin/bash

#Denmark
printf "\r\n"
printf "Denmark Schengen Visa Slots:\r\n"


#Need to sort out the cookies and __RequestVerificationToken  expire in next version, the difficulty is captcha while login to vfsglobal.
#Below is the example, expired __RequestVerificationToken. 
printf "\r\n"

python botv1.py | jq -r ".StandardDate"

#Belgium
printf "\r\n"
printf "Belgium Schengen Visa Slots: \r\n"
curl -s 'https://appointment.diplomatie.be/Home/AvailableDates/?officeId=69bb7c28-5ebc-4c4c-9350-2fb145c87f9f&serviceIds=81476ede-fbf1-466d-aa69-7c38e5f4369a&_=1563354350000' -H 'Cookie: PreferredCulture=en-US; __RequestVerificationToken=JWHTGLQGuikVUyVZf7ni-MTbSio5kjur6BHtsSztRnb6zo288YbBFOoFr79JP9rLArr9TAxt4cCvNm3hrctVuSZPtssvgzmLQZt9btHMbbc1; _ga=GA1.2.1591722372.1563353898; _gid=GA1.2.227528741.1563353898; _gat=1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36' -H 'Accept: */*' -H 'Referer: https://appointment.diplomatie.be/Home/Index/69bb7c28-5ebc-4c4c-9350-2fb145c87f9f' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --compressed | jq -r ".dataObject.dates"
