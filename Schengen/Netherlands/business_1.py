print ("Checking for Business Visa for 1 Applicant Only...")
import requests

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
  '____Ticket': '4',
  '__VIEWSTATEENCRYPTED': '',
  '__EVENTVALIDATION': 'cGcuVC7N1aJBtPGWIMyZ21eQStFmWGEyLwS0XNnzx3Alem69ePMZ8eQj5CBKg6xlZcJHGhEvR47CqWbBVX7JLFOFYd0XFan47Vk70Qe4Be2hEo3/HfBzr3kJPSpSW3O8zRWuUbv2718O1wzm2KaPRKtjZT89/n07ZL12znWL9Ksrupy8dA2Gk3ZrC7J2lRzLiQgjIcbQZXnS8mSzw80CqtIG0rQ373NRKVbRqmckM4cm1lrOoxSg7gapOwZdROymagXepCP72WDyO7Ulv/+BwYZkeutYC6KgOVaLWxCrv8e7/47yN0sWIfkUqyHNqguXtuDv5+eHJbLttp54D3irE4gHWKbx43JIJu+b4+ZXGv/pOnY4Y4C9ZKL/l4avCPBW+h8fi5q1h5sWL0ZZ21EeVjdJ57yUYty6NHxsiUQeDFto36fZnfXvKCiUETTw8p2Z9jgDvg5XJtdMy88J5K79iMKRRi+GZun8AmVP5XsLjIct39p+qXImlAc6xKXnUdZVIPOrNtLoOwplJQSethyzhPPUtn9QSVVCUlu96WcvX/RpLAyJ4uF6HV7yXe/qOGxt3axezFjFr5vguh/VBzVyupTc/OBOU/+VGaIFXroMfBQCi3EX',
  'ctl00$plhMain$tbxNumOfApplicants': '1',
  'ctl00$plhMain$cboVisaCategory': '899',
  'ctl00$plhMain$btnSubmit': 'Continue'
}

response = requests.post('https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppSchedulingGetInfo.aspx', headers=headers, params=params, cookies=cookies, data=data)

s = response.content
if s.find('No date(s) available for appointment.') == -1:

        print "Business Visa 1 Applicant: Appointment available, please go to: 'https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2Fa6TdN5o6wQfJGZex2bh88%3D'"
        headers = {
                'Content-Type': 'application/json',
            }

        params = (
                ('token', 'OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF'),
            )

        data = '{"Content":"@All Business Visa 1 Applicant Appointment is available now, please go to https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2fa6TdN5o6wQfJGZex2bh88%3d"}'

        chimewebhookresponse = requests.post('https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c', headers=headers, params=params, data=data)
        print (chimewebhookresponse.content)

else:

        print "'No date(s) available for appointment.' was Found, so I doubt no business visa appointments available for now even for single applicant."


