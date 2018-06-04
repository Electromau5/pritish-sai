 class PagesController < ApplicationController
  
  def landing
  	@contact = Contact.new
  end

  def create
		@contact = Contact.new(contact_params)
			if @contact.save
				flash[:success] = "Great to hear from you. I'll get in touch asap."
				redirect_to root_path
			else
				flash[:error] = "Whoops. Seems like there were certain errors."
				redirect_to root_path
			end
		end
  end
