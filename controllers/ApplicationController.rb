


class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require()

   ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'women_of_tech'
  )
  set :views, File.expand_path('../../views', __FILE__)

 get '/' do 
    "Monumental Women in Tech."
  end 


 get'/test' do 
	binding.pry
end


end 