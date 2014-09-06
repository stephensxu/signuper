class UserMailer < ActionMailer::Base
  default from: "hell@couchfoodie.com"

  def welcome_email
    mail :subject => "Mandrill rides the Rails!",
         :to      => current_user.email,
         :from    => "hello@couchfoodie.com"
  end
end
