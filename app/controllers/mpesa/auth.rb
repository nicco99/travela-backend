require "excon"
require "json"
require "base64"


def access_token
    begin
      consumer_key="09P8PWxECuuor0flybU9vnrTSAegPewG"
      consumer_secret="fu6f6RUfe46GiGvA"
       #endpoint
    url="https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"
#Base64 Encode (Consumer Key : Consumer Secret)
       encoded_consumer_data=Base64.strict_encode64("#{consumer_key}:#{consumer_secret}")
 
    response=Excon.get(url,:headers=>{"Authorization":"Basic #{encoded_consumer_data}"})
    data=JSON.parse(response.body)
    return data["access_token"]
    rescue
      puts" error doing json parse"
      return nil
    end
end


#able to generate access token 