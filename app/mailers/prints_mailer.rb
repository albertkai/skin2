class PrintsMailer < ActionMailer::Base
  default from: "support@skin2.me"

  def save_email
    mail(:to => 'albertkai@me.com', :subject => "Welcome to My Awesome Site")
  end
end
