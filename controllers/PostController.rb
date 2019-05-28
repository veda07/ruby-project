


class PostController < ApplicationController
	
# Index route working 
	get '/' do 
		@posts = Post.all 

		erb :post_index
	end 

	get '/new' do 

		erb :post_new
	end
end 