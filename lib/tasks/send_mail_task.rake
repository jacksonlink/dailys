namespace :send_mail_task do
  desc "TODO"
  task send_: :environment do
  end

  desc "TODO" 
  task send_mail_early: :environment do
    User.all.each do |user|
      @user = user
      UserMailer.send_schedule_early(@user.email, @user.id).deliver_now
      puts @user.id
    end
  end

  desc "TODO"
  task send_mail_late: :environment do
    User.all.each do |user|
      @user = user
      UserMailer.send_schedule_late(@user.email, @user.id).deliver_now
      puts @user.id
    end
  end

end

