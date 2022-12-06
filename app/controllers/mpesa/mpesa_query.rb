require "excon"
require "json"
require "base64"
require "mpesa_time"
require "./auth"

pass_key ="bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919"
paybill=174379
url="https://sandbox.safaricom.co.ke/mpesa/stkpushquery/v1/query"
t = mpesa_time
password=Base64.strict_encode64("#{paybill}#{pass_key}#{mpesa_time}")
token = access_token
data={
    "BusinessShortCode": paybill,
    "Password": password,
    "Timestamp": t,
    "CheckoutRequestID": "ws_CO_03122022122632898728829146",
  }
  

  response=Excon.post(url,:body=>JSON.generate(data),headers:{'Content-Type': 'application/json','Authorization': "Bearer #{token}"})