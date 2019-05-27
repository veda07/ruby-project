require 'sinatra/base'





require './controllers/ApplicationController'



require './models/PostModel'



map ('/') {
  run ApplicationController
} 
  
