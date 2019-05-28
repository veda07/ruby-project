require 'sinatra/base'





require './controllers/ApplicationController'
require './controllers/UserController'
require './controllers/PostController'

require './models/PostModel'
require './models/UserModel'


map ('/') {
  run ApplicationController
} 

map ('/users') {
  run UserController
} 

map ('/posts') {
	run PostController
}

  
