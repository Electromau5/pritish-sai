class ContactsController < ApplicationController
 
   
	def index
		@contact = Contact.all
	end

	def new
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


	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		#redirect_to landing_path
	end
private

	def contact_params
		params.require(:contact).permit(:name, :email, :number, 
										:description, :site)
	end
end
