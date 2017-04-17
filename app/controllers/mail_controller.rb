class MailController < ApplicationController
 require 'mailgun' 

 
  def lotte
  
  end
  
      def send_lotte
      @email =  params[:email]
      @title =  params[:title]
      @name = params[:name]
      @content = params[:content]
      
        
        
         mg_client = Mailgun::Client.new("key-4cb2720821bf7324ae085a856d63b8cd")
    
        message_params =  {
                           from: @email,
                           to:   'minho368@likelion.org',
                           subject: @title,
                           text: @content
                          }
        
        result = mg_client.send_message('sandbox1baa6bdc301149888b2c3aea533d1732.mailgun.org', message_params).to_h!
        
        redirect_to '/mail/lotte'
        
  end
end
