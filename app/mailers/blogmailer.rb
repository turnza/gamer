class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(member) 
   @member = member 
    mail(:to => member.email, :subject => "Welcome to the gaming site site") 
 end

end
