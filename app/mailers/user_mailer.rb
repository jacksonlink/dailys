class UserMailer < ApplicationMailer
    
    default from: 'jackson.gomes.dev@gmail.com'
    layout "mailer"

    def send_schedule_early(user, user_id)
        @user = user
        @user_id = user_id
        mail(to: user, subject: 'Planejado para hoje')
    end

    def send_schedule_late(user, user_id)
        @user = user
        @user_id = user_id
        mail(to: user, subject: 'Realizado hoje')
    end
end