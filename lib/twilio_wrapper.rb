require 'twilio-ruby' 


class TwilioWrapper
  ACCOUNT_SID = 'AC7ce8163cdf5a331051c412487d5da899' 
  AUTH_TOKEN = '53d882afc429009123ab257463d759d3' 
  FROM = '+441315103644'
  TO = '+447846394258'
  
  def initialize(id, token)
    @client = Twilio::REST::Client.new id, token
  end
  
  def self.build
    new(ACCOUNT_SID, AUTH_TOKEN)
  end
  
  def send(body)
    @client.account.messages.create({
      :from => FROM, 
      :to => TO, 
      :body => body  
    }) 
  end
end