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
				#flash[:success] = "Welcome to the alpha blog #{@contact.contactname}"
				redirect_to landing_path
			else
				render 'new'
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
