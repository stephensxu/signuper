class UserMailer < ActionMailer::Base
  default :from => "signuper@gmail.com"

  def welcome_email(user)
    @user = user
    mail :subject => "Mandrill rides the Rails!",
         :to      => user.email,
         :from    => "signuper@gmail.com"
  end
end
