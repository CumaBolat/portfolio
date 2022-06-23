class UserMailer < ApplicationMailer
  #default from: 'cumabolat@posta.mu.edu.tr'

  def auth_email(user)
    @user = user
    @auth_number = rand(100000...999999)

    user.authentication_number = @auth_number

    mail(to: @user.email, subject: 'Welcome to My Gariban Portfolio')
  end
end
