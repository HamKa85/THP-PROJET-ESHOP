class UserMailer < ApplicationMailer
  def welcome_email
    @url = 'localhost:3000'
     mail(from: "adteck@gmail.com",
          to: 'karouihamza@hotmail.com',
          subject: "Bienvenue, sur le site Miaouuu")
  end

end
