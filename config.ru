require 'sinatra/base'





require './controllers/ApplicationController'
require './controllers/UserController'


require './models/PostModel'
require './models/UserModel'


map ('/') {
  run ApplicationController
} 

map ('/user') {
  run UserController
} 


  
