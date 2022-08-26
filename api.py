import requests
num  = input()
msg = input()
burp0_url = "https://shobardhaka.com:443/api/user/send-otp"
burp0_headers = {"Accept": "application/json", "Accept-Language": "bn",
                 "Content-Type": "application/x-www-form-urlencoded", "Accept-Encoding": "gzip, deflate", "User-Agent": "okhttp/3.12.0"}
burp0_data = {"phone": num,
              "signing_key": msg}
res = requests.post(burp0_url, headers=burp0_headers, data=burp0_data)
print(res.text)
print(res.status_code)
