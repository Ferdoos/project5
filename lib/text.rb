class Text

  ACCOUNT_SID = 'AC9da542833e200918fe2c305f1c94057c'
  AUTH_TOKEN = '54608afdd3697e202950a5b1557a012c'
  FROM_NUMBER = '441279702157'
  TO_NUMBER = '447590439533'

  def twilio_client
    account_sid = TwilioCredentials::ACCOUNT_SID
    auth_token = TwilioCredentials::AUTH_TOKEN
    @twilio_client ||= Twilio::REST::Client.new account_sid, auth_token
  end

  def send(customer, message)
    twilio_client.account.sms.messages.create(
      :from => TwilioCredentials::FROM_NUMBER,
      :to => TwilioCredentials::TO_NUMBER,
      :body => message)
  end
end