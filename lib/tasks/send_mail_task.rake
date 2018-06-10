namespace :send_mail_task do
  desc "TODO"
  task send_: :environment do
  end

  desc "TODO" 
  task send_mail_early: :environment do
    User.all.each do |user|
      #[AKELA_CHAMADA_DO_MAILER](user.email)
      UserMailer.send_schedule(user.email).deliver_now
      Rails.logger.debug(user.email)
    end
  end

  desc "TODO"
  task send_mail_late: :environment do
    User.all.each do |user|
      #[AKELA_CHAMADA_DO_MAILER](user.email)
      UserMailer.send_schedule(user.email).deliver_now
      Rails.logger.debug(user.email)
    end
  end

end

