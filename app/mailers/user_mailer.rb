class UserMailer < ActionMailer::Base
  default :from => "stephensxub@gmail.com"

  def welcome_email(user)
    @user = user
    mail :subject => "Mandrill rides the Rails!",
         :to      => user.email,
         :from    => "stephensxub@gmail.com"
  end
end
