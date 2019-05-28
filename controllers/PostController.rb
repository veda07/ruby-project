


class PostController < ApplicationController
	
# Index route working 
	get '/' do 
		@posts = Post.all 

		erb :post_index
	end 

# Create route working 

	post '/' do 

		new_post = Post.new 

		new_post.photo_url   = params[:photo_url]
		new_post.f_name      = params[:f_name]
		new_post.l_name      = params[:l_name]
		new_post.period	     = params[:period]
		new_post.description = params[:description]

		new_post.save

		redirect '/posts'
	end

# New route working 
	get '/new' do 
		erb :post_new
	end
# Delete 

 	delete '/:id' do 

		post = Post.find params[:id]

		post.destroy 

		redirect '/posts'
	end 

end 

