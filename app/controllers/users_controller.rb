class UsersController < ApplicationController

	def home
		if session[:user_id].present?
			redirect_to controller: 'items', action: 'index'
		end
		@user = User.new 
	end

	def create 
		size = User.where(email: user_params[:email]).size

		if size > 0 
			redirect_to controller: 'items', action: 'index'
		else
			@user = User.new user_params

			if @user.save
				session[:user_id] = @user.id

				redirect_to controller: 'items', action: 'index'
			else 
				render 'home'
			end
		end
	end

	def logout	
		session[:user_id] = nil 
		redirect_to action: 'home'
	end

	private
	def user_params
		params.require(:user).permit(:email)
	end
end
