require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require('pg')
require('./lib/recipe')
require('./lib/tag')
require('./lib/ingredient')
