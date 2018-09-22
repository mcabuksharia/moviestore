namespace :event do
  desc "starting worker at regular interval of time"
  task send_mail: :environment do
  	EmailerWorker.new.perform(70)
  end

  desc "TODO"
  task notification: :environment do
  end

end
