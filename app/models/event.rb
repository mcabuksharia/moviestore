class Event < ActiveRecord::Base
	after_save :event_change
	
	def event_change
	puts "Employee Events"
	end
end
