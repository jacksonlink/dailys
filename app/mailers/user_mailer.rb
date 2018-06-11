class UserMailer < ApplicationMailer
    #default from: 'elano.garcez.dev@gmail.com'
    default from: 'jackson.gomes.dev@gmail.com'
    layout "mailer"
    def send_schedule_early(user)
        @user = user
        mail(to: @user, subject: 'Welcome to My Awesome Site')
    end

    def send_schedule_late(user)
        @user = user
        mail(to: @user, subject: 'Welcome to My Awesome Site')
    end
end