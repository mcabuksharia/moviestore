require 'elasticsearch/model'
require 'net/http'

class Event < ActiveRecord::Base
	include Elasticsearch::Model
	include Elasticsearch::Model::Callbacks
	
	after_save :event_change
	# before_save :check_date
	# validate :check_date, on: [:create, :update]

	def event_change
	
	end

	def check_date
		arr = Eent.where("end_date >= '#{Time.zone.now}'").pluck(:id, :starts_at, :end_date)
		result = false
		if starts_at >= (end_date) 
			errors.add(:starts_at, 'Should be less than "end time" and "current time"')
		elsif (starts_at < Time.zone.now)
			errors.add(:starts_at, 'Should be greater than "current time"')
		elsif (end_date < Time.zone.now)
			errors.add(:end_date, 'Should be greater than "current time"')	
		elsif !arr.blank?
			strt_arr = arr.map{|f| f[1]}
			end_arr = arr.map{|f| f[2]}
	    arr.each do |f|
	    	byebug
	    	next if self.id == f[0] 
	      stime = f[1]
	      etime = f[2]
	      if ((starts_at..end_date).cover?(stime) || (starts_at..end_date).cover?(etime))
	 				result = true
	 				break
	 			end
	    end
	    byebug
	    if (result)
	    	errors.add(:starts_at, 'Start time is already exist.')
      	errors.add(:end_date, 'End time is already exist.')
	    end
	  end
	end

end