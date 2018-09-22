require "rails_helper.rb"

RSpec.feature"Creating events" do
	scenario "A user creates a new event" do
		visit "/"
		click_link "New Event"
		fill_in "Name", with: "Testing rspec"
		fill_in "Description", with: "Hello rspec description"
		fill_in "Price", with: "23"
		# select '2018/07/21', :from => 'Starts at'
		# select '2018/07/23', :from => 'End date'
		click_button "Create Event"

		expect(page).to have_content("Event was successfully created")
		expect("/events").to eq(events_path)
	end
end

# def select_date(date, options = {})
# 	byebug
#   field = options[:from]
#   select :from => date.strftime('%Y') #year
#   select date.strftime('%B'), :from => "#{Starts at}" #month
#   select date.strftime('%d'), :from => "#{Starts at}" #day 
#   select date.strftime('%H'), :from => "#{Starts at}" #Hour
#   select date.strftime('%M'), :from => "#{Starts at}" #Minutes
# end
