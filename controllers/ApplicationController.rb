class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require()

# require config file set up for deployment
  require './config/environments'

  enable :sessions

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'women_of_tech'
  )

  use Rack::MethodOverride
  set :method_override, true

  set :views, File.expand_path('../../views', __FILE__)

  set :public_dir, File.expand_path('../../public', __FILE__)

 get '/' do 
   erb :home      # or redirect to login page

 end 


  get'/test' do 
    binding.pry
  end


end 