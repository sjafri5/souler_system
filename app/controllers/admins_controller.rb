class AdminsController < ApplicationController
	before_action :authenticate_admin!
	
	def show
	end

	def destroy
		sign_out(current_admin)
		flash[:notice] = "You've been signed out amigo."
		redirect_to root_path
	end

end
