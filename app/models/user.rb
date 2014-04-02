class User < ActiveRecord::Base

	# def self.authenticate(username_or_email="", login_password="")

 #   	user = User.find_by(username_or_email)
 #   	puts "===========+ : #{user.inspect}"
 #   	debugger
 #    # if user 
 #    	if user.authenticate(login_password)
 #      	return user
 #    else
 #      return false
 #    end
 #  end   

  has_secure_password
end
