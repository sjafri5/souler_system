class ContactsController < ApplicationController
	before_action :authenticate_admin!, :only => [:index]

	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new()
	end

	def create
		@contact = Contact.create(contact_params)
		if @contact
			flash[:notice] = "Thanks! Your information was received."
			redirect_to root_path
		else
			flash[:alert] = "Oops, there was a problem. Please try again."
			render "new"
		end
	end

	private 
	def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :number)
  end
end
