class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(users_params)
  	if @user.save
  		redirect_to :root, notice: 'Signed up successfully.'
  	else
  		render action: :new
  	end
  end

private
	def users_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
