print ("Checking for Tourism Visa for 4 Applicants...")
import requests
import sys

cookies = {
    'ASP.NET_SessionId': 'vtpvg5mzbqx4knqcukp0qqpq',
}

headers = {
    'Connection': 'keep-alive',
    'Cache-Control': 'max-age=0',
    'Origin': 'https://www.vfsvisaonline.com',
    'Upgrade-Insecure-Requests': '1',
    'Content-Type': 'application/x-www-form-urlencoded',
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36',
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
    'Referer': 'https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2fa6TdN5o6wQfJGZex2bh88%3d',
    'Accept-Encoding': 'gzip, deflate, br',
    'Accept-Language': 'en-GB,en;q=0.9,en-US;q=0.8,zh-CN;q=0.7,zh;q=0.6,ga;q=0.5,zh-TW;q=0.4',
}

params = (
    ('P', 'wpmn7S46C72lQRV/1kDyNQ=='),
)

data = {
  '__EVENTTARGET': '',
  '__EVENTARGUMENT': '',
  '__VIEWSTATE': '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',
  '__VIEWSTATEGENERATOR': '217482D4',
  '____Ticket': '2',
  '__VIEWSTATEENCRYPTED': '',
  '__EVENTVALIDATION': 'lyyeXN2XSvz1Ot2QkiWn0uWoArvUNCd3yNWvbvBkSwr6s3tlL3vXikdnrQW+wiMm0G8ADsYEpf1wHhvcd3RkaYzkw0XWRKH8QJCKH8Ki5LfTYt8bfEJfResoW/5YrXCo7L3IhZW3mxgmUeT6MtjyF/uP6eHEegMvyXYVzJkVvCsMkKrf1qxFY7j+vuwGLLihw8n5UCHBijQDWBIrjsyWGyWQJSdEyLEmSvnrFwtTZBwigWodFIBqB+lEea0LIZldPklDJ0+9BOYl7VN+kk5AsXkrQOiwrGPYiGVlkeLkevnAjsCbWkrc/Wl3PuBpnoaJRrsGJmccjTuSd25jAWqRMGII+4n64vqnNenUox7hTPAm60SvY8zg4uS9pfONIbHqHYS09wNY6xo+a0IOabDLl8lIe5tkZE5a/D2xLkFCqfcFWM5kdEAm5m+4QSBxQKVEIAfuILo+1wDdbIJqRfXksxDzPiUhgCCYReWnL8CTxtYF83Qw3ao9/x3yWXD/wzgeppTwsZXqec+1/RWLih46w6m4Qd1E6g9uTH+f2n+xZBnP+mTRQTf4iL9wJTI+TIYfC+g+b37S8AHKcGnHxC9bmn/+6gOI0lS36H+BE+jU/LoOuS6g',
  'ctl00$plhMain$tbxNumOfApplicants': '4',
  'ctl00$plhMain$cboVisaCategory': '898',
  'ctl00$plhMain$btnSubmit': 'Continue'
}

response = requests.post('https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppSchedulingGetInfo.aspx', headers=headers, params=params, cookies=cookies, data=data)


s = response.content
if s.find('No date(s) available for appointment.') == -1:

        print "Tourism Visa for 4 Applicants Appointment available, please go to: 'https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2Fa6TdN5o6wQfJGZex2bh88%3D'"
        headers = {
                'Content-Type': 'application/json',
            }

        params = (
                ('token', 'OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF'),
            )

        data = '{"Content":"@All Tourism Visa for 4 Applicants Appointment is available now, please go to https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2fa6TdN5o6wQfJGZex2bh88%3d"}'

        chimewebhookresponse = requests.post('https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c', headers=headers, params=params, data=data)
        print (chimewebhookresponse.content)

else:

        print "'No date(s) available for appointment.' was Found, so I doubt no tourism appointments for now either."


