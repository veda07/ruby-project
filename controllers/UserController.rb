
class UserController < ApplicationController


# get // register & login page
	get '/register' do 
		erb :register
  	end

	get '/login' do 
		erb :login
  end

# get user_profile
	get '/:id' do 
		@user = User.find_by ({:id => session[:id]})
		@user.posts
		erb :user_profile
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
	    session[:id] = user.id
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

	    redirect '/users/register' 
		end

	end


#create // login user
	post '/login' do
		user = User.find_by username: params[:username]
		password = params[:password]

		if user && user.authenticate(password)

		session[:logged_in] = true
		session[:username] = user.username
		session[:id] = user.id
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
      
    
      	redirect '/users/login'
    	end

	end

	# destroy // logout
	get '/logout' do

		username = session[:username] # grab username before destroying session...

	    session.destroy
	    
	    session[:message] = {
	      success: true,
	      status: "neutral",
	      message: " #{username} has succesfully logged out." #...so that we can use it here
	    }

	    redirect '/'

	  end

	
end

