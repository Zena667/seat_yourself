class UserMailer < ActionMailer::Base
  default from: 'admin@dinefy.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/sessions/new'
    mail(to: @user.email, subject: 'Welcome to Dinefy.  Happy dining!!')
  end
end
