import requests


cookies = {
    'ASP.NET_SessionId': 'gamhsnfvx4vi1yzckz4vnwhr',
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
  '__VIEWSTATE': '5bYKwXeeh7l2vAbvIMnQpVKfPdeuBnChHmcYfAmK2lD9iNjgnGYBYxDPomG99Rv/8XNqXKPawlS6ORLckOwX9sw8Twao1Y259Zu9r9NZs0ZVZ+r0KRuTkAjF2tfS9/HkgIz58d929wV++xBDYjf3Y6dHeGJ8fQ8vkw2wftSDz+ULLX5FRDPJQXvAg9FpJUOfzYnqqlyYfp/HNiztNMDxysLjzCHa+v4P8vTzDfA8p7Yc7Ig4jliQIzZi8+Uv9FReLWtB2XBx2lHIC8HRqWuriJA2s0ri6rE++8Jo3yW6vycXxh9RbXozhQ0ztq6I8wFKb9R/tUT92QU9EE3rhhXGXdGVhmXwN6sOO8/aSL7vKGM9Qahkuz+roYDRSYbYkyi/pWubrsRSbT20kK4eu+SSGtgvHJva2ycAgPnsSx5+eLItQxu5bTAQMPUbUREk7tEDXo1z746kUWrd4E8V+UWoScP04gJ1og5volqvT3ewSMpYQ5HMe9ZdIAy4Z5E++L3sRMsqPH5rOkd9HIl8B5g4/b08bQ7AFofslEiABkCl6K/sQ2E7jrLjEM8HOP/qLEFb5kaxh2BaGEJP4caVjzDVPEN8hZCVPg3sB23aq0e3iCo7953agzB1iGkHhOBnWkXZ20/fyYcEKRXUaurvlxdtNIfcnek16fSmI1Ca+bF6t4UNpftYiq0+1nY/ot1rMn8sthnQmUDnNyQFX6CF9+xbguzEzyZ0eeU1UbUId/kgV3pyehsUW2yX5cd6eNUkbE0gvEMuxKZ8FdFLHJYDUCwjxO+olVY+BkqR3fAkvt1pai+EjZHSHfrhFsOxwtnARkLLS7uSbHn+AqRU7b2imclsLCCTaeaI+RDcXhGe2y8Pqr3OzRkbkIsi4144LyM2ZADGjjnqQ03pw3MmRMXlIKpYa7MELDkTtlzDC7bFYOFP+GHdYhUihZ+20/i4I/vU9CInudXC7FZbHQfkZZT5uiTd8oqW8s5I2Y1HqoR00vGMR/CfHkc6fVU39D6bvqL/oYRYnItk9zUJZTFTK220micquRhzXqh4jhHKpYdAZIvlq9sTTh0nTPq/kXTR8LpXny66X6mzj+xNgCLzC/F1Wg53q1bzxrWPLz4aW6/YE1LiaDb/Yclx3JXE111k8rNgzCdvGb9jFT25UFw9Vqinh2Kv2NOYMtlPHVhpkpkgUPJ5rCg5OjrKJqN9RlcCAA5q3CRAeRg2fInkTvnClP0MQs80j7it5jpg45EWqCZipZ9qbdtdqObkKe0OI3iQ8+iBDO5n23FLoLf/SD1JSWfZOnnk9zWihbJzZ7IiUq+EGQQPOAaX5E8dVtx0tHpFj3ZtwQSGg/8kkHjidrjcpQhnNJLAqnSRcLeb5Btm9dykiI/n8jEn+U3HBEYXC6IJ7m2LeTg1cjT6SO55gRiOC/NUdHuJ3W3xDACHsGlfpNLhV7TJK520Y6qRFgkKNTV/wx6MLXyqNX0puNz62oLIzq7+7p7TdbNZVaFhMWH4CYbtcm7CPmRs3NLsIZ1c+C4GT40w3l+OuzlFMhUfZFJ5c+d9mv8Cm4sUqVqE/vXpNn4BozK5iecaux8KNSCiErNEaO0Cu987vsIoI7M0pBl8kPVrZqRyOjq8zTYI5T1fMM4Ar1WCWaN9yxG62lNBsymEvn8S5fi1bhQ78y5/5RvCJ3VJn8hR+ZyOUOrDFEI1rkVNcI8IvgVokGGqG/AdH8KY0WTJtgtEzTB/jeBEuZxb7/NGaRLgV0V1cVlk94ZMPeZLB5G5GGK21kl+l+/MQ2AeA/aq5Rjwf6+C5HR/VEBaQYGVmmj3QNJCKsaWmBpu9SniX//cWfE4+gf1it/SK+AgiYmevqHEsfuiiuShZ39K2dx1qaAfQznHUQN+uJI6jezDlrI3rcBy8rbDS2T88q4qCuJU1IvxfHtj5kgr2vKgEB8iisNEIPN7uRdqLDvDSQJeUbbXmw2KKExLpaMyos99YF4J6d3vfP8lVi/ME9Ch5LJwA6zWSo4Qq06ocsOpa6djDqqSWEWF4LB4HbGwyUtUNx0spoZ+6EfvPBMaGI5qso5oO4biZxwOErxL6pt1GPfQJnGNfMHg+9AgjruG9Xxc0Bi3XznNOGkqGh+96NgXFZXP9MlbdaA9HqZxH/x41CJdPL11yHj2ELo+IKk8QntoK8qSMivc7WWbgsUtJAbB8kVRO1Kh8A/7Ykv1jlpG+unVyutV5n5CuSJwZy+CJvlI6/c1M8NjoOjS0Q==',
  '__VIEWSTATEGENERATOR': '217482D4',
  '____Ticket': '2',
  '__VIEWSTATEENCRYPTED': '',
  '__EVENTVALIDATION': 'bLBAB8ZJPiW+sMXzNeLOT7b605PoAyAgl0lHSwCdmtYb9nQ7jwSu9f+7CDgeD6dZXSMgsJW0yqVDFV/+d05svRraBQrOb6EvhZ67jcJHr0LXEnvi5W6Exop48UQViOT3CwagnHf/IHjKNjPNOEVejjhQmvQHC7ouVU31OM8TJDg3gihs69bw8qN+dzOsvjggsTBUjWNSlAamKZntkvG0CLFzsPhm6mL1NJAcz4h4r+LBJtHejDLyBc7B2TH6pm6exXzyQ+zxECU8OHMJx819T2TZtcHKfJyIMpjciYWVsyWOGd+DfuHsh0OhjZMZDCMDPzNyNcUl0naP59s+9ffoKl/E7igRqU71g+xDxayKmLzWiUJyFNff3Zdz/Ngyc1sploKCTVKGyruwW/w3SuasGnHHhB4pDGSAlaTbxPIKHQw7FgfO8/aCB6bxmSoVFR5xzOAebXpVOkJygIziDz0cNHyl4KB2MiQbRXR5NChLOo0lv94E8MBNmqimtBgi7U9mcxbu0raG/PfIV0UIUabbV9B7jpF7Bu/0oohpiGVuZcm0BwXnmy7A5Om9ooKEL9tuPVjrr7BhNU5S6sWuypuGii4c16u5leesupYfmL1lWzFkvhFe',
  'ctl00$plhMain$tbxNumOfApplicants': '4',
  'ctl00$plhMain$cboVisaCategory': '899',
  'ctl00$plhMain$btnSubmit': 'Continue'
}

