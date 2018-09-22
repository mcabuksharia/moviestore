class EventMailer < ApplicationMailer
	def send_email to,subject,body
		mail(to: to,
         subject: subject)do |format|
      format.text { render plain: body }
    end
	end
end
