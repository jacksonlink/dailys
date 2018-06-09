class UserMailer < ApplicationMailer
    default from: 'jacksonfa7@gmail.com'
 
    def welcome_email
        @user = params[:user]
        @url  = 'http://localhost:3000/login'
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
