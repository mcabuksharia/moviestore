class Event < ActiveRecord::Base
	after_save :event_change
	
	def event_change
	puts "hello Events"
	end
end
