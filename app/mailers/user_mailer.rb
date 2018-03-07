class UserMailer < ApplicationMailer
  def welcome_email()
    @user = user
    @url = 'localhost:3000'
     mail(from: "adteck@gmail.com",
          to: @user.email,
          subject: "Bienvenue #{@user.username}, sur le site Miaouuu")
  end
end
