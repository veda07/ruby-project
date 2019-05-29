


class PostController < ApplicationController
	
# Index route working 

	get '/' do 
		@posts = Post.all 

		erb :post_index
	end 

# Edit route working

	get '/:id/edit' do 
		@post = Post.find  params[:id]

		erb :post_edit
	end

# Create route working 

	post '/' do 

		new_post = Post.new 							# include time-stamp in this? 
														# or have it automaticlly post?
		new_post.photo_url   = params[:photo_url]
		new_post.f_name      = params[:f_name]
		new_post.l_name      = params[:l_name]
		new_post.period	     = params[:period]
		new_post.description = params[:description]		# include user info and id here

		new_post.save

		redirect '/posts'
	end

# New route working 

	get '/new' do 
		erb :post_new
	end

# Show route working

	get '/:id/show' do 
		@post = Post.find params[:id]

		erb :post_show
	end 
	
# Update route working 

	put '/:id' do 
		updated_post = Post.find params[:id]			# include time-stamp in this?
														# or have it automaticlly post?
		updated_post.photo_url   = params[:photo_url]
		updated_post.f_name      = params[:f_name]
		updated_post.l_name      = params[:l_name]
		updated_post.period	     = params[:period]
		updated_post.description = params[:description]

		updated_post.save

		redirect '/posts'
	end

# Delete route working 

 	delete '/:id' do 

		post = Post.find params[:id]

		post.destroy 

		redirect '/posts'
	end 

end 

