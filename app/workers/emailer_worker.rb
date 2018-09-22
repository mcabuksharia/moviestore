class EmailerWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'emailer'

  def perform(event_id)
  	event = Event.find(event_id)
  	byebug
  	EventMailer.send_email("mcabuksharia@gmail.com","Hello Event","Hello sharma sahab").deliver_now
  	p "<<<<<<<<<<<<<<< #{event} <<<<<<<<<<<<"
    byebug
  end
end
