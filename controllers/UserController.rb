
class UserController < ApplicationController


# get // register & login page
	get '/register_login' do 
		erb :register_login
  end

# create // register user
	post '/register' do

		user = User.find_by username: params[:username]
		
		if !user

		user = User.new
		user.username = params[:username]
		user.password = params[:password]

		user.save

		session[:logged_in] = true
	    session[:username] = user.username
	    session[:message] = {
	        success: true,
	        status: "good",
	        message: "Welcome #{user.username}."
	    }

	    redirect '/posts'

	    else

	    session[:message] = {
	    	success: false,
	    	status: "bad",
	    	message: "Sorry, username #{params[:username]} is already taken."
	    }

	    redirect '/users/register_login' 
		end

	end

#create // login user
	post '/login' do
		user = user.find_by username: params[:username]
		password = params[:params]

		if user && user.authenticate(password)

		session[:logged_in] = true
		session[:username] = user.username
		session[:message] = {
			success: true,
			status: "good",
			message: "Welcome back #{user.username}"
		}

		redirect '/posts'

		else
      
		session[:message] = {
		success: false,
		status: "bad",
		message: "Invalid username or password."
		}
      
    
      	redirect '/users/register_login'
    	end

	end

# destroy // logout

get '/logout' do

	username = session[:username] # grab username before destroying session...

    session.destroy

    session[:message] = {
      success: true,
      status: "neutral",
      message: "User #{username} logged out." #...so that we can use it here
    }

    redirect '/users/register_login'

  end




	
end

