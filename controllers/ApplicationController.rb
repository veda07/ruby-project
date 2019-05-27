


class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require()

  get '/' do 
    "Monumental Women in Tech."
  end 

end