response = requests.post('https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppSchedulingGetInfo.aspx', headers=headers, params=params, cookies=cookies, data=data)



if response.status_code == 200:

    s = response.content
    if s.find('No date(s) available for appointment.') == -1:
        print "Appointment available, please go to: 'https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2Fa6TdN5o6wQfJGZex2bh88%3D'"
        headers = {
                'Content-Type': 'application/json',
            }

        params = (
                ('token', 'OVNIdGQxdEh8MXxpSDBnMEtxMGRLUmtpeHNuVTN0a2VmSFdfN2ZBdVhIbU16SE9FTmtpVERF'),
            )

        data = '{"Content":"@All Appointment is available now, please go to https://www.vfsvisaonline.com/Netherlands-Global-Online-Appointment_Zone2/AppScheduling/AppWelcome.aspx?P=yLSZQO8Ad673EXhKOPALC%2fa6TdN5o6wQfJGZex2bh88%3d"}'

        #chimewebhookresponse = requests.post('https://hooks.chime.aws/incomingwebhooks/16cfb23d-b43f-4464-b56b-98a25b74ee3c', headers=headers, params=params, data=data)
        #print (chimewebhookresponse.content)
    else:
        print "'No date(s) available for appointment.' was Found, so I doubt there is no appointments for now."

else:

    print("Website timed out!!")
    print(response.status_code)
    import send_message
    send_message


