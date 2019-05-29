


class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require()

   ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'women_of_tech'
  )

  use Rack::MethodOverride
  set :method_override, true

  set :views, File.expand_path('../../views', __FILE__)

 get '/' do 
   redirect '/posts'      # or redirect to login page
  end 


 get'/test' do 
	binding.pry
end


end 