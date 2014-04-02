class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:sessions][:email])
		# debugger
	  if user && user.authenticate(params[:sessions][:password])
		 	session[:user_id] = user.id
	   	redirect_to home_url, :notice => "Signed in captain.. :p as #{user.email}"
		else
			flash.now.alert = "Invalid email or password"
	   	render action: :new
	   end
	end

	def destroy
		session[:user_id] = nil
  	redirect_to root_url, :notice => "Signed out!"
	end
end