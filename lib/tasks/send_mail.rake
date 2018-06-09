require 'rake'
namespace :task_namespace do
  desc 'task sand mail'
  task :send_mail => :environment do
    # call Listing method to send mail
    Listings.today_expired_spaces
  end
end